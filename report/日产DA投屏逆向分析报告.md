# 日产 DA「Mobile App」逆向分析与 Android 16 适配报告

> 分析对象：`431604 (1).zip`（实际为 APK），包名 `com.autonavi.cvc.app.da`，版本 `1.5.0001`（versionCode 8）。
> 结论先行：**这个 App 本身不实现投屏协议**。它不编码视频、不推 RTP、不跑 RTSP，只做三件事：打开手机系统的 Miracast 设置页、维护一条 TCP 控制通道、按白名单限制“哪些应用可以留在投屏画面上”。视频链路完全由手机系统的 Wi-Fi Display 承担。

---

## 1. 样本身份

| 项目 | 值 |
|---|---|
| 包名 | `com.autonavi.cvc.app.da` |
| 应用名 | `Mobile App` |
| versionName / versionCode | `1.5.0001` / `8` |
| minSdk / targetSdk | 18 / 25（Android 7.1.1） |
| 编译平台 | `platformBuildVersionName=7.1.1` |
| 原始签名 | `CN=PASDT, OU=PASDT, O=PASDT, L=Tianjin, ST=Tianjin, C=CN` |
| 原始证书 SHA-256 | `79f9b8f98a2c8b8ee31800350784cb6a0f9851b8a633adedc4f83297c13d66f9` |
| DEX 规模 | 2901 个类，26518 个方法，26693 个字符串 |
| 原生库 | 只有 `libtencentloc.so`（腾讯定位 SDK，arm64/armv7/x86/x86_64），**没有任何投屏/编码/RTSP 原生库** |
| 主要 assets | `thirtypartyappsconfig`（12 个应用白名单）、`city.xml`、Roboto 字体 |

签名主体 `PASDT` 是天津松下汽车电子（Panasonic Automotive Systems Tianjin）的缩写，说明这是车机供应商给东风日产做的定制包，不是日产全球版 `NissanConnect`。你第一次上传的 `com.nissan.nissanconnect` 是海外版，架构不同，已不作为分析依据。

---

## 2. 它是什么，不是什么

**它是：**

- 一个手机端伴生 App，同时注册为 `HOME` / `LAUNCHER`，可以把手机桌面替换成车机风格的 12 宫格。
- 一个“投屏入口”：点连接后，调用 `ShortcutMiracast.startMiracastDeviceList()`，最终 `startActivity` 打开手机系统的 Wi-Fi Display / 无线投屏设置页。
- 一个控制面服务：`DaService` 在手机侧监听 TCP **9998**，等 DA 车机连进来，交换车型、屏幕分辨率、GPS 时间、当前前台应用、屏幕锁定状态等消息。
- 一个“应用白名单”执行者：`judgeTopAppThread` 每 500ms 检查前台应用，发现不在白名单就向 DA 发 `NET_MESSAGE_APP_ILLEGAL(19)`，并停止横屏服务，DA 随即退出/遮挡投屏。

**它不是：**

- 不是 Miracast source 实现。全包搜不到 `MediaProjection`、`MediaCodec`、`VirtualDisplay`、`createVirtualDisplay`、`RTSP`、`RTP`、`WifiP2pManager`。
- 不是 DA 车机端 App。它运行在手机上，因为 `ShortcutMiracast` 打开的是手机系统设置，`InputEvent_parse` 在手机上接收车机发来的触控包。
- 不是“破解版 Miracast”。它没有能力绕过系统 WFD 栈。

---

## 3. 实际链路

![架构图](architecture.png)

三条链路要分开看：

1. **视频/音频链路：手机系统 Wi-Fi Display（Miracast）→ DA 的 WFD Sink。**
   App 只负责把用户送到系统投屏页，后续 RTSP 握手、RTP/H.264 传输、HDCP、UIBC 全由手机系统完成。DA 是标准 Miracast 接收端。

2. **控制链路：DA → 手机 TCP 9998。**
   手机是 Server，DA 是 Client。DA 连上手机后，双方用自定义二进制协议交换状态。这条链路不传画面。

3. **输入链路：标准 UIBC + 自定义 9996。**
   普通触摸由系统 Miracast 的 UIBC 回传，App 不参与；App 另开 TCP 9996 接收“扩展 UIBC”包，只解析双指缩放、Home 键等少量事件，不注入普通触摸坐标。

蓝牙只用于配对、免提音频和引导连接，不承载投屏数据。App 里的 `BluetoothController` 只是打开蓝牙设置页。

---

## 4. 启动与连接流程

1. 安装后，`MainActivity` 因为带 `HOME` + `LAUNCHER` category，可以被选为默认桌面。
2. 首次启动进入 `GuideAnim`，展示 6 页引导和免责声明，点“同意”后写入 `login_key`。
3. `MainActivity.initAll()` 调用 `DaConnector.startConnecting()`，启动 `DaService`（独立进程 `:daservice`）。
4. `DaService.onCreate()` 做四件事：
   - `startForeground(1, ...)`，常驻通知标题 `Nissan`、内容 `互联服务`；
   - `initSocket()` 创建 `Socket_server(9998)`；
   - `InputEvent_parse.startInputEventService()` 创建 `Socket_server(9996)`；
   - 注册 `DisplayManager.DisplayListener`，监听 DA 投屏虚拟显示器的加入/移除。
5. 用户点“连接”后，`MainActivity.onResume()` 发现未连接，弹窗提示“智能手机互联需要先连接蓝牙和 miracast”。确认后打开蓝牙设置；返回 App 时调用 `ShortcutMiracast.startMiracastDeviceList()`。
6. 系统投屏页里选择 DA，系统建立 Wi-Fi Direct / Miracast 会话。DA 与手机进入同一 P2P 网段后，DA 主动连接手机 `9998`。
7. `Socket_server.deviceOpen()` 触发：置 `serSocketConnected=true`，向 DA 发 `16`（车辆信息查询），并上报当前前台应用（`28`）。
8. DA 回 `17`（车型、车机 Wi-Fi MAC、蓝牙 MAC），手机据此设置 `carType`，并发 sticky broadcast `com.autonavi.umengCartype` 给统计 SDK。
9. DA 发 `10` 切换工作模式：`0` 停止、`1` 镜像、`2` 手机应用模式。手机进入镜像模式后启动 `HorizontalService`，用一个 0×0 悬浮窗强制横屏。
10. 投屏过程中，`judgeTopAppThread` 持续检查前台应用；`DaService` 同时把屏幕锁定/旋转状态用 `20` 上报给 DA。

