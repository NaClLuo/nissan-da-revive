.class public Lcom/autonavi/cvc/app/da/location/LocationHelper;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/tencent/map/geolocation/TencentLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field static mLocationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;


# instance fields
.field private curLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

.field gatherTime:J

.field private isInverse:Z

.field private locationListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

.field private preLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

.field private request:Lcom/tencent/map/geolocation/TencentLocationRequest;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->isInverse:Z

    .line 31
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->curLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .line 33
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->preLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->gatherTime:J

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->preLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/autonavi/cvc/app/da/location/LocationHelper;Lcom/autonavi/cvc/app/da/location/LocationInfo;)Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/location/LocationHelper;
    .param p1, "x1"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->preLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->curLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/autonavi/cvc/app/da/location/LocationHelper;Lcom/autonavi/cvc/app/da/location/LocationInfo;)Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/location/LocationHelper;
    .param p1, "x1"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->curLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/autonavi/cvc/app/da/location/LocationHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/location/LocationHelper;
    .locals 3

    .prologue
    .line 76
    sget-object v0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mLocationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lcom/autonavi/cvc/app/da/location/LocationHelper;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mLocationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    if-nez v0, :cond_0

    .line 79
    const-class v2, Lcom/autonavi/cvc/app/da/location/LocationHelper;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    new-instance v0, Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mLocationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .line 81
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    :cond_1
    sget-object v0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mLocationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 83
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private getInverse(DD)V
    .locals 9
    .param p1, "dLat"    # D
    .param p3, "dLon"    # D

    .prologue
    .line 156
    :try_start_0
    new-instance v3, Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-direct {v3}, Lcom/autonavi/cvc/app/da/location/LocationInfo;-><init>()V

    .line 157
    .local v3, "locationInforaw":Lcom/autonavi/cvc/app/da/location/LocationInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://vapi.fundrive.com.cn/rgc?lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&output=json&userid=&key=&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, "httpRequest":Ljava/lang/String;
    new-instance v1, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;

    move-object v2, p0

    move-wide v4, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/autonavi/cvc/app/da/location/LocationHelper$1;-><init>(Lcom/autonavi/cvc/app/da/location/LocationHelper;Lcom/autonavi/cvc/app/da/location/LocationInfo;DD)V

    invoke-static {v8, v1}, Lcom/autonavi/cvc/app/da/http/HttpConnect;->get(Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v3    # "locationInforaw":Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .end local v8    # "httpRequest":Ljava/lang/String;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    sget-object v1, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mContext:Landroid/content/Context;

    const-string v2, "\u6709\u5f02\u5e38"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initLocation()V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    sget-object v1, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/map/geolocation/TencentLocationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

    .line 141
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 142
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mLocationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->stop()V

    .line 90
    return-void
.end method


# virtual methods
.method public addListener(Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->curLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->curLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-interface {p1, v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;->onCityChange(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V

    goto :goto_0
.end method

.method public getLocationInfo()Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->curLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sput-object p1, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->initLocation()V

    .line 47
    return-void
.end method

.method public onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V
    .locals 12
    .param p1, "tencentLocation"    # Lcom/tencent/map/geolocation/TencentLocation;
    .param p2, "error"    # I
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 97
    if-nez p2, :cond_2

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 99
    .local v6, "gathertime":J
    new-instance v9, Landroid/location/Location;

    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 100
    .local v9, "location":Landroid/location/Location;
    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v2

    .line 101
    .local v2, "dLat":D
    invoke-interface {p1}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v4

    .line 102
    .local v4, "dLon":D
    invoke-virtual {v9, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 103
    invoke-virtual {v9, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 104
    iget-wide v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->gatherTime:J

    sub-long v0, v6, v0

    const-wide/16 v10, 0x2710

    cmp-long v0, v0, v10

    if-lez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/autonavi/cvc/app/da/data/DataStatics;->getInstance()Lcom/autonavi/cvc/app/da/data/DataStatics;

    move-result-object v0

    sget-object v1, Lcom/autonavi/cvc/app/da/location/LocationHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/cvc/app/da/data/DataStatics;->poiSave(Landroid/content/Context;DD)V

    .line 106
    iput-wide v6, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->gatherTime:J

    .line 108
    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->isInverse:Z

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInverse(DD)V

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;

    .line 114
    .local v8, "l":Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    invoke-interface {v8, v9}, Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0

    .line 120
    .end local v2    # "dLat":D
    .end local v4    # "dLon":D
    .end local v6    # "gathertime":J
    .end local v8    # "l":Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
    .end local v9    # "location":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method public onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "s1"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method

.method public removeListener(Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 149
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->request:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1, v2, p0}, Lcom/tencent/map/geolocation/TencentLocationManager;->requestLocationUpdates(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;)I

    move-result v0

    .line 150
    .local v0, "error":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationManager:Lcom/tencent/map/geolocation/TencentLocationManager;

    invoke-virtual {v0, p0}, Lcom/tencent/map/geolocation/TencentLocationManager;->removeUpdates(Lcom/tencent/map/geolocation/TencentLocationListener;)V

    .line 69
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelper;->locationListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    return-void
.end method
