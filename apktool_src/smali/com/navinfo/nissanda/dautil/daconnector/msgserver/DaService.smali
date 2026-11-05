.class public Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
.super Landroid/app/Service;
.source "DaService.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$OnePhoneStateListener;,
        Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;,
        Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;
    }
.end annotation


# static fields
.field public static final MAGIC_NUMBER:[B

.field public static final NAVI_DELAYED_TIME:I = 0xfa

.field public static final NAVI_REPORT_END:I = 0xbb8

.field public static final NAVI_REPORT_START:I = 0xbb9

.field public static final NAVI_START_DELAYED_TIME:I = 0x258

.field public static final SCREEN_CHANGED:I = 0x7d1

.field public static final SCREEN_DOWN:I = 0x7d3

.field public static final SCREEN_LOCKOFF:I = 0x7d2

.field public static final SCREEN_LOCKON:I = 0x7d4

.field public static final SEND_GPSTIME:I = 0xcc

.field public static final SMARTPHONE:I = 0xca

.field public static final STOP_CAST:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "DA"

.field public static daState:I

.field public static hasTopApp:Z

.field public static isCalling:Z

.field public static isHorizon:Z

.field public static serSocketConnected:Z


# instance fields
.field private daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

.field private final daServiceAidlInterface:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;

.field private final displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private gpsDataBean:Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

.field gps_log_name:Ljava/lang/String;

.field gps_log_state_name:Ljava/lang/String;

.field iMessageCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

.field private locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

.field log_file_name:Ljava/lang/String;

.field mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field phoneLockState:B

.field phoneRotationState:B

.field private final receiver:Landroid/content/BroadcastReceiver;

.field public serverHandler:Landroid/os/Handler;

.field socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

.field t:Z

.field time:J

.field topApp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->MAGIC_NUMBER:[B

    .line 102
    sput-boolean v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serSocketConnected:Z

    .line 110
    sput v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    .line 112
    sput-boolean v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->hasTopApp:Z

    .line 115
    sput-boolean v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isCalling:Z

    .line 145
    sput-boolean v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isHorizon:Z

    return-void

    .line 98
    :array_0
    .array-data 1
        0x1at
        0x1ft
        0x1at
        0x1ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xf

    .line 87
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 88
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    invoke-direct {v0}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;-><init>()V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    .line 92
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    .line 147
    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .line 156
    const-string v0, "ScreenLock_Log.txt"

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->log_file_name:Ljava/lang/String;

    .line 158
    const-string v0, "GPS_Log.txt"

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gps_log_name:Ljava/lang/String;

    .line 160
    const-string v0, "GPS_Log_state.txt"

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gps_log_state_name:Ljava/lang/String;

    .line 234
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 317
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    invoke-direct {v0}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;-><init>()V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gpsDataBean:Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    .line 318
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    .line 427
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daServiceAidlInterface:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;

    .line 478
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->iMessageCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    .line 856
    iput-byte v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->phoneLockState:B

    .line 857
    iput-byte v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->phoneRotationState:B

    .line 1242
    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    .line 1392
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->t:Z

    .line 1394
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    return-void
.end method

.method static synthetic access$000(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->updateProvider(ZZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->quitLauncher()V

    return-void
.end method

.method static synthetic access$1000(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->startApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendScreenState()V

    return-void
.end method

.method static synthetic access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gpsDataBean:Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gpsTimeResponse(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->initAmap()V

    return-void
.end method

.method static synthetic access$700(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->onCarConnect(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->connectService()V

    return-void
.end method

.method static synthetic access$900(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gpsTimer()V

    return-void
.end method

.method private connectService()V
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->server_startup()Z

    .line 1189
    :cond_0
    return-void
.end method

.method private deviceInfoResponse()[B
    .locals 25

    .prologue
    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->getDeviceInfo(Landroid/content/Context;)Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    move-result-object v8

    .line 763
    .local v8, "deviceInfoBean":Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;
    invoke-static/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v17

    .line 764
    .local v17, "pix":[I
    const/16 v21, 0x0

    aget v21, v17, v21

    const/16 v22, 0x1

    aget v22, v17, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 765
    const/16 v21, 0x0

    aget v20, v17, v21

    .line 766
    .local v20, "width":I
    const/16 v21, 0x1

    aget v10, v17, v21

    .line 771
    .local v10, "height":I
    :goto_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 773
    .local v14, "model":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->getLinuxVersion()Ljava/lang/String;

    move-result-object v11

    .line 776
    .local v11, "linuxVer":Ljava/lang/String;
    const/4 v4, 0x0

    .line 777
    .local v4, "blue":I
    const/4 v6, 0x0

    .line 778
    .local v6, "bluetoothMacBytes":[B
    sget-object v21, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    .line 779
    .local v18, "versionBytes":[B
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 780
    .local v15, "modelBytes":[B
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .line 781
    .local v12, "linuxVerBytes":[B
    invoke-virtual {v8}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->getBluetoothMac()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 782
    const/4 v9, 0x1

    .line 783
    .local v9, "hasBlueTooth":Z
    invoke-virtual {v8}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->getBluetoothMac()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 787
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;->getBluetoothMac()Ljava/lang/String;

    move-result-object v21

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "bluetoothMac.txt"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 789
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v13, v0, [B

    const/16 v21, 0x0

    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v13, v21

    .line 792
    .local v13, "linuxVerLength":[B
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v21, 0x0

    array-length v0, v15

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v16, v21

    .line 795
    .local v16, "modelLength":[B
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v19, v21

    .line 798
    .local v19, "versionLength":[B
    if-eqz v9, :cond_0

    .line 799
    array-length v4, v6

    .line 801
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v5, v0, [B

    const/16 v21, 0x0

    int-to-byte v0, v4

    move/from16 v22, v0

    aput-byte v22, v5, v21

    .line 804
    .local v5, "blueLength":[B
    if-eqz v9, :cond_5

    .line 805
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x9

    add-int/lit8 v21, v21, 0x1

    array-length v0, v12

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    array-length v0, v15

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    array-length v0, v6

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 811
    .local v7, "buf":[B
    :goto_3
    invoke-static/range {v20 .. v20}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 812
    invoke-static/range {v20 .. v20}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    .line 811
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    invoke-static {v10}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x4

    .line 814
    invoke-static {v10}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    .line 813
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    const/16 v21, 0x0

    const/16 v22, 0x8

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 816
    const/16 v21, 0x0

    const/16 v22, 0x9

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x9

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v13, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x9

    add-int/lit8 v22, v22, 0x1

    array-length v0, v12

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v12, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x9

    add-int/lit8 v22, v22, 0x1

    array-length v0, v12

    move/from16 v23, v0

    add-int v22, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 820
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x9

    add-int/lit8 v22, v22, 0x1

    array-length v0, v12

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x1

    array-length v0, v15

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v15, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 822
    if-eqz v9, :cond_1

    .line 823
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x9

    add-int/lit8 v22, v22, 0x1

    array-length v0, v12

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x1

    array-length v0, v15

    move/from16 v23, v0

    add-int v22, v22, v23

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v5, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    const/16 v21, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x9

    add-int/lit8 v22, v22, 0x1

    array-length v0, v12

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x1

    array-length v0, v15

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x1

    array-length v0, v6

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v6, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 828
    :cond_1
    return-object v7

    .line 768
    .end local v4    # "blue":I
    .end local v5    # "blueLength":[B
    .end local v6    # "bluetoothMacBytes":[B
    .end local v7    # "buf":[B
    .end local v9    # "hasBlueTooth":Z
    .end local v10    # "height":I
    .end local v11    # "linuxVer":Ljava/lang/String;
    .end local v12    # "linuxVerBytes":[B
    .end local v13    # "linuxVerLength":[B
    .end local v14    # "model":Ljava/lang/String;
    .end local v15    # "modelBytes":[B
    .end local v16    # "modelLength":[B
    .end local v18    # "versionBytes":[B
    .end local v19    # "versionLength":[B
    .end local v20    # "width":I
    :cond_2
    const/16 v21, 0x1

    aget v20, v17, v21

    .line 769
    .restart local v20    # "width":I
    const/16 v21, 0x0

    aget v10, v17, v21

    .restart local v10    # "height":I
    goto/16 :goto_0

    .line 785
    .restart local v4    # "blue":I
    .restart local v6    # "bluetoothMacBytes":[B
    .restart local v11    # "linuxVer":Ljava/lang/String;
    .restart local v12    # "linuxVerBytes":[B
    .restart local v14    # "model":Ljava/lang/String;
    .restart local v15    # "modelBytes":[B
    .restart local v18    # "versionBytes":[B
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "hasBlueTooth":Z
    goto/16 :goto_1

    .line 787
    :cond_4
    const-string v21, "null"

    goto/16 :goto_2

    .line 808
    .restart local v5    # "blueLength":[B
    .restart local v13    # "linuxVerLength":[B
    .restart local v16    # "modelLength":[B
    .restart local v19    # "versionLength":[B
    :cond_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x9

    add-int/lit8 v21, v21, 0x1

    array-length v0, v12

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v21, v21, 0x1

    array-length v0, v15

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    new-array v7, v0, [B

    .restart local v7    # "buf":[B
    goto/16 :goto_3
.end method

.method public static generateCommandService(I[B)[B
    .locals 7
    .param p0, "id"    # I
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 910
    const/4 v3, 0x0

    .line 911
    .local v3, "length":I
    if-eqz p1, :cond_0

    .line 912
    array-length v3, p1

    .line 914
    :cond_0
    add-int/lit8 v4, v3, 0x10

    new-array v2, v4, [B

    .line 916
    .local v2, "buf":[B
    sget-object v4, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->MAGIC_NUMBER:[B

    sget-object v5, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->MAGIC_NUMBER:[B

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v1

    .line 919
    .local v1, "bts":[B
    const/4 v4, 0x4

    array-length v5, v1

    invoke-static {v1, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 921
    add-int/lit8 v4, v3, 0x10

    invoke-static {v4}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v1

    .line 922
    const/16 v4, 0x8

    array-length v5, v1

    invoke-static {v1, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    if-lez v3, :cond_1

    .line 927
    const/16 v4, 0x10

    invoke-static {p1, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 929
    :cond_1
    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->BCC_Check([B)B

    move-result v0

    .line 930
    .local v0, "bcc_value":B
    const/16 v4, 0xc

    aput-byte v0, v2, v4

    .line 931
    return-object v2
.end method

.method private getCommandId([B)I
    .locals 4
    .param p1, "bs"    # [B

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 744
    new-array v0, v3, [B

    .line 745
    .local v0, "commandByte":[B
    array-length v1, v0

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 746
    invoke-static {v0, v2}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->byteArrayInt([BI)I

    move-result v1

    return v1
.end method

.method private getScreenState()B
    .locals 2

    .prologue
    .line 1215
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 1216
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private gpsTimeResponse(Ljava/lang/String;)[B
    .locals 14
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v10, 0x0

    .line 833
    const-string v11, "-"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 834
    .local v4, "dateTime":[Ljava/lang/String;
    aget-object v2, v4, v10

    .line 835
    .local v2, "date":Ljava/lang/String;
    aget-object v6, v4, v13

    .line 836
    .local v6, "time":Ljava/lang/String;
    new-array v5, v13, [B

    aput-byte v13, v5, v10

    .line 839
    .local v5, "gpsState":[B
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 840
    .local v3, "dateBytes":[B
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 841
    .local v8, "timeBytes":[B
    new-array v9, v13, [B

    array-length v11, v8

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 844
    .local v9, "timeLength":[B
    array-length v11, v8

    add-int/lit8 v11, v11, 0x2

    array-length v12, v3

    add-int/2addr v11, v12

    new-array v0, v11, [B

    .line 845
    .local v0, "buf":[B
    invoke-static {v5, v10, v0, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 846
    invoke-static {v9, v10, v0, v13, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 847
    const/4 v11, 0x2

    array-length v12, v8

    invoke-static {v8, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 848
    array-length v11, v8

    add-int/lit8 v11, v11, 0x2

    array-length v12, v3

    invoke-static {v3, v10, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .local v1, "builder":Ljava/lang/StringBuilder;
    array-length v11, v8

    :goto_0
    if-ge v10, v11, :cond_0

    aget-byte v7, v8, v10

    .line 851
    .local v7, "timeByte":B
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 850
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 853
    .end local v7    # "timeByte":B
    :cond_0
    return-object v0
.end method

.method private gpsTimer()V
    .locals 6

    .prologue
    .line 1398
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    .line 1399
    :goto_0
    iget-boolean v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->t:Z

    if-eqz v1, :cond_1

    .line 1400
    iget-wide v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 1401
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->t:Z

    goto :goto_0

    .line 1405
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    :goto_1
    iget-wide v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1413
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method

.method private initAmap()V
    .locals 2

    .prologue
    .line 210
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 211
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-static {}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInstance()Lcom/autonavi/cvc/app/da/location/LocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .line 213
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v0, p0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->addListener(Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;)V

    .line 214
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->init(Landroid/content/Context;)V

    .line 215
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->start()V

    .line 217
    :cond_0
    return-void
.end method

.method private initLockStateAndPhoneState()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 225
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 226
    return-void
.end method

.method private initSocket()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/16 v1, 0x270e

    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->iMessageCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    invoke-direct {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;-><init>(ILcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .line 275
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->connectService()V

    .line 276
    return-void
.end method

.method private judgeReceiveMessage([B)V
    .locals 34
    .param p1, "bs"    # [B

    .prologue
    .line 565
    invoke-direct/range {p0 .. p1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->verifyMsg([B)Z

    move-result v29

    if-nez v29, :cond_1

    .line 741
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 568
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getCommandId([B)I

    move-result v11

    .line 569
    .local v11, "commandId":I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ReceiveMessage:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getHexString([B)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 570
    .local v21, "logdata":Ljava/lang/String;
    const-string v29, "smartphone.txt"

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 571
    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    .line 587
    :sswitch_1
    const-string v20, "GPS\u72b6\u6001:"

    .line 588
    .local v20, "logGPS":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->gpsIsOPen(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 589
    new-instance v22, Landroid/os/Message;

    invoke-direct/range {v22 .. v22}, Landroid/os/Message;-><init>()V

    .line 590
    .local v22, "msg":Landroid/os/Message;
    const/16 v29, 0xcc

    move/from16 v0, v29

    move-object/from16 v1, v22

    iput v0, v1, Landroid/os/Message;->what:I

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 592
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\u5f00\u542f"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 598
    .end local v22    # "msg":Landroid/os/Message;
    :goto_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gps_log_state_name:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 573
    .end local v20    # "logGPS":Ljava/lang/String;
    :sswitch_2
    invoke-static {v11}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v22

    .line 574
    .local v22, "msg":[B
    const/16 v29, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    .line 576
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 577
    .local v24, "payload":[B
    const/16 v29, 0x10

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v24

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 579
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    move-object/from16 v29, v0

    const/16 v30, 0x2a

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;->receiveMessage(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 580
    :catch_0
    move-exception v18

    .line 581
    .local v18, "e":Landroid/os/RemoteException;
    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 594
    .end local v18    # "e":Landroid/os/RemoteException;
    .end local v22    # "msg":[B
    .end local v24    # "payload":[B
    .restart local v20    # "logGPS":Ljava/lang/String;
    :cond_2
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v24, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v24, v29

    .line 595
    .restart local v24    # "payload":[B
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 596
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\u5173\u95ed"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 602
    .end local v20    # "logGPS":Ljava/lang/String;
    .end local v24    # "payload":[B
    :sswitch_3
    const/16 v29, 0x5

    invoke-direct/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->deviceInfoResponse()[B

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    goto/16 :goto_0

    .line 605
    :sswitch_4
    const/16 v29, 0xa

    invoke-static/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v24

    .line 606
    .restart local v24    # "payload":[B
    const/16 v29, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 607
    const/16 v29, 0x10

    aget-byte v25, p1, v29

    .line 608
    .local v25, "state":B
    packed-switch v25, :pswitch_data_0

    goto/16 :goto_0

    .line 610
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->setDaState(I)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->stopHorizontalService()V

    .line 612
    sget v29, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0xbb8

    const-wide/16 v32, 0xfa

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 617
    :pswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->setDaState(I)V

    .line 618
    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->updateProvider(ZZZ)V

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->quitLauncher()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeInfos()Ljava/util/List;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/source/HomeManager;->switchHome(Landroid/content/Context;)V

    .line 622
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "\u5de5\u4f5c\u72b6\u6001\u53d8\u5316\uff1amirror\u72b6\u6001\uff1b\u9501\u5c4f\u72b6\u6001:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-direct/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getScreenState()B

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "("

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ")\r\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->log_file_name:Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 624
    const-string v29, "DA"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "NET_MESSAGE_WORK_MODE_CHANGE:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-direct/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendScreenState()V

    goto/16 :goto_0

    .line 628
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->setDaState(I)V

    .line 629
    const/16 v29, 0x1

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->updateProvider(ZZZ)V

    .line 630
    invoke-direct/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendScreenState()V

    .line 631
    const-wide/16 v30, 0x1f4

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->startMainIntent(J)V

    goto/16 :goto_0

    .line 646
    .end local v24    # "payload":[B
    .end local v25    # "state":B
    :sswitch_5
    const/16 v29, 0x10

    aget-byte v15, p1, v29

    .line 647
    .local v15, "daWifiMacLength":I
    new-array v14, v15, [B

    .line 648
    .local v14, "daWifiMac":[B
    const/16 v29, 0x11

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    const/16 v27, 0x0

    .line 651
    .local v27, "wifiMac":Ljava/lang/String;
    :try_start_1
    new-instance v28, Ljava/lang/String;

    const-string v29, "utf-8"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v14, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v27    # "wifiMac":Ljava/lang/String;
    .local v28, "wifiMac":Ljava/lang/String;
    move-object/from16 v27, v28

    .line 655
    .end local v28    # "wifiMac":Ljava/lang/String;
    .restart local v27    # "wifiMac":Ljava/lang/String;
    :goto_2
    add-int/lit8 v29, v15, 0x10

    add-int/lit8 v29, v29, 0x1

    aget-byte v10, p1, v29

    .line 656
    .local v10, "carType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setCarType(I)V

    .line 657
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v19, "intent":Landroid/content/Intent;
    const-string v29, "com.autonavi.umengCartype"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v29, "carType"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 661
    add-int/lit8 v29, v15, 0x10

    add-int/lit8 v29, v29, 0x2

    aget-byte v13, p1, v29

    .line 662
    .local v13, "daBtMacLength":I
    new-array v12, v13, [B

    .line 663
    .local v12, "daBtMac":[B
    add-int/lit8 v29, v15, 0x13

    const/16 v30, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v12, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    :try_start_2
    new-instance v17, Ljava/lang/String;

    const-string v29, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v12, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .local v17, "dtMac":Ljava/lang/String;
    goto/16 :goto_0

    .line 652
    .end local v10    # "carType":I
    .end local v12    # "daBtMac":[B
    .end local v13    # "daBtMacLength":I
    .end local v17    # "dtMac":Ljava/lang/String;
    .end local v19    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v18

    .line 653
    .local v18, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 667
    .end local v18    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "carType":I
    .restart local v12    # "daBtMac":[B
    .restart local v13    # "daBtMacLength":I
    .restart local v19    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v18

    .line 668
    .restart local v18    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 673
    .end local v10    # "carType":I
    .end local v12    # "daBtMac":[B
    .end local v13    # "daBtMacLength":I
    .end local v14    # "daWifiMac":[B
    .end local v15    # "daWifiMacLength":I
    .end local v18    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v19    # "intent":Landroid/content/Intent;
    .end local v27    # "wifiMac":Ljava/lang/String;
    :sswitch_6
    const/16 v29, 0x12

    invoke-static/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v6

    .line 674
    .local v6, "bt":[B
    const/16 v29, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    goto/16 :goto_0

    .line 677
    .end local v6    # "bt":[B
    :sswitch_7
    const/16 v29, 0x15

    invoke-static/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v7

    .line 678
    .local v7, "bt2":[B
    const/16 v29, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 679
    sget-boolean v29, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isHorizon:Z

    if-nez v29, :cond_3

    .line 680
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->startHorizontalService(Z)V

    goto/16 :goto_0

    .line 682
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->stopHorizontalService()V

    goto/16 :goto_0

    .line 686
    .end local v7    # "bt2":[B
    :sswitch_8
    const/16 v29, 0x25

    invoke-static/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v8

    .line 687
    .local v8, "bt4":[B
    const/16 v29, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 688
    const/16 v29, 0x1

    const/16 v30, 0x10

    aget-byte v30, p1, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 689
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->prev()V

    goto/16 :goto_0

    .line 692
    :cond_4
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->next()V

    goto/16 :goto_0

    .line 697
    .end local v8    # "bt4":[B
    :sswitch_9
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 698
    .local v26, "stream":[B
    const/16 v29, 0x10

    const/16 v30, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move-object/from16 v2, v26

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 699
    const/16 v29, 0x1e

    invoke-static/range {v29 .. v29}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->intToBytes(I)[B

    move-result-object v23

    .line 700
    .local v23, "msgId":[B
    const/16 v29, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->byteArrayInt([BI)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setScreenWidth(I)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-object/from16 v29, v0

    const/16 v30, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->byteArrayInt([BI)I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setScreenHeight(I)V

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setScreenStream(Z)V

    .line 704
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v9, v0, [B

    .line 705
    .local v9, "btss":[B
    invoke-static/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->gpsIsOPen(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 706
    const/16 v29, 0x0

    const/16 v30, 0x0

    aput-byte v30, v9, v29

    .line 707
    const/16 v29, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 713
    :goto_3
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->getScreenWidth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->getScreenHeight()I

    move-result v31

    invoke-virtual/range {v29 .. v31}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->setScreenStream(II)V

    goto/16 :goto_0

    .line 709
    :cond_5
    const/16 v29, 0x0

    const/16 v30, 0x1

    aput-byte v30, v9, v29

    .line 710
    const/16 v29, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    goto :goto_3

    .line 723
    .end local v9    # "btss":[B
    .end local v23    # "msgId":[B
    .end local v26    # "stream":[B
    :sswitch_a
    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 724
    .local v16, "dd":[B
    const/16 v29, 0x0

    const/16 v30, 0x10

    aget-byte v30, p1, v30

    aput-byte v30, v16, v29

    .line 725
    const/16 v29, 0x1

    const/16 v30, 0x11

    aget-byte v30, p1, v30

    aput-byte v30, v16, v29

    .line 726
    const/16 v29, 0x2

    const/16 v30, 0x12

    aget-byte v30, p1, v30

    aput-byte v30, v16, v29

    .line 727
    const/16 v29, 0x3

    const/16 v30, 0x13

    aget-byte v30, p1, v30

    aput-byte v30, v16, v29

    goto/16 :goto_0

    .line 571
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0xa -> :sswitch_4
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x11 -> :sswitch_5
        0x12 -> :sswitch_6
        0x15 -> :sswitch_7
        0x1e -> :sswitch_9
        0x1f -> :sswitch_a
        0x21 -> :sswitch_0
        0x25 -> :sswitch_8
        0x2a -> :sswitch_2
    .end sparse-switch

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private judgeScreenState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1238
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1239
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private onCarConnect(Z)V
    .locals 3
    .param p1, "isCarConnected"    # Z

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    invoke-virtual {v1, p1}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setConnected(Z)V

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCarConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    if-eqz v1, :cond_0

    .line 1224
    :try_start_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    invoke-interface {v1, p1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;->onCarConnect(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1225
    :catch_0
    move-exception v0

    .line 1226
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private quitLauncher()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.navinfo.panasonic.launcherGone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method private receiveMessage(I[B)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "playload"    # [B

    .prologue
    .line 452
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    if-eqz v1, :cond_0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    invoke-interface {v1, p1, p2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;->receiveMessage(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "navinfo.da.closeservice"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 942
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 943
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 944
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 945
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 946
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 947
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 948
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.autonavi.cvc.hud.NaviStart"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 950
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.autonavi.cvc.hud.NaviEnd"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 951
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.navinfo.panasonic.quitsmartphonestate"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 952
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 953
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 954
    return-void
.end method

.method private sendScreenState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 861
    :try_start_0
    sget-boolean v4, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serSocketConnected:Z

    if-eqz v4, :cond_2

    .line 862
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getScreenState()B

    move-result v2

    .line 863
    .local v2, "lock":B
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 864
    .local v0, "bs":[B
    sget v4, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    if-eqz v4, :cond_2

    .line 865
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->judgeScreenState(Landroid/content/Context;)I

    move-result v3

    .line 866
    .local v3, "rotation":I
    const/4 v4, 0x0

    aput-byte v2, v0, v4

    .line 867
    if-eq v3, v5, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 868
    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v0, v4

    .line 872
    :goto_0
    iget-byte v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->phoneLockState:B

    const/4 v5, 0x0

    aget-byte v5, v0, v5

    if-ne v4, v5, :cond_1

    iget-byte v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->phoneRotationState:B

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    if-eq v4, v5, :cond_2

    .line 873
    :cond_1
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    iput-byte v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->phoneLockState:B

    .line 874
    const/4 v4, 0x1

    aget-byte v4, v0, v4

    iput-byte v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->phoneRotationState:B

    .line 875
    const/16 v4, 0x14

    invoke-virtual {p0, v4, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 883
    .end local v0    # "bs":[B
    .end local v2    # "lock":B
    .end local v3    # "rotation":I
    :cond_2
    :goto_1
    return-void

    .line 870
    .restart local v0    # "bs":[B
    .restart local v2    # "lock":B
    .restart local v3    # "rotation":I
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 879
    .end local v0    # "bs":[B
    .end local v2    # "lock":B
    .end local v3    # "rotation":I
    :catch_0
    move-exception v1

    .line 881
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1450
    const/4 v4, 0x0

    .line 1452
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1456
    :goto_0
    if-nez v4, :cond_1

    .line 1473
    :cond_0
    :goto_1
    return-void

    .line 1453
    :catch_0
    move-exception v2

    .line 1454
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1459
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1460
    .local v6, "resolveIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1461
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1462
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1463
    .local v7, "resolveinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1464
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_0

    .line 1465
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1466
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1468
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1470
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1471
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private startMainIntent(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$6;

    invoke-direct {v1, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$6;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1447
    return-void
.end method

.method private updateProvider(ZZZ)V
    .locals 1
    .param p1, "car_connect"    # Z
    .param p2, "car_drive"    # Z
    .param p3, "screen"    # Z

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    invoke-virtual {v0, p3}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setScreenStream(Z)V

    .line 1233
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->onCarConnect(Z)V

    .line 1234
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    invoke-virtual {v0, p2}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setCarDrived(Z)V

    .line 1235
    return-void
.end method

.method private verifyMsg([B)Z
    .locals 2
    .param p1, "bs"    # [B

    .prologue
    .line 750
    const/16 v1, 0xc

    aget-byte v0, p1, v1

    .line 751
    .local v0, "verify":B
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->BCC_Check([B)B

    move-result v1

    if-eq v0, v1, :cond_0

    .line 752
    const/4 v1, 0x0

    .line 754
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 964
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->initAmap()V

    .line 423
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daServiceAidlInterface:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;

    return-object v0
.end method

.method public onCityChange(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 0
    .param p1, "locationInfo"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 1389
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 167
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 168
    .local v4, "pm":Landroid/os/PowerManager;
    const/16 v5, 0x1a

    const-string v6, "dawakelockservice"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->initLockStateAndPhoneState()V

    .line 172
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->registerReceiver()V

    .line 174
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->initSocket()V

    .line 176
    iget-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daInfo:Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getLinuxVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setLinuxVersion(Ljava/lang/String;)V

    .line 177
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDisplayMetrics(Landroid/content/Context;)V

    .line 178
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->init(Landroid/content/Context;)V

    .line 179
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 180
    .local v0, "message":Landroid/os/Message;
    const/16 v5, 0x7d2

    iput v5, v0, Landroid/os/Message;->what:I

    .line 181
    iget-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 182
    invoke-static {}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getInstance()Lcom/autonavi/cvc/app/da/source/HomeManager;

    move-result-object v5

    iput-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    .line 183
    iget-object v6, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    invoke-virtual {v6, v7, v5}, Lcom/autonavi/cvc/app/da/source/HomeManager;->init(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V

    .line 184
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 185
    iget-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v5, :cond_0

    .line 186
    iget-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 188
    :cond_0
    new-instance v5, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;

    invoke-direct {v5, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    invoke-virtual {v5}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->start()V

    .line 192
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    .local v2, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 195
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "Nissan"

    .line 196
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "\u4e92\u8054\u670d\u52a1"

    .line 197
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 198
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 199
    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f02002c

    .line 201
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 203
    .local v1, "notification":Landroid/app/Notification;
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->startForeground(ILandroid/app/Notification;)V

    .line 204
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    const-string v0, "service onDestroy"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 305
    :cond_0
    invoke-direct {p0, v1, v1, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->updateProvider(ZZZ)V

    .line 307
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->removeKeyDownListenr(Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;)V

    .line 310
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 314
    return-void
.end method

.method public onKeyEvent(Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V
    .locals 3
    .param p1, "touchevent"    # Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;

    .prologue
    .line 968
    if-eqz p1, :cond_0

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;->getTouchEvent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;->getTouchEvent()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 982
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 972
    :pswitch_1
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "VUI_NAVIGATION_ZOOM_IN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 975
    :pswitch_2
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "VUI_NAVIGATION_ZOOM_OUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 978
    :pswitch_3
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->startApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 970
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1362
    if-eqz p1, :cond_0

    .line 1363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1364
    .local v0, "curTime":J
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gpsDataBean:Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    invoke-virtual {v2, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->setDateTime(J)V

    .line 1365
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gpsDataBean:Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->setGpsDateTime(J)V

    .line 1366
    iget-boolean v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->t:Z

    if-nez v2, :cond_1

    .line 1367
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->t:Z

    .line 1368
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$5;

    invoke-direct {v3, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$5;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1374
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1379
    .end local v0    # "curTime":J
    :cond_0
    :goto_0
    return-void

    .line 1376
    .restart local v0    # "curTime":J
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    goto :goto_0
.end method

.method public onLocationInfoChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 0
    .param p1, "locationInfo"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 1384
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendScreenState()V

    .line 959
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 281
    const-string v1, "DA"

    const-string v2, "service onStartCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 285
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 286
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    new-instance v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$OnePhoneStateListener;

    invoke-direct {v1, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$OnePhoneStateListener;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 287
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    move-result-object v1

    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->startInputEventService(Landroid/content/Context;)V

    .line 288
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->addKeyDownListener(Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;)V

    .line 289
    const/4 v1, 0x1

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public sendSerMsg(I[B)Z
    .locals 5
    .param p1, "commandId"    # I
    .param p2, "payload"    # [B

    .prologue
    const/4 v2, 0x0

    .line 886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bruce log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 888
    :try_start_0
    sget-boolean v3, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serSocketConnected:Z

    if-eqz v3, :cond_0

    .line 889
    invoke-static {p1, p2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->generateCommandService(I[B)[B

    move-result-object v0

    .line 890
    .local v0, "bb":[B
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-virtual {v3, v0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->send([B)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 896
    .end local v0    # "bb":[B
    :cond_0
    :goto_0
    return v2

    .line 892
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method setDaState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 462
    packed-switch p1, :pswitch_data_0

    .line 475
    :cond_0
    :goto_0
    sput p1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    .line 476
    return-void

    .line 465
    :pswitch_0
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 462
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startHorizontalService(Z)V
    .locals 3
    .param p1, "isMirror"    # Z

    .prologue
    .line 1203
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1204
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "orientation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    const-string v1, "isMirror"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1206
    invoke-virtual {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1207
    const/4 v1, 0x1

    sput-boolean v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isHorizon:Z

    .line 1208
    return-void
.end method

.method public stopHorizontalService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1193
    sput-boolean v3, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->hasTopApp:Z

    .line 1194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1195
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.autonavi.horizontalStop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    const-string v1, "name"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1197
    invoke-virtual {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1198
    sput-boolean v3, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isHorizon:Z

    .line 1199
    return-void
.end method

.method public translateMsg([B)V
    .locals 5
    .param p1, "bs"    # [B

    .prologue
    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, "lastLen":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 552
    array-length v3, p1

    add-int/lit8 v4, v1, 0x8

    if-ge v3, v4, :cond_1

    .line 562
    :cond_0
    return-void

    .line 555
    :cond_1
    add-int/lit8 v3, v1, 0x8

    invoke-static {p1, v3}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->byteArrayInt([BI)I

    move-result v2

    .line 556
    .local v2, "len":I
    new-array v0, v2, [B

    .line 557
    .local v0, "data":[B
    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    add-int/2addr v1, v2

    .line 559
    invoke-direct {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->judgeReceiveMessage([B)V

    goto :goto_0
.end method