---

## 5. TCP 9998 控制协议

### 5.1 帧格式

所有多字节整数为**小端序**。

| 偏移 | 长度 | 含义 |
|---|---|---|
| 0 | 4 | Magic：`1A 1F 1A 1F` |
| 4 | 4 | commandId（int，小端） |
| 8 | 4 | 整帧长度 = payload 长度 + 16（int，小端） |
| 12 | 1 | BCC 校验：除第 12 字节外，所有字节逐字节 XOR |
| 13 | 3 | 保留 |
| 16 | N | payload |

`DaService.generateCommandService()` 负责组帧；`verifyMsg()` 只比较 `bs[12] == BCC_Check(bs)`，没有 CRC、没有加密、没有认证。也就是说，同一 Wi-Fi 网段内任何设备只要知道端口和格式，都能伪造控制消息。

### 5.2 主要命令

| ID | 常量 | 方向 | 作用 |
|---|---|---|---|
| 2 | `NET_MESSAGE_GPS_DATETIME_RQ` | DA → 手机 | 请求 GPS 时间 |
| 3 | `NET_MESSAGE_GPS_DATETIME_RS` | 手机 → DA | 返回 GPS 时间/状态 |
| 4 | `NET_MESSAGE_CAPABILITY_GET_RQ` | DA → 手机 | 请求设备能力 |
| 5 | `NET_MESSAGE_CAPABILITY_GET_RS` | 手机 → DA | 返回宽高、Android 版本、Linux 版本、机型、蓝牙 MAC |
| 10 | `NET_MESSAGE_WORK_MODE_CHANGE` | DA → 手机 | 工作模式：0 停止 / 1 镜像 / 2 应用模式 |
| 13/14 | `DEVICE_STATE_GET` | DA ↔ 手机 | 设备状态 |
| 15 | `NET_MESSAGE_VEHICLE_TRAVEL_STATE` | DA → 手机 | 行车状态 |
| 16/17 | `VEHICLE_INFO_RQ/RS` | DA ↔ 手机 | 车型、车机 Wi-Fi/蓝牙 MAC |
| 18 | `NET_MESSAGE_HEART_BREAK` | 双向 | 心跳 |
| 19 | `NET_MESSAGE_APP_ILLEGAL` | 手机 → DA | 当前应用是否合法：`{0}` 合法，`{1}` 非法 |
| 20 | `NET_MESSAGE_SCREEN_LOCK_STATE` | 手机 → DA | 锁屏/横竖屏状态 |
| 21 | `NET_MESSAGE_FORCE_SWITCH_SCREEN` | DA → 手机 | 强制切换横竖屏 |
| 28 | `NET_MESSAGE_APP_CHANGED` | 手机 → DA | 当前前台应用包名 |
| 30 | `NET_MESSAGE_MEDIA_STREAM_RESOLUTION` | DA → 手机 | 投屏流分辨率（宽高各 4 字节） |
| 31 | `NET_MESSAGE_RS` | 手机 → DA | 通用 ACK |
| 35 | `NET_MESSAGE_NAVI_START` | 手机 → DA | 导航开始/结束提示 |
| 36 | `NET_MESSAGE_GPS_STATE` | 手机 → DA | GPS 开关状态 |
| 37 | `NET_MESSAGE_TRACK_UP_DOWN` | DA → 手机 | 上一首/下一首 |
| 42/43 | `VOICE_RECOGNITION` | DA ↔ 手机 | 语音识别请求/状态 |
| 44/45 | `IMAGE_TRANSPORTATION` | DA ↔ 手机 | 图片传输 |

`28` 的 payload 不是纯包名，而是：

```
[1 字节 appType][1 字节包名长度][包名 UTF-8]
appType: 0=本 App，1=高德/四维导航，2=第三方应用
```

`19` 的 payload 只有 1 字节：`0` 合法，`1` 非法。这个字节就是“白名单限制”的执行信号。

补充：`DaMessage` 里还定义了 `13/14`（设备状态）、`15`（行车状态）、`32–34`（结算）、`44/45`（图片传输）等常量，但当前版本的 `DaService.judgeReceiveMessage()` 只处理了 `2/4/10/17/18/21/30/31/37/42`。其余命令要么由别的组件处理，要么这一版根本没启用。逆向时不要被常量表误导。

---

## 6. TCP 9996 扩展 UIBC

`InputEvent_parse` 监听 9996，收包格式：

| 偏移 | 长度 | 含义 |
|---|---|---|
| 0 | 2 | 保留/头 |
| 2 | 2 | 本包长度（小端） |
| 6 | 1 | 事件类型：0 Down / 1 Up / 2 Move / 3 KeyDown / 4 KeyUp |
| 8 | 1 | 触点数量（只有 2 才处理） |
| 10 | 2 | 触点 1 X（小端，14 位定点） |
| 12 | 2 | 触点 1 Y |
| 15 | 2 | 触点 2 X |
| 17 | 2 | 触点 2 Y |
| 10 | 2 | KeyDown/KeyUp 时是键值：1=Home，2=Return，3=Menu |

App 只做两件事：

- 双指距离变化超过屏幕宽度 1/10，就发 `VUI_NAVIGATION_ZOOM_IN/OUT` 广播（给高德导航缩放）；
- Home 键回调 `DaTouchEvent(4)`，重新打开自己。

**它没有 `InputManager.injectInputEvent()`、没有 root、没有无障碍注入。** 所以普通点击/滑动不是它做的，而是系统 Miracast UIBC 做的。9996 只是“扩展按键通道”。

---

## 7. 为什么“只有几个 App 能投”

这是整个逆向里最关键的一点：限制不在 Miracast，而在 App 自己的白名单逻辑。

### 7.1 12 个白名单应用

`assets/thirtypartyappsconfig` 和 `ThirdPartyAppConfig` 里硬编码了 12 个入口：

