# 补丁源码与复现

这个目录只放**新增的类**和**改动说明**，不放完整 apktool 工程（原始 smali 有 2900 多个文件，没必要进仓库）。

```
java/
  com/autonavi/cvc/app/da/quick/QuickDesk.java            桌面改造：投屏键 + 自选修槽位
  com/autonavi/cvc/app/da/quick/AppPickerActivity.java    应用选择器（纯代码 UI）
  com/autonavi/cvc/app/da/weather/WeatherFix.java         天气数据源替换
```

## 一、新增类的编译注入

```bash
# 1. 编译（需要 android.jar 和 support-v4 的 classes.jar）
javac -source 8 -target 8 \
  -cp "$ANDROID_SDK/platforms/android-35/android.jar:$SUPPORT_V4/classes.jar" \
  -d out $(find java -name "*.java")

# 2. 转 dex
d8 --release --min-api 18 \
  --lib "$ANDROID_SDK/platforms/android-35/android.jar" \
  --classpath "$SUPPORT_V4/classes.jar" \
  --output dex $(find out -name "*.class")

# 3. 反编译成 smali
java -cp "smali-deps/*" com.android.tools.smali.baksmali.Main d dex/classes.dex -o smali_out

# 4. 把 smali_out/com/autonavi/cvc/app/da/{quick,weather/WeatherFix*} 拷进 apktool 工程
```

`QuickDesk` 依赖 support-v4 的 `ViewPager` / `PagerAdapter`，原包自带 `android.support.v4` 25.3.1，所以不用额外打包依赖。

## 二、手改的 smali

| 文件 | 位置 | 改动 |
|---|---|---|
| `smali/nmsed/shortcatmiracast/ShortcutMiracast.smali` | `startMiracastDeviceList(Context)I` | 整个方法重写：去掉机型判断，显式 `ComponentName("com.android.settings", "com.android.settings.wfd.WifiDisplaySettings")` → `WIFI_DISPLAY_SETTINGS` → `CAST_SETTINGS` → 三星/小米/高通 → `WIFI_SETTINGS` |
| `...msgserver/DaService$judgeTopAppThread.smali` | `.line 1257` | `const/4 v1, 0x1` → `0x0` |
| `...horizontalService/HorizontalService$CustomLayout.smali` | 构造 `WindowManager.LayoutParams` 处 | `const/16 v3, 0x7d6` → `0x7f6` |
| `...ui/activity/MainActivity.smali` | `<init>` 的 `permissions` 数组 | 5 → 3，去掉 `READ/WRITE_EXTERNAL_STORAGE` |
| `...ui/activity/MainActivity.smali` | `initDeskViewPager()` 末尾、`onResume()` | 各插一条 `invoke-static/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->overlay(Landroid/app/Activity;)V` |
| `...weather/WeatherHelper.smali` | `getWeather(String, Listener, boolean)` | 方法体改为 `invoke-static {p0, p1, p2}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->getWeather(Ljava/lang/String;Ljava/lang/Object;Z)V` |
| `...weather/model/Weather.smali` | `getWashCarInfo()` | 两处 `return null` 改为 `const-string v2, ""`；`desc` 赋值后补 `if-eqz` 判空 |

## 三、Manifest

```diff
- android:screenOrientation="landscape"
+ android:screenOrientation="sensorLandscape"
```
7 个 Activity 全部替换。

新增：

```xml
<activity
    android:name="com.autonavi.cvc.app.da.quick.AppPickerActivity"
    android:label="选择桌面应用"
    android:screenOrientation="sensorLandscape"
    android:configChanges="keyboardHidden|orientation|screenSize|smallestScreenSize"
    android:windowSoftInputMode="adjustResize"
    android:theme="@android:style/Theme.NoTitleBar" />
```

## 四、重打包与签名

```bash
java -cp "apktool-deps/*" brut.apktool.Main b apktool_patched -o patched_unsigned.apk
zipalign -f -p 4 patched_unsigned.apk patched_aligned.apk
apksigner sign --ks nissan16.keystore --ks-key-alias nissan16 \
  --ks-pass pass:nissan123 --key-pass pass:nissan123 \
  --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
  --out NissanDA_Android16_patched.apk patched_aligned.apk
```

## 五、天气接口的映射规则

open-meteo 的 WMO code 到原 App 的中国天气码：

| WMO | 含义 | 原码 |
|---|---|---|
| 0 | 晴 | 0 |
| 1–2 | 少云/多云 | 1 |
| 3 | 阴 | 2 |
| 45/48 | 雾 | 18 |
| 51–57/61 | 毛毛雨/小雨 | 7 |
| 63 | 中雨 | 8 |
| 65 | 大雨 | 9 |
| 66/67 | 冻雨 | 19 |
| 71/77 | 小雪 | 14 |
| 73 | 中雪 | 15 |
| 75/86 | 大雪 | 16 |
| 80 | 阵雨 | 3 |
| 81/82 | 中/强阵雨 | 8/9 |
| 85 | 阵雪 | 13 |
| 95 | 雷阵雨 | 4 |
| 96/99 | 雷阵雨伴冰雹 | 5 |

风向：角度 → 0–8 编码（北 7、东北 8、东 1、东南 2、南 3、西南 4、西 5、西北 6）。
风力：km/h → 蒲福风级 → 原 `windPowers` 数组下标（0 微风 … 9 11–12 级）。
