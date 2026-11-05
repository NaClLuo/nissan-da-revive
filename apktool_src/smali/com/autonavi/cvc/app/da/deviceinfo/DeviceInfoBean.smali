.class public Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;
.super Ljava/lang/Object;
.source "DeviceInfoBean.java"


# instance fields
.field private IMEI:Ljava/lang/String;

.field private bluetoothMac:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private projectId:Ljava/lang/String;

.field private softWareVersion:Ljava/lang/String;

.field private system:Ljava/lang/String;

.field private system_version:Ljava/lang/String;

.field private wifiMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetoothMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->bluetoothMac:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftWareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->softWareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->system:Ljava/lang/String;

    return-object v0
.end method

.method public getSystem_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->system_version:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->wifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public setBluetoothMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "bluetoothMac"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->bluetoothMac:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->brand:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->channel:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .param p1, "iMEI"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->IMEI:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->model:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->projectId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSoftWareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "softWareVersion"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->softWareVersion:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSystem(Ljava/lang/String;)V
    .locals 0
    .param p1, "system"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->system:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSystem_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "system_version"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->system_version:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setWifiMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "wifiMac"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->wifiMac:Ljava/lang/String;

    .line 93
    return-void
.end method