| # | 名称 | 包名 | 类型 |
|---|---|---|---|
| 1 | 导航 | `com.navinfo.vuinavigation` | 原生 App |
| 2 | 音乐 | `com.navinfo.weuimusic` | 原生 App |
| 3 | 新闻 | `com.navinfo.weuinews` | 原生 App |
| 4 | 天气 | `com.navinfo.weuiweather` | 原生 App |
| 5 | 酷我音乐 | `cn.kuwo.kwmusiccar` | 原生 App |
| 6 | 喜马拉雅 | `com.ximalaya.ting.android.car` | 原生 App |
| 7 | 携程 | `XIECHENG` | WebView |
| 8 | 艺龙 | `ELONG` | WebView |
| 9 | 途牛 | `TUNIU` | WebView |
| 10 | 今日头条 | `JINRITOUTIAO` | WebView |
| 11 | 腾讯新闻 | `QQNEWS` | WebView |
| 12 | 美团 | `MEITUAN` | WebView |

原生 App 如果没装，App 会从 `http://wdapp.navinfo.com/...` 下载对应 APK 并调起安装；Web 应用则直接在内置 `WebViewActivity` 打开移动版网页。

### 7.2 看门狗

`DaService$judgeTopAppThread` 每 500ms：

1. 用 `ActivityManager.getRunningTasks(1)` 或 `/proc` 扫描拿当前前台包名；
2. 如果前台不是自己、也不在白名单里，且当前是镜像模式（`daState == 2`）、不在通话中；
3. 向 DA 发 `19 {1}`，并 `stopHorizontalService()`。

DA 收到 `19 {1}` 后就会把画面切走/退出投屏。所以用户感觉“只有那 12 个 App 能投”，本质是**手机端主动告密 + 车机端配合**，而不是 Miracast 只传某个 App 的画面。Miracast 本身是整屏镜像，技术上任何 App 都能被投。

---

## 8. Android 16 兼容性逐项分析

| # | 问题 | 证据 | 影响 | 处理 |
|---|---|---|---|---|
| 1 | 机型/系统白名单只到 Android 6.0 | `PhoneInfo.START_PATTERN_ARRAY` 最后一项是 2016 年的 `xiaomi hong` + `6.0`；`getStartPattern()` 用 `androidVer.startsWith("6.0")` 匹配 | 在 Android 7+ 上返回 `null`，`startMiracastDeviceList()` 直接 `return 1`，**根本不会打开系统投屏页** | 已删除该门槛，直接尝试系统 action |
| 2 | AOSP 从 Android 11 起移除 Wi-Fi Display | 全包无 WFD API 调用；只靠 `android.settings.WIFI_DISPLAY_SETTINGS` | Pixel / 原生 Android 16 没有该设置页，App 无法发起 Miracast | 补丁会依次尝试 WFD → Cast → 三星/小米/高通 → Wi-Fi 设置；但**无法给系统补回 WFD 栈** |
| 3 | targetSdk 25 的旧行为 | Manifest `targetSdkVersion=25` | Android 16 仍允许安装（最低要求 target 24），但首次启动会弹“此应用专为旧版 Android 打造” | 保留 25，避免触发通知渠道、明文 HTTP、PendingIntent、FGS 类型等新限制 |
| 4 | `TYPE_PHONE`(2006) 悬浮窗 | `HorizontalService$CustomLayout` 构造参数 | Android 8+ 对非系统应用限制 2006，可能 `BadTokenException`，横屏服务崩溃 | 改为 `TYPE_APPLICATION_OVERLAY`(2038) |
| 5 | 旧存储权限可能阻断启动 | `MainActivity.permissions` 含 `READ/WRITE_EXTERNAL_STORAGE`，任一拒绝就弹“退出程序” | Android 13+ 上这些权限可能直接拒绝，用户一进来就被迫退出 | 从致命权限请求中移除，只保留电话状态 + 粗/细定位 |
| 6 | `getRunningTasks` / `/proc` 受限 | `ShareMethod.getTopApp()` | Android 5+ 起第三方 App 拿不到别的前台任务；Android 9+ `/proc` 也受限 | 看门狗已关闭，不再依赖它 |
| 7 | `CONFIGURE_WIFI_DISPLAY` 是 signature 权限 | Manifest 声明 | 第三方 App 永远拿不到 | 代码没有直接调用 WFD API，只打开设置页，所以无影响 |
| 8 | `MediaRouter.getPresentationDisplay()` 反射 | `InputEvent_parse.deviceOpen()` | Android 16 上可能找不到 `getDeviceAddress` 或 presentation display 为空 | 异常被 catch，最多影响触控坐标缩放，不影响主链路 |
| 9 | 16KB page size | `libtencentloc.so` arm64 LOAD 对齐 0x10000 | 16KB 页设备上可正常加载；armv7 是 4KB，但 32 位设备不涉及 16KB | 已检查，arm64 库是 64KB 对齐，风险低 |
| 10 | 前台服务/后台启动限制 | `DaService.startForeground()` | Android 12+ 后台启动 FGS 受限；本 App 从前台 Activity 启动，且有常驻通知 | 正常使用没问题；被系统杀掉后不要指望它自启 |

---

## 9. 补丁 APK 改了什么

产物：`NissanDA_revive.apk`（6.3 MB，v1/v2/v3 签名，SHA-256 见文末）。

### 9.1 去掉机型白名单，重写投屏入口

原方法：

```java
String pattern = getStartPattern();   // Android 7+ 返回 null
if (pattern == null) return 1;        // 直接失败，后面的 fallback 永远走不到
```

补丁后：

```java
// 不再看 Build.MODEL / Build.VERSION.RELEASE
// 依次尝试：
// 1. android.settings.WIFI_DISPLAY_SETTINGS   （传统无线显示 action）
// 2. ComponentName("com.android.settings",
//    "com.android.settings.wfd.WifiDisplaySettings")  （小米/红米 HyperOS 显式组件）
// 3. android.settings.CAST_SETTINGS           （Android 8+ 的 Cast 设置）
// 4. com.samsung.wfd.PICK_WFD_NETWORK         （三星）
// 5. com.android.settings.wfd.MiuiWifiDisplaySettings（小米旧 action）
// 6. com.qualcomm.wfd.service.WFD_SETTINGS     （高通）
// 7. android.settings.WIFI_SETTINGS            （最后兜底，至少让用户进 Wi-Fi 设置）
```

