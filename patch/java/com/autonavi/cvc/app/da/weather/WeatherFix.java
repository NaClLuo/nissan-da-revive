package com.autonavi.cvc.app.da.weather;

import android.content.Context;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Replacement weather backend for the legacy Nissan DA app.
 * The original service (wdapi.navinfo.com:8200) is offline, so this class
 * queries open-meteo and converts the result into the JSON layout that the
 * original WeatherParser/Gson pipeline already understands.
 */
public final class WeatherFix {

    private static final String API = "https://api.open-meteo.com/v1/forecast";
    private static final String GEO = "https://geocoding-api.open-meteo.com/v1/search";

    /** Used when neither GPS nor the manual city can be resolved, so the UI
     *  still gets a result instead of spinning forever. */
    private static final double FALLBACK_LAT = 39.9042d;
    private static final double FALLBACK_LNG = 116.4074d;
    private static final String FALLBACK_CITY = "北京";

    private WeatherFix() {
    }

    public static void getWeather(final String cityCode, final Object listener, final boolean save) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                Object weather = null;
                try {
                    String[] loc = resolve(cityCode);
                    if (loc != null) {
                        String json = build(loc[2], loc[3],
                                Double.parseDouble(loc[0]), Double.parseDouble(loc[1]));
                        if (json != null) {
                            Class<?> parser = Class.forName("com.autonavi.cvc.app.da.weather.model.WeatherParser");
                            weather = parser.getMethod("getWeatherInfoResult", String.class).invoke(null, json);
                            if (weather != null && save) {
                                persist(weather);
                            }
                        }
                    }
                } catch (Throwable ignored) {
                }
                // Network / geocoding failed: reuse the last cached report so the
                // loading spinner always terminates.
                if (weather == null) {
                    weather = cached(cityCode);
                }
                if (weather == null || listener == null) {
                    return;
                }
                try {
                    Class<?> weatherCls = Class.forName("com.autonavi.cvc.app.da.weather.model.Weather");
                    Class<?> listenerCls = Class.forName("com.autonavi.cvc.app.da.weather.WeatherHelper$Listener");
                    Method m = listenerCls.getMethod("OnResult", weatherCls);
                    m.invoke(listener, weather);
                } catch (Throwable ignored) {
                }
            }
        }).start();
    }

    private static void persist(Object weather) {
        try {
            Class<?> dbCls = Class.forName("com.autonavi.cvc.app.da.db.DBHelper");
            Object db = dbCls.getMethod("getDatabase").invoke(null);
            Class<?> dbType = Class.forName("com.autonavi.cvc.app.da.db.DaDatabase");
            Object dao = dbType.getMethod("weatherDao").invoke(db);
            Class<?> daoCls = Class.forName("com.autonavi.cvc.app.da.db.dao.WeatherDao");
            Class<?> weatherCls = Class.forName("com.autonavi.cvc.app.da.weather.model.Weather");
            daoCls.getMethod("insertWeather", weatherCls).invoke(dao, weather);
        } catch (Throwable ignored) {
        }
    }

    private static Object cached(String cityCode) {
        if (cityCode == null || cityCode.length() == 0) {
            return null;
        }
        try {
            Class<?> h = Class.forName("com.autonavi.cvc.app.da.weather.WeatherHelper");
            return h.getMethod("getWeatherFromDataBase", String.class).invoke(null, cityCode);
        } catch (Throwable t) {
            return null;
        }
    }

    /** @return {lat, lng, cityName, cityCode} */
    private static String[] resolve(String cityCode) {
        double lat = 0.0d;
        double lng = 0.0d;
        String name = null;
        String code = cityCode;
        try {
            Class<?> lh = Class.forName("com.autonavi.cvc.app.da.location.LocationHelper");
            Object inst = lh.getMethod("getInstance").invoke(null);
            Object info = lh.getMethod("getLocationInfo").invoke(inst);
            if (info != null) {
                lat = ((Number) info.getClass().getMethod("getLat").invoke(info)).doubleValue();
                lng = ((Number) info.getClass().getMethod("getLng").invoke(info)).doubleValue();
                name = (String) info.getClass().getMethod("getCityName").invoke(info);
                String c = (String) info.getClass().getMethod("getCityCode").invoke(info);
                if (c != null && c.length() > 0) {
                    code = c;
                }
            }
        } catch (Throwable ignored) {
        }
        boolean located = lat != 0.0d && lng != 0.0d;

        // A city picked by hand wins over the GPS position.
        if (located && cityCode != null && cityCode.length() > 0 && !cityCode.equals(code)) {
            String picked = cityNameOf(cityCode);
            if (picked != null) {
                double[] p = geocode(picked);
                if (p != null) {
                    return new String[]{String.valueOf(p[0]), String.valueOf(p[1]), picked, cityCode};
                }
            }
        }
        if (located) {
            return new String[]{String.valueOf(lat), String.valueOf(lng), name == null ? "" : name, code};
        }

        // No fix yet (cold start or permission denied): fall back to the selected
        // city, then to a fixed location, so the home screen never hangs.
        String picked = cityCode == null || cityCode.length() == 0 ? null : cityNameOf(cityCode);
        if (picked != null) {
            double[] p = geocode(picked);
            if (p != null) {
                return new String[]{String.valueOf(p[0]), String.valueOf(p[1]), picked, cityCode};
            }
            return new String[]{String.valueOf(FALLBACK_LAT), String.valueOf(FALLBACK_LNG), picked, cityCode};
        }
        return new String[]{String.valueOf(FALLBACK_LAT), String.valueOf(FALLBACK_LNG),
                FALLBACK_CITY, code == null ? "" : code};
    }

    private static Context app() {
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            return (Context) at.getMethod("currentApplication").invoke(null);
        } catch (Throwable t) {
            return null;
        }
    }

    private static String cityNameOf(String code) {
        try {
            Context c = app();
            if (c == null) {
                return null;
            }
            InputStream in = c.getAssets().open("city.xml");
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            byte[] buf = new byte[4096];
            int n;
            while ((n = in.read(buf)) > 0) {
                bo.write(buf, 0, n);
            }
            in.close();
            String xml = new String(bo.toByteArray(), "UTF-8");
            Matcher m = Pattern.compile("<code>" + code + "</code>\\s*<name>([^<]+)</name>").matcher(xml);
            if (m.find()) {
                return m.group(1);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static double[] geocode(String name) {
        try {
            String u = GEO + "?name=" + URLEncoder.encode(name, "UTF-8") + "&count=1&language=zh&format=json";
            String s = http(u);
            if (s == null) {
                return null;
            }
            JSONArray arr = new JSONObject(s).optJSONArray("results");
            if (arr == null || arr.length() == 0) {
                return null;
            }
            JSONObject r = arr.getJSONObject(0);
            return new double[]{r.getDouble("latitude"), r.getDouble("longitude")};
        } catch (Throwable t) {
            return null;
        }
    }

    private static String build(String name, String code, double lat, double lng) {
        try {
            String u = API + "?latitude=" + lat + "&longitude=" + lng
                    + "&current=temperature_2m,relative_humidity_2m,weather_code,wind_speed_10m,wind_direction_10m"
                    + "&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset"
                    + "&timezone=Asia%2FShanghai&forecast_days=5";
            String s = http(u);
            if (s == null) {
                return null;
            }
            JSONObject o = new JSONObject(s);
            JSONObject cur = o.getJSONObject("current");
            JSONObject dly = o.getJSONObject("daily");

            JSONObject current = new JSONObject();
            current.put("temperature", Math.round(cur.getDouble("temperature_2m")));
            current.put("humidity", Math.round(cur.optDouble("relative_humidity_2m", 0.0d)));
            current.put("weather", mapCode(cur.optInt("weather_code", 0)));
            current.put("windDirection", windDir(cur.optDouble("wind_direction_10m", 0.0d)));
            current.put("windPower", windPower(cur.optDouble("wind_speed_10m", 0.0d)));
            current.put("time", cur.optString("time", ""));

            JSONArray dt = dly.getJSONArray("time");
            JSONArray dc = dly.getJSONArray("weather_code");
            JSONArray dmax = dly.getJSONArray("temperature_2m_max");
            JSONArray dmin = dly.getJSONArray("temperature_2m_min");
            JSONArray dr = dly.optJSONArray("sunrise");
            JSONArray ds = dly.optJSONArray("sunset");

            JSONArray forecast = new JSONArray();
            int days = dt.length();
            for (int i = 0; i < days; i++) {
                int wc = mapCode(dc.optInt(i, 0));
                JSONObject d = new JSONObject();
                d.put("dayTemperature", Math.round(dmax.optDouble(i, 0.0d)));
                d.put("nightTemperature", Math.round(dmin.optDouble(i, 0.0d)));
                d.put("dayWeather", wc);
                d.put("nightWeather", wc);
                d.put("dayWindDirection", current.getInt("windDirection"));
                d.put("dayWindPower", current.getInt("windPower"));
                d.put("nightWindDirection", current.getInt("windDirection"));
                d.put("nightWindPower", current.getInt("windPower"));
                d.put("time", dt.optString(i, "") + "T00:00:00");
                d.put("sunRiseTime", dr == null ? "" : tail(dr.optString(i, "")));
                d.put("sunSetTime", ds == null ? "" : tail(ds.optString(i, "")));
                forecast.put(d);
            }

            JSONObject loc = new JSONObject();
            loc.put("admincode", code == null ? "" : code);
            loc.put("adminname", name == null ? "" : name);

            JSONObject root = new JSONObject();
            JSONObject w = new JSONObject();
            w.put("currentWeather", current);
            w.put("forecast", forecast);
            w.put("location", loc);
            w.put("publishDate", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date()));

            JSONArray data = new JSONArray();
            data.put(w);
            root.put("data", data);
            return root.toString();
        } catch (Throwable t) {
            return null;
        }
    }

    private static String tail(String s) {
        if (s == null) {
            return "";
        }
        int p = s.indexOf('T');
        return p >= 0 ? s.substring(p + 1) : s;
    }

    private static String http(String u) {
        HttpURLConnection c = null;
        try {
            c = (HttpURLConnection) new URL(u).openConnection();
            c.setConnectTimeout(9000);
            c.setReadTimeout(9000);
            c.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; Android)");
            c.setRequestProperty("Accept", "application/json");
            if (c.getResponseCode() != 200) {
                return null;
            }
            InputStream in = c.getInputStream();
            ByteArrayOutputStream bo = new ByteArrayOutputStream();
            byte[] buf = new byte[4096];
            int n;
            while ((n = in.read(buf)) > 0) {
                bo.write(buf, 0, n);
            }
            in.close();
            return new String(bo.toByteArray(), "UTF-8");
        } catch (Throwable t) {
            return null;
        } finally {
            if (c != null) {
                c.disconnect();
            }
        }
    }

    private static int mapCode(int wmo) {
        if (wmo == 0) {
            return 0;
        }
        if (wmo == 1 || wmo == 2) {
            return 1;
        }
        if (wmo == 3) {
            return 2;
        }
        if (wmo == 45 || wmo == 48) {
            return 18;
        }
        if (wmo == 51 || wmo == 53 || wmo == 55 || wmo == 56 || wmo == 57) {
            return 7;
        }
        if (wmo == 61) {
            return 7;
        }
        if (wmo == 63) {
            return 8;
        }
        if (wmo == 65) {
            return 9;
        }
        if (wmo == 66 || wmo == 67) {
            return 19;
        }
        if (wmo == 71 || wmo == 77) {
            return 14;
        }
        if (wmo == 73) {
            return 15;
        }
        if (wmo == 75) {
            return 16;
        }
        if (wmo == 80) {
            return 3;
        }
        if (wmo == 81) {
            return 8;
        }
        if (wmo == 82) {
            return 9;
        }
        if (wmo == 85) {
            return 13;
        }
        if (wmo == 86) {
            return 16;
        }
        if (wmo == 95) {
            return 4;
        }
        if (wmo == 96 || wmo == 99) {
            return 5;
        }
        return 0;
    }

    /** degrees -> legacy direction code (0 calm, 7 north, 8 north-east, ...) */
    private static int windDir(double deg) {
        if (deg < 0.0d) {
            return 0;
        }
        int idx = (int) Math.round(deg / 45.0d) % 8;
        int[] map = {7, 8, 1, 2, 3, 4, 5, 6};
        return map[idx];
    }

    /** km/h -> index of the legacy windPowers array */
    private static int windPower(double kmh) {
        int beaufort;
        if (kmh < 1.0d) {
            beaufort = 0;
        } else if (kmh <= 5.0d) {
            beaufort = 1;
        } else if (kmh <= 11.0d) {
            beaufort = 2;
        } else if (kmh <= 19.0d) {
            beaufort = 3;
        } else if (kmh <= 28.0d) {
            beaufort = 4;
        } else if (kmh <= 38.0d) {
            beaufort = 5;
        } else if (kmh <= 49.0d) {
            beaufort = 6;
        } else if (kmh <= 61.0d) {
            beaufort = 7;
        } else if (kmh <= 74.0d) {
            beaufort = 8;
        } else if (kmh <= 88.0d) {
            beaufort = 9;
        } else if (kmh <= 102.0d) {
            beaufort = 10;
        } else if (kmh <= 117.0d) {
            beaufort = 11;
        } else {
            beaufort = 12;
        }
        int idx = beaufort - 2;
        if (idx < 0) {
            idx = 0;
        }
        if (idx > 9) {
            idx = 9;
        }
        return idx;
    }
}
