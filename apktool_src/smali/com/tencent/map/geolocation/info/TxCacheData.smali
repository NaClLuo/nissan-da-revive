.class public Lcom/tencent/map/geolocation/info/TxCacheData;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field private cellid:Ljava/lang/String;

.field private freshTime:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->cellid:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->type:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->location:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->freshTime:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getCellid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->cellid:Ljava/lang/String;

    return-object v0
.end method

.method public getFreshTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->freshTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->location:Ljava/lang/String;

    const-string v1, "Tx?c2nt_"

    invoke-static {v0, v1}, Lct/dh;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCellid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->cellid:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setFreshTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->freshTime:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->location:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tencent/map/geolocation/info/TxCacheData;->type:Ljava/lang/String;

    .line 35
    return-void
.end method