每个分支都用独立 `try/catch`，前一个不存在就抛 `ActivityNotFoundException` 并试下一个；成功启动返回 0，全部失败返回 1。

> 小米机型说明：HyperOS 的投屏页沿用 AOSP 的 `WifiDisplaySettings`，但不同版本对 `CAST_SETTINGS` 的 intent-filter 处理不一致，因此补丁把**显式 ComponentName 放在 action 之前**，避免被系统设置的分发逻辑拦掉。K70 Pro / K90 上走的就是第 2 条。

### 9.2 关闭“非法应用”看门狗

`DaService$judgeTopAppThread.run()` 里 `appBreak` 的初始值从 `1` 改成 `0`。这样 `if-eqz v1, :cond_5` 会直接跳过整个白名单判断，**永远不会再发 `19 {1}`**。效果：

- 投屏过程中切换到微信、B 站、Chrome、任意 App，DA 都不会再收到“非法应用”信号；
- 车机不会主动切走画面；
- 原来 12 宫格仍然存在，但不再是限制。

### 9.3 悬浮窗类型

`HorizontalService$CustomLayout` 的 window type 从 `0x7d6`(2006, TYPE_PHONE) 改为 `0x7f6`(2038, TYPE_APPLICATION_OVERLAY)，适配 Android 8+ 的悬浮窗规则。仍需要用户授予“显示在其他应用上层”。

### 9.4 运行权限

`MainActivity.permissions` 从 5 个减为 3 个：

```
READ_PHONE_STATE
ACCESS_COARSE_LOCATION
ACCESS_FINE_LOCATION
```

去掉 `READ_EXTERNAL_STORAGE` / `WRITE_EXTERNAL_STORAGE`，避免 Android 13+ 上因旧存储权限被拒而直接退出。副作用：日志、旧版应用下载可能写不进外部存储，但不影响投屏主链路。

### 9.5 没有改的部分

- `targetSdk` 仍是 25，`minSdk` 仍是 18；
- 包名、版本号不变；
- 控制协议（9998）、扩展 UIBC（9996）、心跳、Home 行为不变；
- UI 除 9.7（右上角投屏键、底部自选栏）和 9.8（横屏方向）外保持原样；
- 没有加入任何新的网络权限或后台服务。

### 9.6 修复首页天气（原接口已下线）

首页那个一直转的圈，根因不在 UI，而在数据源：

```
http://wdapi.navinfo.com:8200/cardService/weather/forecastByAdminCode?cata=json&adminCode=440100
```

- DNS 仍解析到 `123.206.2.148`，但 8200 / 80 / 443 全部连接超时，服务已经下线；
- `WeatherHelper` 的 `OnError()` 是空实现，请求失败后 `LiveData` 永远不更新，`ProgressBar` 就一直转。

补丁新增 `com.autonavi.cvc.app.da.weather.WeatherFix`，把数据源换成 open-meteo：

| 项目 | 原实现 | 补丁后 |
|---|---|---|
| 接口 | `wdapi.navinfo.com:8200`（HTTP，已死） | `api.open-meteo.com`（HTTPS，免费无 key） |
| 定位方式 | 6 位 adminCode | 经纬度（来自 `LocationHelper`） |
| 预报天数 | 5 天 | 5 天 |
| 解析 | Gson → `Weather` | 不变（反射调用原 `WeatherParser`） |
| UI | — | 完全不变 |

关键设计：`WeatherFix` 不直接构造 `Weather` 对象，而是把 open-meteo 的返回值**重新拼成原接口的 JSON 结构**，再交给原来的 `WeatherParser.getWeatherInfoResult()`。这样 Gson 映射、图标选择、中文天气名、温度区间格式化全部复用原代码，UI 层零改动。

字段换算：

- **天气码**：WMO code → 中国天气码（0 晴 / 1 多云 / 2 阴 / 3 阵雨 / 4 雷阵雨 / 7 小雨 / 8 中雨 / 9 大雨 / 14 小雪 / 16 大雪 / 18 雾 / 19 冻雨）；
- **风向**：角度 → 原 `SparseArray` 的 0–8 编码（北=7、东北=8、东=1、东南=2、南=3、西南=4、西=5、西北=6）；
- **风力**：km/h → 蒲福风级 → `windPowers` 数组下标（0 微风 … 9 11–12 级）；
- **发布时间**：写入真实的 `yyyy-MM-dd HH:mm:ss`，保证 2 小时缓存判断有效。

手选城市的路径也保留了：如果传入的 `cityCode` 与当前定位不一致，会从 `assets/city.xml` 反查城市名，再用 open-meteo 的 geocoding 接口取该城市经纬度。

**失败路径的兜底**

天气"能显示"和"永远能显示"是两件事。旧写法只在网络和定位都正常时才会回调，异常路径会把首页卡在 loading 上——这正是旧接口下线后用户看到的现象。本版补了三条兜底：

| 情况 | 处理 |
|---|---|
| 定位还没就绪 / 没给定位权限 | 先按手选城市查 geocode；再失败就用固定坐标（北京），保证有数据 |
| open-meteo 超时或返回异常 | 从数据库读上一次的 `Weather` 回调，页面显示旧数据而不是一直转圈 |
| 请求成功 | 把解析出的 `Weather` 写回 `WeatherDao`，恢复原版"2 小时内优先用缓存"的判断，减少无谓联网 |

**代价**：open-meteo 不提供 AQI 和生活指数，所以首页的空气质量会显示空白，洗车指数为空。天气、温度、风力、预报都正常。

**详情页闪退的修复**

天气详情页（`WeatherActivity`）进去后先弹「正在努力请求」，数据一到就闪退，根因是空指针：

```java
int carWash = CommonConstant.carwashIndex.get(weather.getWashCarInfo()).intValue();
```

`getWashCarInfo()` 在 `index == null` 或找不到 `type == 9` 的生活指数时返回 `null`，而 `carwashIndex` 是 `HashMap`，`get(null)` 得到 `null`，紧接着 `.intValue()` 抛 `NullPointerException`。首页只读温度，不碰这个字段，所以首页正常、详情页必崩。

