# 免责声明 / Disclaimer

## 中文

**1. 非官方项目**

本仓库与日产（Nissan）、其车载系统供应商、高德（AutoNavi）及任何关联公司均无关系，未获其授权、认可或支持。文中出现的「轩逸」「DA」「Mobile App」等，仅用于指代所讨论的产品，相关商标归各自权利人所有。

**2. 仓库里有什么**

这是一个**私有**仓库，性质是作者个人设备的修改记录与备份，不是公开发布的项目。内容包括：

- 原版 App 的**反编译产物**：`apktool_src/` 下的 smali、`res/`、`assets/`，以及 `lib/` 里各 ABI 的原生库；
- 作者自行编写的 Java 类（`patch/java`）和构建脚本；
- 分析文档。

也就是说，仓库中**含有原厂的代码与资源**，其著作权归原权利人所有。本仓库不附带、也不构成对原作品的任何许可。仓库内没有原始 APK 文件本身（`da.apk` 未入库），但你仍需**自行合法持有该 App 的一份副本**，才能使用这里的工程。

**3. 用途限制**

本项目唯一的目的是**互操作性修复**——让已经合法拥有的软件，在其所有者自己的新设备上继续运行。因此：

- 请保持仓库为私有，不要 fork 到公开位置、不要改成 public；
- 不要分发、售卖构建产物，不要上传到应用商店、网盘、论坛、群聊等任何公开渠道；
- 不要用于商业用途或任何形式的再发行。

一旦公开传播，就不再属于「个人使用」，可能构成对原作品的侵权。

**4. 风险自负**

修改应用行为、重新签名安装、授予悬浮窗/定位等权限，可能带来以下后果，作者不承担任何责任：

- 车机连接异常、投屏中断、方向盘按键失效；
- 手机发热、耗电增加、与其他应用冲突；
- 车辆保修条款受影响；
- 数据丢失或设备损坏。

**5. 无担保**

本仓库内容按「现状」提供，不附带任何明示或暗示的担保，包括但不限于适销性、特定用途适用性与非侵权担保。因使用或无法使用本项目产生的任何直接、间接、附带或后果性损失，作者概不负责。

**6. 遵守当地法律**

不同国家和地区对软件逆向、修改与互操作性的规定不同（例如美国 DMCA §1201 的互操作性例外、欧盟《软件指令》第 6 条）。请在动手前确认你所在地区的法律允许此类行为。若不允许，请勿使用本仓库。

**7. 下架请求**

若权利人认为本仓库内容侵犯其权益，请通过 Issue 或仓库所有者邮箱联系，作者将在核实后立即删除仓库或相关内容。

---

## English

This is an **unofficial, private** record of a personal interoperability fix. It is not affiliated with, endorsed by, or supported by Nissan, its automotive electronics suppliers, or AutoNavi. All trademarks belong to their respective owners.

**This repository contains decompiled output of the original application** — smali, resources, assets and native libraries under `apktool_src/` — whose copyright remains with the original rights holders. It does not grant any licence to that material. The original APK file itself is not included; you must already own a lawful copy of the application to make use of this project.

The sole purpose is to keep software you already own running on hardware you own. Keep this repository private. Do not fork it publicly, do not redistribute, sell, or publish any build produced from it, and do not use it commercially.

Everything is provided **AS IS**, without warranty of any kind. The author is not liable for any damage, data loss, warranty voidance, or legal consequence arising from its use. Reverse engineering and modification rules vary by jurisdiction; check your local law before proceeding.

To request removal, open an issue.
