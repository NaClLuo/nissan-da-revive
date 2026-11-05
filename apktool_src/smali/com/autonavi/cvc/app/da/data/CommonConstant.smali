.class public Lcom/autonavi/cvc/app/da/data/CommonConstant;
.super Ljava/lang/Object;
.source "CommonConstant.java"


# static fields
.field public static DADBPath:Ljava/lang/String; = null

.field public static DA_UPGRADE:Ljava/lang/String; = null

.field public static final Log_flag:Z = false

.field public static final SDCardPath:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "DA"

.field public static airQuality:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static airQualityLowDPI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static carwashIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static gpsDataBean:Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x1

    .line 16
    const-string v0, "http://wdapp.navinfo.com/downloadfileserver/apk/main/common/mobile_app.apk"

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DA_UPGRADE:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getSdcardPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->SDCardPath:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    invoke-direct {v0}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->gpsDataBean:Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    const-string v1, "\u9002\u5b9c"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    const-string v1, "\u4e0d\u5b9c"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    const-string v1, "\u8f83\u4e0d\u5b9c"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    const-string v1, "\u8f83\u9002\u5b9c"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->carwashIndex:Ljava/util/Map;

    const-string v1, ""

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQuality:Ljava/util/Map;

    .line 55
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQuality:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQuality:Ljava/util/Map;

    const-string v1, "\u8f7b\u5ea6"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQuality:Ljava/util/Map;

    const-string v1, "\u4f18"

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQualityLowDPI:Ljava/util/Map;

    .line 62
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQualityLowDPI:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQualityLowDPI:Ljava/util/Map;

    const-string v1, "\u8f7b\u5ea6"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->airQualityLowDPI:Ljava/util/Map;

    const-string v1, "\u4f18"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