补丁把 `Weather.getWashCarInfo()` 两条 `return null` 分支改成返回空串；`CommonConstant.carwashIndex` 里本来就有 `"" → 1` 的映射，于是洗车指数显示 1 颗星，不再崩溃。改动落在数据层，新旧缓存都覆盖。

### 9.7 桌面定制：右上角投屏键 + 自选 6 个应用

两处 UI 改动：

**（1）右上角投屏按钮**

与原左上角 Home 键对称的位置新增一个半透明圆角按钮，文字「投屏」，点击直接调用 `ShortcutMiracast.startMiracastDeviceList()`，走的是 9.1 里修好的那条链路（小米优先走 `WifiDisplaySettings` 显式组件）。

第一版把按钮加在 `res/layout/activity_main.xml` 里，实机上没显示。原因：这个布局是被 `main_desk.xml` include 进一个 `DaTouchableRelativeLayout` 的，而该容器只占屏幕高度的 2/3，顶部又和系统状态栏重叠，`layout_alignParentTop + 10dp` 正好落在状态栏范围内，被完全盖住了。

现在改为在 `QuickDesk.addCastButton()` 里用代码把按钮 `addView` 到 `android.R.id.content`（内容区，坐标不含状态栏），`Gravity.TOP | RIGHT` + 12dp 边距；背景用 `GradientDrawable` 现画（半透明白 15% + 1px 描边 + 12dp 圆角），不依赖图片资源。这样位置与左上角 Home 键严格对称，也不受布局容器影响。

**（2）底部 6 个应用改为自选（保留两页滑动）**

原实现：`ThirdPartyAppConfig` 硬编码 12 个应用，按每页 6 个分页显示，用户无法更改。

补丁后：

- 底部恢复成 **2 页、每页 6 个槽位，可左右滑动**，共 12 个自选位；内容来自 `SharedPreferences`（`da_quick_apps` / `pkgs`，逗号分隔的包名）；
- 用一个新建的 `ViewPager`（support-v4，与原 App 同款）承载这两页，滑页时同步底部两个圆点；
- 空槽显示「＋ 添加」，点击直接打开选择界面；
- 已配置的槽位显示该应用的真实图标和名称（`PackageManager.getApplicationIcon` / `getApplicationLabel`），点击启动，未安装则提示；
- **长按任意槽位**也可以重新打开选择界面。

选择界面是新增的 `AppPickerActivity`（纯代码构建 UI，没有新增 layout 文件）：

```
标题栏：选择桌面应用          计数 3 / 12
提示：最多 12 个，分两页显示，长按桌面图标可重新选择
[ 搜索应用名                    ]
─────────────────────────────
[图标] 高德地图                    ☑
[图标] 网易云音乐                  ☐
...
─────────────────────────────
[清空]              [取消] [保存]
```

已安装应用通过 `queryIntentActivities(ACTION_MAIN + CATEGORY_LAUNCHER)` 枚举，按包名去重、按名称排序，排除自身。**因为 `targetSdk` 仍是 25，不受 Android 11 包可见性限制**，能列出全部应用。

列表上方的搜索框对应用名和包名同时做不区分大小写的包含匹配，输入即过滤，清空恢复全量。清单里给 `AppPickerActivity` 加了 `windowSoftInputMode="adjustResize"`，横屏弹键盘时列表自动压缩，底部按钮不会被顶出屏幕。

实现上新增两个类：

| 类 | 职责 |
|---|---|
| `com.autonavi.cvc.app.da.quick.QuickDesk` | 隐藏原 ViewPager，在原位置插入 2 页 × 6 槽位的新 ViewPager；同步圆点；向内容区注入投屏按钮；读写 SharedPreferences |
| `com.autonavi.cvc.app.da.quick.AppPickerActivity` | 应用列表、多选、保存 |

`MainActivity` 只加了两个调用点：`initDeskViewPager()` 末尾和 `onResume()` 里各调一次 `QuickDesk.overlay(this)`，前者负责首次渲染，后者负责从选择界面返回后刷新。原 `viewPager` 字段仍保留并被赋值（不破坏上半区的触摸转发逻辑），只是设为 `GONE`。

---

### 9.8 横屏双向自动旋转

原包所有 Activity 都写死 `android:screenOrientation="landscape"`，只认一个横屏方向：手机朝左横置时画面正常，朝右横置时画面会倒过来。系统里开不开"自动旋转"都一样，因为 `landscape` 本身就是固定值，不走传感器。

补丁把 7 个 Activity（`MainActivity`、`GuideAnim`、`WeatherActivity`、`CityListActivity`、`WebViewActivity`、`WebViewErrorActivity`、`AppPickerActivity`）统一改成 `sensorLandscape`：

| 取值 | 含义 | 结果 |
|---|---|---|
| `landscape`（原值，0） | 固定一个横屏方向 | 反向横置时画面颠倒 |
| `sensorLandscape`（新值，6） | 横屏 + 反向横屏，跟随重力感应 | 两个横屏方向都能正立显示 |

两个细节：

- **`sensorLandscape` 不受系统"自动旋转"开关影响**。这是 `sensor*` 系列与 `user*` 系列的区别：前者直接读传感器，后者才受用户锁定开关控制。所以用户在控制中心关掉自动旋转，App 依然会跟随手机翻转——这正是车机场景需要的。
- **不用 `fullSensor`**。`fullSensor` 会允许竖屏，而这个 App 的布局是按 16:9 横屏写死的（大量绝对坐标、`DaTouchableRelativeLayout` 的固定分区），一旦转成竖屏会直接错位。`sensorLandscape` 把可选方向限制在两个横屏之间，不会出现竖屏。

翻转 180° 时不会重建 Activity：这些 Activity 的 `configChanges` 里本来就有 `orientation`，系统只回调 `onConfigurationChanged`，View 树原样保留。因为横屏正反两个方向的宽高完全一致，也不需要重新测量布局，只是整个窗口旋转 180°。已填的应用列表、当前页码、输入框内容都不会丢。

