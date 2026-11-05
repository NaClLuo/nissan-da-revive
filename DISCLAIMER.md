# 免责声明 / Disclaimer

## 中文

**1. 非官方项目**

本仓库与日产（Nissan）、马瑞利/松下汽车电子、高德（AutoNavi）及任何关联公司均无关系，未获其授权、认可或支持。文中所称「轩逸」「DA」「Mobile App」等仅为指代原产品的描述性用法，相关商标归各自权利人所有。

**2. 不含原版软件**

本仓库**不包含**原版 APK、其反编译产物、资源文件或任何原厂代码。仓库内只有：

- 作者自行编写的 Java 类（`patch/java`）；
- 对原版 smali 的**差异描述**（`patches/*.patch`，unified diff 形式）；
- 构建脚本与文档。

使用本仓库的前提是：**你已合法拥有该 App 的一份副本**（例如自己车机配套、或从官方渠道获取）。仓库不提供、也不引导获取该副本。

**3. 用途限制**

本项目的唯一目的是**互操作性修复**——让用户已经拥有的软件在其自己的新设备上继续运行。请勿将构建产物用于商业用途、二次分发、售卖，或上传至任何应用商店、网盘、论坛等公开渠道。

**4. 风险自负**

修改系统应用行为、重新签名安装、授予悬浮窗/定位等权限，均可能带来以下后果，作者不承担任何责任：

- 车机连接异常、投屏中断、方向盘按键失效；
- 手机发热、耗电增加、与其他应用冲突；
- 车辆保修条款受影响；
- 数据丢失或设备损坏。

**5. 无担保**

本仓库内容按「现状」提供，不附带任何明示或暗示的担保，包括但不限于适销性、特定用途适用性与非侵权担保。因使用或无法使用本项目产生的任何直接、间接、附带或后果性损失，作者概不负责。

**6. 遵守当地法律**

不同国家和地区对软件逆向、修改与互操作性的规定不同（例如美国 DMCA §1201 的互操作性例外、欧盟《软件指令》第 6 条）。请在动手前确认你所在地区的法律允许此类行为。若不允许，请勿使用本仓库。

**7. 下架请求**

若权利人认为本仓库内容侵犯其权益，请通过 Issue 或仓库所有者邮箱联系，作者将在核实后移除相关内容。

---

## English

This is an **unofficial** interoperability patch. It is not affiliated with, endorsed by, or supported by Nissan, Panasonic Automotive, Marelli, or AutoNavi. All trademarks belong to their respective owners.

This repository **does not contain** the original APK, its decompiled output, its resources, or any proprietary code. It contains only original Java sources written by the author, a textual diff describing the changes, and build scripts.

You may use it **only if you already own a lawful copy** of the application. The project exists solely to keep software you own running on hardware you own. Do not redistribute, sell, or publish any build produced from it.

Everything is provided **AS IS**, without warranty of any kind. The author is not liable for any damage, data loss, warranty voidance, or legal consequence arising from its use. Reverse engineering and modification rules vary by jurisdiction; check your local law before proceeding.

To request removal, open an issue.
