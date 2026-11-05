[![build](https://github.com/NaClLuo/nissan-da-revive/actions/workflows/build.yml/badge.svg)](https://github.com/NaClLuo/nissan-da-revive/actions/workflows/build.yml)

# nissan-da-revive

让 2016 款日产轩逸 DA 车机的那款旧配套 App，在今天的手机上重新能用。

原包是 `com.autonavi.cvc.app.da`（Mobile App 1.5.0001，targetSdk 25）。它的机型适配表停在 Android 6，投屏入口在 Android 7 以上直接返回失败；天气接口 `wdapi.navinfo.com:8200` 也已经下线。这个仓库做的是把它重新接上：

- 解开机型/系统版本限制，恢复调用系统投屏页；
- 去掉「只允许 12 个白名单应用投屏」的前台检测；
- 换掉已下线的天气源，顺手修掉天气详情页的崩溃；
- 首页右上角加投屏快捷键，底部 6 个写死的应用换成 12 个自选槽位（两页可滑、带搜索）；
- 横屏支持正反两个方向。

> 本仓库只包含**补丁本身**（我写的 Java 类 + 对原包 smali 的改动），不包含原版 APK，也不分发重打包后的完整 APK。原 App 的版权归原厂所有，你需要自己拥有一份合法副本。

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
| 8 | `AndroidManifest.xml` | 7 个 Activity `landscape` → `sensorLandscape` | 反着横置时画面颠倒 |

改动以 unified diff 的形式放在 [`patches/da-revive.patch`](patches/da-revive.patch)，新增类的源码在 [`patch/java`](patch/java)。两者加起来就是全部差异。

---

## 怎么用

### 方式一：直接装现成的

自己按下面的流程构建一次即可。仓库不提供成品 APK，原因见顶部说明。

### 方式二：本地一条命令构建

需要 JDK 17+、Android SDK build-tools（要 `zipalign` / `apksigner`）、`patch`、`unzip`。

```bash
# 1. 编译补丁类，产出 patchpack
export ANDROID_JAR=$ANDROID_HOME/platforms/android-35/android.jar
export SUPPORT_JAR=/path/to/support-core-ui-25.3.1.jar   # 见下
export SMALI_CP=$(find deps -name '*.jar' | tr '\n' ':')
export D8=$ANDROID_HOME/build-tools/35.0.0/d8
tools/build-patchpack.sh

# 2. 拿你自己的原版 APK 打补丁
tools/apply.sh /path/to/da.apk out.apk
```

`apply.sh` 会自动下载 apktool 2.11.1、反编译、套用 `patches/da-revive.patch`、铺入 patchpack、回编译、zipalign、用自动生成的 keystore 签名。产物默认在 `dist/NissanDA_revive.apk`。

### 方式三：GitHub Actions 云编译

Actions 页 → `build` → `Run workflow`，可填版本号、可勾选发布到 Release。产物是 **patchpack**（补丁 smali 包），不是完整 APK——云端没有、也不该有原版 APK。

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

## 目录

```
patches/   unified diff（Manifest + 6 个 smali）
patch/     新增类的 Java 源码
tools/     build-patchpack.sh / apply.sh / pom.xml
report/    逆向分析报告
docs/      架构图
```

---

## 免责声明

见 [`DISCLAIMER.md`](DISCLAIMER.md)。简单说：仅供个人在自己的车机上使用，不含任何原厂代码或资源，风险自负。

## 许可

本仓库自有的代码（`patch/java`、`tools`、`patches`）以 MIT 发布。MIT **不覆盖**原 App 及其任何衍生物。