`AppPickerActivity` 原本没有声明 `configChanges`，这次一并补成 `orientation|screenSize|smallestScreenSize`。它是纯代码构建的界面，个别 ROM 在翻转时会连带上报屏幕尺寸变化，触发重建，把用户还没保存的勾选清空；补上这两个 flag 后不会再重建。

## 10. 安装与使用

### 10.1 安装

1. 备份原 App 数据（如果有）。
2. 卸载原版 `com.autonavi.cvc.app.da`。补丁包用了新的自签名证书，**不能覆盖安装**。
3. 允许“安装未知应用”，安装 `NissanDA_revive.apk`。
4. 首次启动会弹“此应用专为旧版 Android 打造”，点“仍然运行”。
5. 授予电话状态、定位、悬浮窗权限。定位用于天气/GPS 时间；原版逻辑是“电话状态/定位任一拒绝就退出”，补丁只去掉了存储权限，没有改这个强制逻辑，所以首次启动请全部允许。悬浮窗权限用于强制横屏，拒绝也能投屏，但画面方向可能不对。

### 10.2 连接 DA

1. 手机打开 Wi-Fi 和蓝牙，先和车机完成蓝牙配对（用于免提，不是投屏数据）。
2. 打开 `Mobile App`，按提示点“连接”。
3. App 会跳到系统的“无线显示/投屏”页面（小米/红米：直接进「设置 → 连接与共享 → 投屏」，补丁用的是显式组件，不会先弹一次失败）。选择日产 DA（通常显示为 `NISSAN` 或 `DA` 开头）。
4. 等系统建立 Miracast。DA 连上手机 `9998` 后，App 日志会出现 `CTRL serverSocket accept connect successfully!`。
5. 此时手机屏幕会镜像到 DA。想投别的 App，直接按 Home/最近任务切走即可；补丁已关闭白名单拦截。

> 注意：非白名单 App 大多是竖屏设计，投到 16:9 的 DA 屏上会左右留黑边或被迫横屏拉伸。这是“整屏镜像”的必然结果，不是补丁能消除的；原来的 12 个白名单 App 都是按车机横屏做的。

### 10.3 排查

- 如果点“连接”后跳到 Wi-Fi 列表而不是投屏列表：说明该 ROM 没有实现 `WIFI_DISPLAY_SETTINGS`，补丁已尝试 `CAST_SETTINGS`，仍然没有就是系统没有 Miracast。
- 如果 DA 一直黑屏：先在手机系统投屏页确认已连上 DA，再看 `adb logcat -s DA ShortcutMiracast` 是否有 9998 的 accept 日志。
- 如果 App 闪退：抓 `adb logcat -s AndroidRuntime`，重点看 `Notification`、`SecurityException`、`BadTokenException`。
- 如果通知栏没有“Nissan 互联服务”：Android 13+ 可能没给通知权限，但前台服务通常仍在跑；可在系统设置里手动允许通知。

---

## 11. 仍然做不到的部分

### 11.1 Pixel / 原生 Android 16 无法投屏

这不是补丁的问题。AOSP 从 Android 11 起移除了 Wi-Fi Display 服务，Pixel 等原生系统没有 Miracast source。App 里没有任何一行代码能替代它。表现是：补丁能打开 Cast 设置，但列表里只有 Chromecast 设备，没有 DA。

可选方案：

1. **换一台仍保留 Wi-Fi Display 的手机**（最现实）。小米/红米 HyperOS、OPPO/一加 ColorOS、vivo/iQOO OriginOS、荣耀 MagicOS、三星 One UI 通常还保留“无线投屏/屏幕共享”，具体要看机型和系统版本。
2. **自研用户态 WFD Source**（工程量大）。需要：
   - `MediaProjection` + `VirtualDisplay` 抓屏；
   - `MediaCodec` 硬编 H.264；
   - Wi-Fi Direct/P2P 发现并连接 DA 的 WFD Sink（需要处理 WFD IE，部分 API 是 hidden）；
   - RTSP M1–M7 握手、RTP/MPEG2-TS 打包、可选的 HDCP；
   - UIBC 回传与触控注入（普通 App 只能靠无障碍，做不到系统级注入）。
   这不是改几个 smali 能完成的，且没有 DA 实机很难调通。
3. **换车机**。后装 CarPlay/Android Auto 车机是更省事的路线；DA 只认 Miracast，没有 CarPlay/AA 接收能力。

### 11.2 老网络服务的现状

实测结果（2026-11）：

| 服务 | 用途 | 状态 |
|---|---|---|
| `wdapi.navinfo.com:8200` | 天气 | **已下线**（端口全超时），补丁已换源 |
| `vapi.fundrive.com.cn/rgc` | 逆地理编码 | 仍可用，正常返回 `citycode` / `cityname` |
| `navinfo` 应用下载接口 | 12 宫格应用安装包 | 大概率已下线，未逐一验证 |

影响：

- 天气已在 9.6 修复，首页不再转圈；
- 定位城市仍能正常更新（逆地理接口活着）；
- 12 宫格里的原生 App 下载可能失败，但不影响投屏主链路、9998 控制通道和白名单绕过。

### 11.3 16KB 页设备

已检查 arm64 的 `libtencentloc.so`，LOAD 对齐是 `0x10000`（64KB），满足 16KB 页要求。armv7 是 4KB，但 32 位设备不涉及 16KB 页。真正需要担心的是极少数只提供 4KB 库的旧设备，这台不在此列。

---

## 12. 代码审查

在交付前对全部改动做了一轮逐文件复查，范围包括：新增的 3 个 Java 类、手改的 5 处 smali、Manifest、以及重打包后的 APK 结构。结论是**主链路没有发现会直接崩溃或功能失效的问题**，但有 4 个真实缺陷，已在本版修复。

### 12.1 本轮修复

