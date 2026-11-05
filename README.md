[![build](https://github.com/NaClLuo/nissan-da-revive/actions/workflows/build.yml/badge.svg)](https://github.com/NaClLuo/nissan-da-revive/actions/workflows/build.yml)

# nissan-da-revive

2016 款日产轩逸 DA 车机配套的旧版 `Mobile App`，在今天的手机上重新能用。

原包 `com.autonavi.cvc.app.da`（1.5.0001，targetSdk 25）的机型适配表停在 Android 6，投屏入口在 Android 7 以上直接返回失败；天气接口 `wdapi.navinfo.com:8200` 也已下线。这个仓库是**完整的 apktool 工程**——已打补丁，`apktool b` 一把就能出包：

- 解开机型/系统版本限制，恢复调用系统投屏页；
- 去掉「只允许 12 个白名单应用投屏」的前台检测；
- 换掉已下线的天气源，修掉天气详情页的崩溃；
- 首页右上角加投屏快捷键，底部 6 个写死的应用换成 12 个自选槽位（两页可滑、带搜索）；
- 横屏支持正反两个方向。

> 仓库是私有的，仅供个人在自己车机上使用。原 App 版权归原厂，请勿公开分发构建产物。

---

## 先搞清楚一件事：投屏不是这个 App 做的

它不编码视频、不推 RTP、不跑 RTSP。整条链路里它只做三件事：

1. **打开手机系统的 Wi-Fi Display 设置页**（`ShortcutMiracast`，原版内置 2013–2016 机型白名单）；
2. **维护一条 TCP 9998 控制通道**（16 字节头 `1A 1F 1A 1F` + commandId + length + BCC，命令 10/16/17/19/20/28/30）；
3. **每 500 ms 检查前台应用**，不在 12 个白名单里就给车机发 `19 {1}`，让车机切走画面。

视频链路完全由手机系统的 WFD Source 和车机 Sink 完成，App 里没有一行 `MediaProjection` / `MediaCodec` / `VirtualDisplay` / RTSP 代码。

这意味着：**系统没有 Wi-Fi Display，改 App 也没用**。Pixel、原生 Android 11+ 已经移除 WFD，投不出去；小米、三星等保留了这个能力的 ROM 才行。

协议细节、类结构、调用链见 [`report/日产DA投屏逆向分析报告.md`](report/日产DA投屏逆向分析报告.md)。

---

## 目录

```
apktool_src/   完整 apktool 工程（原始 2900+ smali + 全部改动）
patch/java/    自己写的 4 个类的 Java 源码（apktool_src 里的 smali 由它编译而来）
tools/         build.sh + 签名密钥
report/        逆向分析报告
docs/          架构图
```

工程里的 `DA-REVIVE PATCH` 注释标出了每一处手改，`git log` 里有逐项说明。

---

## 改了什么

| # | 位置 | 改动 | 为什么 |
|---|---|---|---|
| 1 | `ShortcutMiracast` | 删掉机型表，改成显式组件 + 多级 fallback | 原表只覆盖到 Android 6，7+ 直接 `return 1` |
| 2 | `DaService$judgeTopAppThread` | `appBreak` 初值 1 → 0 | 不再给车机报「非法应用」，切到任何 App 都不会被踢 |
| 3 | `HorizontalService$CustomLayout` | 悬浮窗类型 2006 → 2038 | Android 8+ 禁止非系统应用使用 `TYPE_PHONE` |
| 4 | `MainActivity` | 致命权限 5 个 → 3 个 | Android 13+ 上旧的存储权限被拒会导致启动即退出 |
| 5 | `WeatherHelper` → `WeatherFix` | 数据源换成 open-meteo | 原接口全端口超时，`OnError()` 是空实现，首页永久转圈 |
| 6 | `Weather.getWashCarInfo` | null 返回空串 + desc 判空 | 详情页 `intValue()` 空指针闪退 |
| 7 | 新增 `QuickDesk` / `AppPickerActivity` | 右上角投屏键 + 12 个自选槽位 | 原 6 个图标写死，投屏入口太深 |
| 8 | Manifest + 新增 `OrientationFix` | 横屏两个方向都能正立，且**跟随系统方向锁定** | 原来只认一个方向；只改 `sensorLandscape` 又无视锁定开关 |

---

## 构建

### 本地

需要 JDK 17+ 和 Android SDK build-tools（要 `zipalign` / `apksigner`）。

```bash
tools/build.sh
# -> dist/NissanDA_revive.apk
```

首次运行会自动下载 apktool 2.11.1 到 `tools/apktool.jar`。签名用 `tools/nissan16.keystore`（alias `nissan16`，密码 `nissan123`），与历史版本相同，可以直接覆盖安装旧补丁。

### GitHub Actions

Actions → `build` → `Run workflow`：构建全量 APK，产物在 Artifacts；勾选 `publish` 或推 `v*` tag 会同时发到 Release。

---

## 安装

1. 卸载官方原版（签名不同，不能覆盖）。
2. `adb install -r NissanDA_revive.apk`，或直接点安装。
3. 首次启动提示「此应用专为旧版 Android 打造」，选「仍然运行」。
4. 授予电话状态、定位；需要后台横屏服务时再给「显示在其他应用上层」。

连接车机：手机与 DA 完成蓝牙配对 → 打开 App → 点右上角「投屏」→ 在系统投屏页选 `NISSAN` / `DA` 开头的设备。

---

## 已知限制

- **系统没有 WFD 就投不出去**。这是系统能力，不是 App 的问题。
- **AQI 与生活指数缺失**：open-meteo 没有这两个字段，空气质量空白、洗车指数固定 1 星占位。
- **页码圆点不显示**：原包 `centerWidget` 从未被填充，`bindDots()` 实际是空操作；两页仍可滑。
- **未做全机型验证**：布局按 `buttom_layout` 的 `above` 规则定位，`ViewPager` 高度用 `setMinimumHeight(84dp)` 兜底，不同 DPI 下可能有几 dp 偏差。

---

## 免责声明

见 [`DISCLAIMER.md`](DISCLAIMER.md)。仅供个人在自己的车机上使用，风险自负。

## 许可

`patch/java`、`tools` 等自写代码以 MIT 发布，不覆盖原 App 及其衍生物。
