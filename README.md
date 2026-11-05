# 日产 DA「Mobile App」Android 16 适配补丁

让 2016 年日产轩逸 DA 车机配套的旧版 `Mobile App` 能在 Android 16 手机上正常安装、打开投屏页，并去掉原来的应用白名单限制。

- 原包：`com.autonavi.cvc.app.da`，versionName `1.5.0001`（versionCode 8），targetSdk 25
- 补丁包：`NissanDA_Android16_patched.apk`（见 [Releases](../../releases)）
- 测试机型：Redmi K70 Pro（HyperOS / Android 16）

> 这个补丁解决的是「App 层」的问题：能装、能调起系统投屏页、不再限制前台应用。
> 它**不解决**「Android 16 系统本身没有 Miracast」——AOSP 从 Android 11 起移除了 Wi-Fi Display，Pixel / 原生系统仍然投不出去。

---

## 原 App 是怎么投屏的

它自己不编码视频、不推 RTP、不跑 RTSP。整条链路里它只做三件事：

1. **打开手机系统的 Wi-Fi Display 设置页**（`ShortcutMiracast`，原版有 2013–2016 机型白名单）；
2. **维护一条 TCP 9998 控制通道**（16 字节头 `1A 1F 1A 1F` + commandId + length + BCC，命令 10/16/17/19/20/28/30）；
3. **每 500ms 检查前台应用**，不在 12 个白名单里就给车机发 `19 {1}`，让车机切走画面。

视频链路完全由手机系统的 WFD Source 和车机 Sink 完成，App 里没有一行 `MediaProjection` / `MediaCodec` / `VirtualDisplay` / RTSP 代码。

详细协议、类结构和调用链见 [`report/日产DA投屏逆向分析报告.md`](report/日产DA投屏逆向分析报告.md)。

---

## 补丁改了什么

| # | 改动 | 原因 |
|---|---|---|
| 1 | 删除 `ShortcutMiracast` 的机型/系统白名单，改为显式组件 + 多级 fallback | 原表只覆盖到 Android 6，7+ 直接 `return 1`，永远打不开投屏页 |
| 2 | 把 `judgeTopAppThread` 的 `appBreak` 初值从 1 改为 0 | 不再向车机上报「非法应用」，切到任何 App 都不会被踢回 |
| 3 | 悬浮窗类型 `TYPE_PHONE`(2006) → `TYPE_APPLICATION_OVERLAY`(2038) | Android 8+ 对非系统应用禁用 2006 |
| 4 | 致命权限从 5 个减到 3 个（去掉读写外置存储） | Android 13+ 上旧存储权限被拒会导致启动即退出 |
| 5 | 天气数据源从已下线的 `wdapi.navinfo.com:8200` 换成 open-meteo | 原接口全端口超时，`OnError()` 空实现导致首页永久转圈 |
| 6 | 新增右上角投屏键 + 底部 12 个自选应用槽位（2 页可滑） | 原 6 个图标硬编码，无法更换；投屏入口太深 |
| 7 | 7 个 Activity 的 `screenOrientation` 改为 `sensorLandscape` | 原来只认一个横屏方向，手机反着横置时画面颠倒 |

补丁源码在 [`patch/`](patch/)，复现步骤见 [`patch/README.md`](patch/README.md)。

---

## 安装

1. 卸载官方原版（签名不同，不能覆盖）。
   - 如果装过上一版补丁，可以直接覆盖，证书相同。
2. 安装 `NissanDA_Android16_patched.apk`。
3. 首次启动会提示「此应用专为旧版 Android 打造」，点「仍然运行」。
4. 授予电话状态、定位权限；需要强制横屏时再给「显示在其他应用上层」。

连接车机：手机与 DA 完成蓝牙配对 → 打开 App → 点右上角「投屏」→ 在系统投屏页选择 `NISSAN` / `DA` 开头的设备。

---

## 已知限制

- **Pixel / 原生 Android 16 无法投屏**：系统没有 WFD Source，任何 App 层改动都补不回来。
- **AQI 和生活指数缺失**：open-meteo 不提供这两个字段，空气质量显示空白，洗车指数固定 1 颗星占位。
- **页码圆点不显示**：原包 `centerWidget` 从未被填充，`bindDots` 实际是空操作；两页仍可正常滑动。
- **未做全机型验证**：布局按 `buttom_layout` 的 `above` 规则定位，`ViewPager` 高度用 `setMinimumHeight(84dp)` 兜底，不同 DPI 下可能有几 dp 偏差。

---

## 校验

```
SHA-256 7ce74d025fc37a01436402e06636f02ff31ab3a7c985cc5018493123b1060358
签名     v1 + v2 + v3
证书     CN=Nissan DA Android16 Patch（自签名）
```

---

## 目录

```
report/   逆向分析报告（协议、白名单、兼容性、代码审查）
docs/     架构图
patch/    新增类的 Java 源码 + 改动说明
```

---

## 说明

仅用于个人车机适配。原 APK 及其资源版权归原厂（Panasonic Automotive Systems Tianjin / 高德）所有，本仓库不包含原始 APK，只包含差异说明与新增代码。