| # | 位置 | 问题 | 触发条件 | 修复 |
|---|---|---|---|---|
| 1 | `WeatherFix.resolve()` | 定位未就绪时 `lat/lng` 为 0，方法直接返回 `null`，上层不发任何回调 | 冷启动头几秒、拒绝定位权限、室内无 GPS | 增加两级兜底：手选城市 → geocode；再不行用固定坐标（北京）。宁可先显示一个城市的天气，也不让首页无限转圈 |
| 2 | `WeatherFix.getWeather()` | 网络失败 / 解析失败时直接 `return`，`Listener.OnResult` 永不触发 | 断网、open-meteo 超时、返回体异常 | 失败时回退读取数据库里上一次的 `Weather` 并回调；同时成功的报文会 `insertWeather` 写回库，恢复原版"2 小时内用缓存"的判断 |
| 3 | `Weather.getWashCarInfo()` | 上一版只处理了 `index == null`，若 `indices` 里有 `type==9` 的项但 `desc` 为 null，仍返回 null | 旧缓存里存在残缺的生活指数 | 返回前补 `if-eqz` 判空，null 一律降级为空串 |
| 4 | 桌面应用栏 | `QuickDesk.overlay()` 在每次 `onResume` 重建 ViewPager，页码被重置到第 1 页 | 在第 2 页点开某个应用再返回 | 用静态 `sPage` 记住当前页，重建后 `setCurrentItem(sPage, false)` 恢复 |

第 1、2 条是这一轮最有价值的发现：天气"能显示"和"永远能显示"是两件事，原来的写法只在网络和定位都正常时才收敛，异常路径会把 UI 卡在 loading 上——而这恰恰是旧接口时代用户看到的现象。

### 12.2 复查确认无问题的项

| 检查项 | 结论 |
|---|---|
| `QuickDesk` 的 `LayoutParams` 类型 | `desk_app_link` 的父容器确实是 `RelativeLayout`，用 `RelativeLayout.LayoutParams` 添加不会 `ClassCastException` |
| ViewPager 嵌套与触摸 | 新 ViewPager 加在 `buttom_layout` 的兄弟层级，不在 `DaTouchableRelativeLayout` 内，不会被它的触摸拦截吃掉滑动 |
| PagerAdapter 生命周期 | `instantiateItem` / `destroyItem` 成对，页面 View 复用同一个实例，滑动不重复 inflate |
| 应用选择器去重 | `queryIntentActivities` 结果按包名 `LinkedHashMap` 去重，同一应用多个 launcher activity 只出现一次 |
| 选择器包可见性 | `targetSdk=25`，不受 Android 11 `<queries>` 限制，能枚举全部已安装应用 |
| 权限数组 | 3 项均为可授予的普通/危险权限，Android 16 上不会出现"申请了但永远拿不到"的项 |
| 悬浮窗类型 | `TYPE_APPLICATION_OVERLAY` 只在收到车机 `0x15` 命令时启用，手机单机使用不会触发 |
| 签名与覆盖安装 | 证书 SHA-256 与上一版一致（`c2f7763…`），可直接覆盖安装，不需要先卸载 |
| APK 结构 | 5 个 ABI 的 `libtencentloc.so` 齐全，`assets/city.xml` 已打包，`classes.dex` 头校验通过 |

### 12.3 已知但未修

| 项 | 说明 | 为什么不修 |
|---|---|---|
| 页码圆点不显示 | 原包的 `centerWidget` 是个空 `RelativeLayout`，全包没有任何代码往里加圆点，`QuickDesk.bindDots()` 实际是空操作 | 加圆点要自己算底部栏的剩余高度，位置依赖具体屏幕，改了反而可能压到应用图标；功能上两页可以正常滑动 |
| `AppPickerActivity.iconCache` 未使用 | 声明了 `HashMap` 但 `getView` 直接读 `Item.icon` | 纯死代码，不影响行为 |
| `HorizontalService` 的 `addView` 无 try/catch | 未授予"显示在其他应用上层"时可能 `BadTokenException` | 只在车机发 `0x15` 时启动，手机单机场景不触发；要修得改 smali 的异常表，收益低于风险 |
| `ShortcutMiracast` 里的 `setWifiEnabled` | Android 10+ 普通应用已无权修改 Wi-Fi 状态，调用返回 false | 后面的跳转逻辑不依赖它的返回值，失败也会继续打开投屏页 |

## 13. 风险与未确认项

- **未在真实 2016 轩逸 DA 上做端到端验证**。本次是静态逆向 + 重打包 + 签名校验，没有实车/实机。补丁的逻辑改动很小，但 Miracast 握手、DA 的 `19` 行为、不同 ROM 的投屏页仍需实机确认。
- **不同 OEM 的投屏页 action 不一样**。补丁覆盖了最常见的 6 个，仍可能有厂商用私有 action；如果点“连接”没反应，需要提供 `adb shell dumpsys package` 或 `logcat` 里的 `ActivityNotFoundException`。
- **DA 是否要求 HDCP** 未知。如果 DA 的 WFD Sink 强制 HDCP，用户态方案会更复杂；系统 Miracast 通常能处理。
- **补丁签名与原版不同**。如果车机端对手机 App 做了签名校验（目前没看到这种逻辑），可能会拒绝；手机端没有校验。
- **`19` 关闭后 DA 是否还有第二道白名单** 未知。从代码看手机是唯一发 `19` 的一方，但 DA 固件闭源，不能 100% 排除它自己也做判断。实机表现是最终答案。
- **天气补丁已在 K70 Pro 上实测**，首页与详情页显示正常。但 open-meteo 在中国大陆部分网络下可能被 DNS 污染或限速；如果换网络后首页仍转圈，先用手机浏览器打开 `https://api.open-meteo.com/v1/forecast?latitude=23.1&longitude=113.3&current=temperature_2m` 确认可达。不可达时可换用任意兼容源，只需改 `WeatherFix` 里的 `API` 常量并重新编译。
- **AQI 与生活指数缺失**。open-meteo 不提供这两个字段，首页空气质量会显示空白，洗车指数固定显示 1 颗星，属于「未知」占位，不是真实洗车建议。
- **桌面定制已在 K70 Pro 上实测**：右上角投屏键、12 个自选槽位、两页滑动、搜索均正常。仍待验证的是不同分辨率/DPI 的机型：布局按 `buttom_layout` 的 `above` 规则定位，`wrap_content` 高度已用 `setMinimumHeight(84dp)` 兜底；如果换机后图标偏高/偏低，告诉我具体偏差，改成固定高度即可。
- **横屏双向旋转未实机验证**。改为 `sensorLandscape` 后，反向横置时系统会把整个窗口旋转 180°，布局尺寸不变。理论上不需要重新测量，但如果个别自定义 View（如 `DaTouchableRelativeLayout` 的手势区域）在反向时触摸坐标偏移，需要单独处理。实机测试时请把手机横过来再倒过去各试一次。
- **应用选择器依赖包可见性**。`targetSdk=25` 时不受 Android 11 的包可见性限制，能枚举全部应用；若以后把 `targetSdk` 提到 30+，需要在 Manifest 加 `<queries>` 或 `QUERY_ALL_PACKAGES`。

