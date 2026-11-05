.class public final Lcom/autonavi/cvc/app/da/weather/WeatherFix;
.super Ljava/lang/Object;
.source "WeatherFix.java"


# static fields
.field private static final API:Ljava/lang/String; = "https://api.open-meteo.com/v1/forecast"

.field private static final FALLBACK_CITY:Ljava/lang/String; = "\u5317\u4eac"

.field private static final FALLBACK_LAT:D = 39.9042

.field private static final FALLBACK_LNG:D = 116.4074

.field private static final GEO:Ljava/lang/String; = "https://geocoding-api.open-meteo.com/v1/search"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->resolve(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;
    .registers 6

    .line 26
    invoke-static/range {p0 .. p5}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->build(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/Object;)V
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->persist(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/Object;
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->cached(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static app()Landroid/content/Context;
    .registers 3

    const/4 v0, 0x0

    .line 157
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 158
    const-string v2, "currentApplication"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    return-object v1

    :catchall_14
    return-object v0
.end method

.method private static build(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/String;
    .registers 26

    .line 208
    const-string v0, "weather_code"

    const-string v1, "windPower"

    const-string v2, "windDirection"

    const-string v3, "time"

    const-string v4, ""

    .line 0
    const-string v5, "https://api.open-meteo.com/v1/forecast?latitude="

    const/4 v6, 0x0

    .line 208
    :try_start_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v8, p2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "&longitude="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, "&current=temperature_2m,relative_humidity_2m,weather_code,wind_speed_10m,wind_direction_10m&daily=weather_code,temperature_2m_max,temperature_2m_min,sunrise,sunset&timezone=Asia%2FShanghai&forecast_days=5"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-static {v5}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->http(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_31

    return-object v6

    .line 216
    :cond_31
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 217
    const-string v5, "current"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 218
    const-string v8, "daily"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 220
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 221
    const-string v9, "temperature"

    const-string v10, "temperature_2m"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 222
    const-string v9, "humidity"

    const-string v10, "relative_humidity_2m"

    const-wide/16 v11, 0x0

    invoke-virtual {v5, v10, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    invoke-virtual {v8, v9, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    const-string v9, "weather"

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->mapCode(I)I

    move-result v13

    invoke-virtual {v8, v9, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    const-string v9, "wind_direction_10m"

    invoke-virtual {v5, v9, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->windDir(D)I

    move-result v9

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    const-string v9, "wind_speed_10m"

    invoke-virtual {v5, v9, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->windPower(D)I

    move-result v9

    invoke-virtual {v8, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 226
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 229
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 230
    const-string v9, "temperature_2m_max"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 231
    const-string v13, "temperature_2m_min"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 232
    const-string v14, "sunrise"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 233
    const-string v15, "sunset"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 235
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V
    :try_end_bb
    .catchall {:try_start_d .. :try_end_bb} :catchall_1ca

    .line 236
    :try_start_bb
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v11, 0x0

    :goto_c0
    if-ge v11, v6, :cond_16c

    .line 238
    invoke-virtual {v0, v11, v10}, Lorg/json/JSONArray;->optInt(II)I

    move-result v12

    invoke-static {v12}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->mapCode(I)I

    move-result v12

    .line 239
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 p5, v0

    .line 240
    const-string v0, "dayTemperature"

    move/from16 v17, v6

    move-object/from16 v16, v7

    const-wide/16 v6, 0x0

    invoke-virtual {v9, v11, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v10, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 241
    const-string v0, "nightTemperature"

    const-wide/16 v6, 0x0

    invoke-virtual {v13, v11, v6, v7}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v10, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    const-string v0, "dayWeather"

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string v0, "nightWeather"

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 244
    const-string v0, "dayWindDirection"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v0, "dayWindPower"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string v0, "nightWindDirection"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    const-string v0, "nightWindPower"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "T00:00:00"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v0, "sunRiseTime"

    if-nez v14, :cond_13f

    move-object v6, v4

    goto :goto_147

    :cond_13f
    invoke-virtual {v14, v11, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_147
    invoke-virtual {v10, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v0, "sunSetTime"

    if-nez v16, :cond_152

    move-object v7, v4

    move-object/from16 v6, v16

    goto :goto_15c

    :cond_152
    move-object/from16 v6, v16

    invoke-virtual {v6, v11, v4}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->tail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_15c
    invoke-virtual {v10, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {v15, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p5

    move-object v7, v6

    move/from16 v6, v17

    const/4 v10, 0x0

    goto/16 :goto_c0

    .line 254
    :cond_16c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const-string v1, "admincode"

    if-nez p1, :cond_177

    move-object v2, v4

    goto :goto_179

    :cond_177
    move-object/from16 v2, p1

    :goto_179
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "adminname"

    if-nez p0, :cond_181

    goto :goto_183

    :cond_181
    move-object/from16 v4, p0

    :goto_183
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 259
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 260
    const-string v3, "currentWeather"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v3, "forecast"

    invoke-virtual {v2, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v3, "location"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v0, "publishDate"

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 266
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 267
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1c7
    .catchall {:try_start_bb .. :try_end_1c7} :catchall_1c8

    return-object v0

    :catchall_1c8
    const/4 v0, 0x0

    goto :goto_1cb

    :catchall_1ca
    move-object v0, v6

    :goto_1cb
    return-object v0
.end method

.method private static cached(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_27

    .line 97
    :cond_a
    :try_start_a
    const-string v1, "com.autonavi.cvc.app.da.weather.WeatherHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 98
    const-string v2, "getWeatherFromDataBase"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_27

    return-object p0

    :catchall_27
    :cond_27
    :goto_27
    return-object v0
.end method

.method private static cityNameOf(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 166
    :try_start_1
    invoke-static {}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->app()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    .line 170
    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "city.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 171
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    .line 172
    new-array v3, v3, [B

    .line 174
    :goto_1b
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_26

    const/4 v5, 0x0

    .line 175
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1b

    .line 177
    :cond_26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 178
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<code>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</code>\\s*<name>([^<]+)</name>"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_5e

    const/4 v1, 0x1

    .line 181
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5e

    return-object p0

    :catchall_5e
    :cond_5e
    return-object v0
.end method

.method private static geocode(Ljava/lang/String;)[D
    .registers 7

    const-string v0, "https://geocoding-api.open-meteo.com/v1/search?name="

    const/4 v1, 0x0

    .line 190
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&count=1&language=zh&format=json"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->http(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_21

    return-object v1

    .line 195
    :cond_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "results"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_4f

    .line 196
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_35

    goto :goto_4f

    :cond_35
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 200
    const-string v2, "latitude"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "longitude"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 p0, 0x2

    new-array p0, p0, [D

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v4, p0, v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4f

    return-object p0

    :catchall_4f
    :cond_4f
    :goto_4f
    return-object v1
.end method

.method public static getWeather(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/autonavi/cvc/app/da/weather/WeatherFix$1;-><init>(Ljava/lang/String;ZLjava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static http(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    .line 285
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_5e

    const/16 v1, 0x2328

    .line 286
    :try_start_e
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 287
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 288
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android)"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "Accept"

    const-string v2, "application/json"

    invoke-virtual {p0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_5c

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_30

    if-eqz p0, :cond_2f

    .line 306
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2f
    return-object v0

    .line 293
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 294
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1000

    .line 295
    new-array v3, v3, [B

    .line 297
    :goto_3d
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_48

    const/4 v5, 0x0

    .line 298
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3d

    .line 300
    :cond_48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 301
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_56
    .catchall {:try_start_30 .. :try_end_56} :catchall_5c

    if-eqz p0, :cond_5b

    .line 306
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5b
    return-object v1

    :catchall_5c
    nop

    goto :goto_60

    :catchall_5e
    nop

    move-object p0, v0

    :goto_60
    if-eqz p0, :cond_65

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_65
    return-object v0
.end method

.method private static mapCode(I)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eq p0, v1, :cond_9b

    const/4 v2, 0x2

    if-ne p0, v2, :cond_c

    goto/16 :goto_9b

    :cond_c
    const/4 v1, 0x3

    if-ne p0, v1, :cond_10

    return v2

    :cond_10
    const/16 v2, 0x2d

    if-eq p0, v2, :cond_98

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1a

    goto/16 :goto_98

    :cond_1a
    const/16 v2, 0x33

    const/4 v3, 0x7

    if-eq p0, v2, :cond_97

    const/16 v2, 0x35

    if-eq p0, v2, :cond_97

    const/16 v2, 0x37

    if-eq p0, v2, :cond_97

    const/16 v2, 0x38

    if-eq p0, v2, :cond_97

    const/16 v2, 0x39

    if-ne p0, v2, :cond_31

    goto/16 :goto_97

    :cond_31
    const/16 v2, 0x3d

    if-ne p0, v2, :cond_36

    return v3

    :cond_36
    const/16 v2, 0x3f

    const/16 v3, 0x8

    if-ne p0, v2, :cond_3d

    return v3

    :cond_3d
    const/16 v2, 0x41

    const/16 v4, 0x9

    if-ne p0, v2, :cond_44

    return v4

    :cond_44
    const/16 v2, 0x42

    if-eq p0, v2, :cond_94

    const/16 v2, 0x43

    if-ne p0, v2, :cond_4d

    goto :goto_94

    :cond_4d
    const/16 v2, 0x47

    if-eq p0, v2, :cond_91

    const/16 v2, 0x4d

    if-ne p0, v2, :cond_56

    goto :goto_91

    :cond_56
    const/16 v2, 0x49

    if-ne p0, v2, :cond_5d

    const/16 p0, 0xf

    return p0

    :cond_5d
    const/16 v2, 0x4b

    const/16 v5, 0x10

    if-ne p0, v2, :cond_64

    return v5

    :cond_64
    const/16 v2, 0x50

    if-ne p0, v2, :cond_69

    return v1

    :cond_69
    const/16 v1, 0x51

    if-ne p0, v1, :cond_6e

    return v3

    :cond_6e
    const/16 v1, 0x52

    if-ne p0, v1, :cond_73

    return v4

    :cond_73
    const/16 v1, 0x55

    if-ne p0, v1, :cond_7a

    const/16 p0, 0xd

    return p0

    :cond_7a
    const/16 v1, 0x56

    if-ne p0, v1, :cond_7f

    return v5

    :cond_7f
    const/16 v1, 0x5f

    if-ne p0, v1, :cond_85

    const/4 p0, 0x4

    return p0

    :cond_85
    const/16 v1, 0x60

    if-eq p0, v1, :cond_8f

    const/16 v1, 0x63

    if-ne p0, v1, :cond_8e

    goto :goto_8f

    :cond_8e
    return v0

    :cond_8f
    :goto_8f
    const/4 p0, 0x5

    return p0

    :cond_91
    :goto_91
    const/16 p0, 0xe

    return p0

    :cond_94
    :goto_94
    const/16 p0, 0x13

    return p0

    :cond_97
    :goto_97
    return v3

    :cond_98
    :goto_98
    const/16 p0, 0x12

    return p0

    :cond_9b
    :goto_9b
    return v1
.end method

.method private static persist(Ljava/lang/Object;)V
    .registers 8

    .line 81
    :try_start_0
    const-string v0, "com.autonavi.cvc.app.da.db.DBHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 82
    const-string v1, "getDatabase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    const-string v1, "com.autonavi.cvc.app.da.db.DaDatabase"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    const-string v3, "weatherDao"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    const-string v1, "com.autonavi.cvc.app.da.db.dao.WeatherDao"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 86
    const-string v2, "com.autonavi.cvc.app.da.weather.model.Weather"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 87
    const-string v3, "insertWeather"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_0 .. :try_end_40} :catchall_40

    :catchall_40
    return-void
.end method

.method private static resolve(Ljava/lang/String;)[Ljava/lang/String;
    .registers 16

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 111
    :try_start_3
    const-string v3, "com.autonavi.cvc.app.da.location.LocationHelper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 112
    const-string v4, "getInstance"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 113
    const-string v5, "getLocationInfo"

    invoke-virtual {v3, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 115
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getLat"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_7c

    .line 116
    :try_start_33
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getLng"

    invoke-virtual {v6, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6
    :try_end_47
    .catchall {:try_start_33 .. :try_end_47} :catchall_74

    .line 117
    :try_start_47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getCityName"

    invoke-virtual {v8, v9, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_72

    .line 118
    :try_start_57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getCityCode"

    invoke-virtual {v9, v10, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_80

    .line 119
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9
    :try_end_6d
    .catchall {:try_start_57 .. :try_end_6d} :catchall_70

    if-lez v9, :cond_80

    goto :goto_81

    :catchall_70
    nop

    goto :goto_80

    :catchall_72
    nop

    goto :goto_7f

    :catchall_74
    nop

    move-wide v6, v0

    goto :goto_7f

    :cond_77
    move-object v3, p0

    move-wide v4, v0

    move-wide v6, v4

    move-object v8, v2

    goto :goto_81

    :catchall_7c
    nop

    move-wide v4, v0

    move-wide v6, v4

    :goto_7f
    move-object v8, v2

    :cond_80
    :goto_80
    move-object v3, p0

    :goto_81
    const/4 v9, 0x1

    const/4 v10, 0x0

    cmpl-double v11, v4, v0

    if-eqz v11, :cond_8d

    cmpl-double v11, v6, v0

    if-eqz v11, :cond_8d

    const/4 v0, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v0, 0x0

    :goto_8e
    const/4 v1, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x4

    if-eqz v0, :cond_c4

    if-eqz p0, :cond_c4

    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_c4

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c4

    .line 129
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->cityNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c4

    .line 131
    invoke-static {v13}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->geocode(Ljava/lang/String;)[D

    move-result-object v14

    if-eqz v14, :cond_c4

    .line 133
    aget-wide v2, v14, v10

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    aget-wide v2, v14, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/String;

    aput-object v0, v3, v10

    aput-object v2, v3, v9

    aput-object v13, v3, v11

    aput-object p0, v3, v1

    return-object v3

    .line 137
    :cond_c4
    const-string v13, ""

    if-eqz v0, :cond_de

    .line 138
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    if-nez v8, :cond_d3

    move-object v8, v13

    :cond_d3
    new-array v2, v12, [Ljava/lang/String;

    aput-object p0, v2, v10

    aput-object v0, v2, v9

    aput-object v8, v2, v11

    aput-object v3, v2, v1

    return-object v2

    :cond_de
    if-eqz p0, :cond_eb

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e7

    goto :goto_eb

    :cond_e7
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->cityNameOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_eb
    :goto_eb
    const-wide v4, 0x405d1a12d77318fcL    # 116.4074

    const-wide v6, 0x4043f3bcd35a8588L    # 39.9042

    if-eqz v2, :cond_127

    .line 145
    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->geocode(Ljava/lang/String;)[D

    move-result-object v0

    if-eqz v0, :cond_114

    .line 147
    aget-wide v3, v0, v10

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    aget-wide v4, v0, v9

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    new-array v4, v12, [Ljava/lang/String;

    aput-object v3, v4, v10

    aput-object v0, v4, v9

    aput-object v2, v4, v11

    aput-object p0, v4, v1

    return-object v4

    .line 149
    :cond_114
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    new-array v4, v12, [Ljava/lang/String;

    aput-object v0, v4, v10

    aput-object v3, v4, v9

    aput-object v2, v4, v11

    aput-object p0, v4, v1

    return-object v4

    .line 151
    :cond_127
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_132

    move-object v3, v13

    .line 152
    :cond_132
    new-array v2, v12, [Ljava/lang/String;

    aput-object p0, v2, v10

    aput-object v0, v2, v9

    const-string p0, "\u5317\u4eac"

    aput-object p0, v2, v11

    aput-object v3, v2, v1

    return-object v2
.end method

.method private static tail(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 276
    const-string p0, ""

    return-object p0

    :cond_5
    const/16 v0, 0x54

    .line 278
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_13

    add-int/lit8 v0, v0, 0x1

    .line 279
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method private static windDir(D)I
    .registers 5

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-wide v0, 0x4046800000000000L    # 45.0

    div-double/2addr p0, v0

    .line 377
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    const/16 p0, 0x8

    rem-int/2addr p1, p0

    .line 378
    new-array p0, p0, [I

    fill-array-data p0, :array_1e

    .line 379
    aget p0, p0, p1

    return p0

    :array_1e
    .array-data 4
        0x7
        0x8
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method private static windPower(D)I
    .registers 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x9

    cmpg-double v5, p0, v0

    if-gez v5, :cond_d

    const/4 p0, 0x0

    goto/16 :goto_7b

    :cond_d
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_16

    const/4 p0, 0x1

    goto/16 :goto_7b

    :cond_16
    const-wide/high16 v0, 0x4026000000000000L    # 11.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_1e

    const/4 p0, 0x2

    goto :goto_7b

    :cond_1e
    const-wide/high16 v0, 0x4033000000000000L    # 19.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_26

    const/4 p0, 0x3

    goto :goto_7b

    :cond_26
    const-wide/high16 v0, 0x403c000000000000L    # 28.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_2e

    const/4 p0, 0x4

    goto :goto_7b

    :cond_2e
    const-wide/high16 v0, 0x4043000000000000L    # 38.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_36

    const/4 p0, 0x5

    goto :goto_7b

    :cond_36
    const-wide v0, 0x4048800000000000L    # 49.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_41

    const/4 p0, 0x6

    goto :goto_7b

    :cond_41
    const-wide v0, 0x404e800000000000L    # 61.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_4c

    const/4 p0, 0x7

    goto :goto_7b

    :cond_4c
    const-wide v0, 0x4052800000000000L    # 74.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_58

    const/16 p0, 0x8

    goto :goto_7b

    :cond_58
    const-wide/high16 v0, 0x4056000000000000L    # 88.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_61

    const/16 p0, 0x9

    goto :goto_7b

    :cond_61
    const-wide v0, 0x4059800000000000L    # 102.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_6d

    const/16 p0, 0xa

    goto :goto_7b

    :cond_6d
    const-wide v0, 0x405d400000000000L    # 117.0

    cmpg-double v5, p0, v0

    if-gtz v5, :cond_79

    const/16 p0, 0xb

    goto :goto_7b

    :cond_79
    const/16 p0, 0xc

    :goto_7b
    sub-int/2addr p0, v2

    if-gez p0, :cond_7f

    goto :goto_80

    :cond_7f
    move v3, p0

    :goto_80
    if-le v3, v4, :cond_83

    goto :goto_84

    :cond_83
    move v4, v3

    :goto_84
    return v4
.end method
