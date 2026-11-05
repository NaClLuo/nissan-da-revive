.class public Lcom/autonavi/cvc/app/da/data/DataStatics;
.super Ljava/lang/Object;
.source "DataStatics.java"


# static fields
.field public static final URL_FLOWUI_NETWORK_BASE:Ljava/lang/String; = "http://115.159.152.52/weuinetwork"

.field public static final URL_FLOWUI_NETWORK_POI_SAVE:Ljava/lang/String; = "http://115.159.152.52/weuinetwork/position/save"

.field public static final URL_FLOWUI_NETWORK_STARTTIMES:Ljava/lang/String; = "http://115.159.152.52/weuinetwork/usernetwork/savestarttimes"

.field private static instance:Lcom/autonavi/cvc/app/da/data/DataStatics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/autonavi/cvc/app/da/data/DataStatics;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/data/DataStatics;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/data/DataStatics;->instance:Lcom/autonavi/cvc/app/da/data/DataStatics;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/data/DataStatics;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/autonavi/cvc/app/da/data/DataStatics;->instance:Lcom/autonavi/cvc/app/da/data/DataStatics;

    return-object v0
.end method


# virtual methods
.method public firstTimeStatics(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "ANDROID_ID":Ljava/lang/String;
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 35
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 36
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 37
    .local v3, "networkType":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 39
    const-string v3, "0"

    .line 44
    :cond_0
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "userid"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v5, "deviceid"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v5, "flg"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v5, "networktype"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v5, "devicetype"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v5, "projectname"

    const-string v6, "nissan"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v5, "http://115.159.152.52/weuinetwork/usernetwork/savestarttimes"

    new-instance v6, Lcom/autonavi/cvc/app/da/data/DataStatics$1;

    invoke-direct {v6, p0}, Lcom/autonavi/cvc/app/da/data/DataStatics$1;-><init>(Lcom/autonavi/cvc/app/da/data/DataStatics;)V

    invoke-static {v5, v4, v6}, Lcom/autonavi/cvc/app/da/http/HttpConnect;->post(Ljava/lang/String;Ljava/util/Map;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    .line 62
    return-void

    .line 40
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_0

    .line 41
    const-string v3, "1"

    goto :goto_0
.end method

.method public poiSave(Landroid/content/Context;DD)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lat"    # D
    .param p4, "lng"    # D

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "ANDROID_ID":Ljava/lang/String;
    const-string v2, "userid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v2, "deviceid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v2, "lng"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "lat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "height"

    const-string v3, "0.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "speed"

    const-string v3, "0.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "bearing"

    const-string v3, "0.0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "collecttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "startflg"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "http://115.159.152.52/weuinetwork/position/save"

    new-instance v3, Lcom/autonavi/cvc/app/da/data/DataStatics$2;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/data/DataStatics$2;-><init>(Lcom/autonavi/cvc/app/da/data/DataStatics;)V

    invoke-static {v2, v1, v3}, Lcom/autonavi/cvc/app/da/http/HttpConnect;->post(Ljava/lang/String;Ljava/util/Map;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    goto :goto_0
.end method