---

## 14. 附录：关键类与文件

| 类/文件 | 作用 |
|---|---|
| `nmsed.shortcatmiracast.ShortcutMiracast` | 打开系统 Wi-Fi Display 设置；原版有机型/系统白名单 |
| `nmsed.shortcatmiracast.PhoneInfo` | 2013–2016 年机型 × Android 版本 → 启动方式映射表 |
| `com.navinfo.nissanda.dautil.daconnector.DaConnector` | 绑定 `DaService`，AIDL 回调连接状态 |
| `...msgserver.DaService` | 9998 控制服务、协议组帧/解帧、工作模式、GPS 时间、屏幕状态 |
| `...socketserver.Socket_server` | 通用 TCP Server，端口 9998/9996，心跳 `sendUrgentData(255)` |
| `...uibcserver.InputEvent_parse` | 9996 扩展 UIBC 解析，双指缩放/Home 键 |
| `...horizontalService.HorizontalService` | 0×0 悬浮窗强制横屏 |
| `com.autonavi.cvc.app.da.thirdpartyappmanager.ThirdPartyAppManager` | 12 个白名单应用、下载、安装、图标 |
| `com.autonavi.cvc.app.da.thirdpartyappmanager.ThirdPartyAppConfig` | 白名单 URL/包名/名称硬编码 |
| `com.autonavi.cvc.app.da.source.HomeManager` | 切换/恢复手机默认桌面 |
| `assets/thirtypartyappsconfig` | 服务端可更新的应用清单（12 项） |

---

## 15. 产物与校验

| 文件 | 说明 |
|---|---|
| `apktool_src/` | 完整 apktool 工程，已含全部改动 |
| `NissanDA_revive.apk` | `tools/build.sh` 的产物。从官方原版升级需先卸载（签名不同）；覆盖安装旧补丁包可以 |
| `日产DA投屏逆向分析报告.md` | 本报告 |
| `architecture.png` | 架构图 |

构建校验：

```
SHA-256: 每次构建见 release 说明（apktool 重打包不保证字节级可复现）
签名方案: v1 + v2 + v3
签名主体: CN=Nissan DA Android16 Patch（tools/nissan16.keystore）
```

签名证书沿用最初那版补丁的 `nissan16.keystore`，所以新旧补丁包可以互相覆盖安装，不用卸载。

> 重要提醒：这个补丁解决的是“App 在 Android 16 上能装、能打开投屏页、不再限制应用”这三件事，**不解决“Android 16 系统本身没有 Miracast”这件事**。前者是 App 层，后者是系统层。实机测试时请先确认手机系统设置里是否存在“无线显示/屏幕共享/投屏”入口。

---

## 16. 附录 B：复现命令

本次使用的工具链：

- apktool 2.11.1（Maven `org.apktool:apktool-cli`）
- jadx 1.5.1（Maven `io.github.skylot:jadx-cli`）
- Android build-tools 35（`zipalign`、`apksigner`、`aapt2`、`dexdump`）

```bash
# 1. 反编译资源 + smali
java -cp "apktool-deps/*" brut.apktool.Main d -f -o apktool_out da.apk

# 2. 修改以下文件
#    smali/nmsed/shortcatmiracast/ShortcutMiracast.smali
#      - 重写 startMiracastDeviceList(Context)I
#    smali/com/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread.smali
#      - .line 1257 的 const/4 v1, 0x1 改为 0x0
#    smali/com/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout.smali
#      - const/16 v3, 0x7d6 改为 0x7f6
#    smali/com/autonavi/cvc/app/da/ui/activity/MainActivity.smali
#      - permissions 数组 5 -> 3，去掉 READ/WRITE_EXTERNAL_STORAGE
#    smali/com/autonavi/cvc/app/da/weather/WeatherHelper.smali
#      - getWeather 方法体改为调用 WeatherFix
#    smali/com/autonavi/cvc/app/da/weather/model/Weather.smali
#      - getWashCarInfo 返回空串，并对 desc 判空
#    smali/com/autonavi/cvc/app/da/weather/WeatherFix*.smali
#      - 新增类：open-meteo -> 旧 JSON 结构
#    AndroidManifest.xml
#      - 7 个 Activity 的 screenOrientation: landscape -> sensorLandscape
#      - 注册 AppPickerActivity（sensorLandscape + adjustResize）

# 2.1 新增类的生成方式（不需要改 Gradle 工程）
#     javac -source 8 -target 8 -bootclasspath android.jar -d out WeatherFix.java
#     d8 --lib android.jar --min-api 19 --output dex out/.../WeatherFix*.class
#     baksmali d dex/classes.dex -o smali_out
#     把 smali_out 下的包目录整体拷进 apktool 工程的 smali/

# 3. 重打包
java -cp "apktool-deps/*" brut.apktool.Main b apktool_out -o patched_unsigned.apk

# 4. 对齐 + 签名
zipalign -f -p 4 patched_unsigned.apk patched_aligned.apk
apksigner sign --ks nissan16.keystore --ks-key-alias nissan16 \
  --ks-pass pass:nissan123 --key-pass pass:nissan123 \
  --out NissanDA_revive.apk patched_aligned.apk

# 5. 校验
apksigner verify --verbose --print-certs NissanDA_revive.apk
aapt2 dump badging NissanDA_revive.apk | head -5
```

> 重新打包会改变资源索引和 DEX 校验和，但不会改变包名、版本号和协议；签名必须换新，所以从官方原版安装前要卸载。上一版补丁与本版同证书，可直接覆盖。
