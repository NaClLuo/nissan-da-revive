.class public Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;
.super Ljava/lang/Object;
.source "DeviceInfoUtils.java"


# static fields
.field private static deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceInfo(Landroid/content/Context;)Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 19
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 20
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 21
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    if-nez v3, :cond_1

    .line 22
    new-instance v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    invoke-direct {v3}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;-><init>()V

    sput-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    .line 23
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    const-string v4, "1001"

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setProjectId(Ljava/lang/String;)V

    .line 24
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 26
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 28
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setIMEI(Ljava/lang/String;)V

    .line 33
    :cond_0
    :goto_0
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setBrand(Ljava/lang/String;)V

    .line 34
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setModel(Ljava/lang/String;)V

    .line 35
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_address"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setBluetoothMac(Ljava/lang/String;)V

    .line 36
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setWifiMac(Ljava/lang/String;)V

    .line 37
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    const-string v4, "L12M"

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setChannel(Ljava/lang/String;)V

    .line 38
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    const-string v4, "android"

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setSystem(Ljava/lang/String;)V

    .line 39
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setSystem_version(Ljava/lang/String;)V

    .line 40
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    const-string v4, "1.2.0"

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setSoftWareVersion(Ljava/lang/String;)V

    .line 42
    :cond_1
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    return-object v3

    .line 31
    :cond_2
    sget-object v3, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->deviceInfoBean:Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->setIMEI(Ljava/lang/String;)V

    goto :goto_0
.end method
