.class public final Lcom/tencent/map/geolocation/TencentLocationRequest;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static final REQUEST_LEVEL_ADMIN_AREA:I = 0x3

.field public static final REQUEST_LEVEL_FORMATTED_ADDRESS:I = 0x5

.field public static final REQUEST_LEVEL_GEO:I = 0x0

.field public static final REQUEST_LEVEL_GLOBAL_ADMIN_AREA:I = 0x7

.field public static final REQUEST_LEVEL_NAME:I = 0x1

.field public static final REQUEST_LEVEL_POI:I = 0x4


# instance fields
.field private a:J

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:J

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/tencent/map/geolocation/TencentLocationRequest;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 64
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    .line 65
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 66
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 67
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:J

    .line 68
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:I

    .line 69
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    .line 70
    iget-object v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    .line 72
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public static copy(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationRequest;)V
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 88
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    .line 89
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 90
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 91
    iget-wide v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:J

    iput-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:J

    .line 92
    iget v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:I

    iput v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:I

    .line 93
    iget-boolean v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    iput-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    .line 94
    iget-object v0, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 96
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public static create()Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 113
    new-instance v0, Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-direct {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;-><init>()V

    .line 114
    const-wide/16 v2, 0x2710

    iput-wide v2, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 115
    iput v4, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    .line 116
    iput-boolean v4, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 118
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->f:J

    .line 119
    const v1, 0x7fffffff

    iput v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->g:I

    .line 120
    iput-boolean v4, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    .line 121
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    .line 122
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    .line 123
    return-object v0
.end method


# virtual methods
.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getInterval()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    return-wide v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    if-nez v0, :cond_0

    .line 253
    const-string v0, ""

    .line 255
    :cond_0
    return-object v0
.end method

.method public final getQQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestLevel()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    return v0
.end method

.method public final isAllowCache()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    return v0
.end method

.method public final isAllowDirection()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    return v0
.end method

.method public final isAllowGPS()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    return v0
.end method

.method public final setAllowCache(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    .line 187
    return-object p0
.end method

.method public final setAllowDirection(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    .line 213
    return-object p0
.end method

.method public final setAllowGPS(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    .line 200
    return-object p0
.end method

.method public final setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 3

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interval should >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-wide p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    .line 150
    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 2

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const-string p1, ""

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->i:Landroid/os/Bundle;

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-object p0
.end method

.method public final setQQ(Ljava/lang/String;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public final setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 3

    .prologue
    .line 168
    invoke-static {p1}, Lct/co;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iput p1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    .line 174
    return-object p0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request_level: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TencentLocationRequest {interval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms,level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowGps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",allowDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",QQ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/geolocation/TencentLocationRequest;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
