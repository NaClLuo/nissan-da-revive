.class public final Lct/cy;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/tencent/map/geolocation/TencentLocation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/cy$a;
    }
.end annotation


# static fields
.field public static final a:Lct/cy;


# instance fields
.field private b:Lct/cu;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lct/cs;

.field private final g:Landroid/os/Bundle;

.field private h:Ljava/lang/String;

.field private i:Landroid/location/Location;

.field private final j:J

.field private k:J

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lct/cy$1;

    invoke-direct {v0}, Lct/cy$1;-><init>()V

    .line 108
    new-instance v0, Lct/cy;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lct/cy;-><init>(I)V

    sput-object v0, Lct/cy;->a:Lct/cy;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    .line 125
    const-string v0, "network"

    iput-object v0, p0, Lct/cy;->h:Ljava/lang/String;

    .line 134
    iput p1, p0, Lct/cy;->c:I

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cy;->j:J

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cy;->k:J

    .line 137
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lct/cy;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    .line 125
    const-string v0, "network"

    iput-object v0, p0, Lct/cy;->h:Ljava/lang/String;

    .line 193
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cy;->j:J

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cy;->k:J

    .line 195
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 197
    :try_start_0
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 198
    new-instance v2, Lct/cu;

    invoke-direct {v2, v1}, Lct/cu;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lct/cy;->b:Lct/cu;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const-string v1, "bearing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lct/cy;->e:Ljava/lang/String;

    .line 204
    const-string v1, "fackgps"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lct/cy;->d:I

    .line 207
    :try_start_1
    const-string v1, "icontrol"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    iget-object v2, p0, Lct/cy;->g:Landroid/os/Bundle;

    const-string v3, "icontrol"

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TxLocation control:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 213
    :cond_0
    :goto_0
    const-string v1, "details"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_3

    .line 223
    :try_start_2
    new-instance v0, Lct/cs;

    invoke-direct {v0, v1}, Lct/cs;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lct/cy;->f:Lct/cs;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 243
    :cond_1
    :goto_1
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    iget-object v1, p0, Lct/cy;->f:Lct/cs;

    iget-object v1, v1, Lct/cs;->c:Lct/cw;

    iget-object v1, v1, Lct/cw;->l:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 246
    :cond_2
    return-void

    .line 199
    :catch_0
    move-exception v0

    throw v0

    .line 224
    :catch_1
    move-exception v0

    throw v0

    .line 229
    :cond_3
    const-string v1, "addrdesp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_1

    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const-string v1, "detail"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 239
    new-instance v1, Lct/cs;

    invoke-direct {v1, v0}, Lct/cs;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lct/cy;->f:Lct/cs;

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lct/cy;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lct/cy;J)J
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lct/cy;->k:J

    return-wide p1
.end method

.method static synthetic a(Lct/cy;Lct/cs;)Lct/cs;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lct/cy;->f:Lct/cs;

    return-object p1
.end method

.method static synthetic a(Lct/cy;Lct/cu;)Lct/cu;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lct/cy;->b:Lct/cu;

    return-object p1
.end method

.method public static a(Lct/cy;)Lct/cy;
    .locals 2

    .prologue
    .line 474
    if-eqz p0, :cond_0

    .line 475
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    .line 476
    if-eqz v0, :cond_0

    .line 477
    const v1, 0x44098000    # 550.0f

    iput v1, v0, Lct/cu;->d:F

    .line 480
    :cond_0
    return-object p0
.end method

.method public static a(Lct/cy;I)Lct/cy;
    .locals 0

    .prologue
    .line 484
    iput p1, p0, Lct/cy;->l:I

    .line 485
    return-object p0
.end method

.method static synthetic a(Lct/cy;Landroid/location/Location;)Lct/cy;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lct/cy;->i:Landroid/location/Location;

    return-object p0
.end method

.method public static a(Lct/cy;Lct/cj;)Lct/cy;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 454
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lct/cy;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 455
    iget-object v1, p0, Lct/cy;->e:Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    iget v2, p1, Lct/cj;->f:I

    .line 457
    if-eqz v1, :cond_0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-le v3, v4, :cond_0

    .line 458
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 461
    :cond_0
    iget-object v1, p0, Lct/cy;->b:Lct/cu;

    .line 462
    if-eqz v1, :cond_1

    .line 464
    :try_start_0
    iget v3, v1, Lct/cu;->d:F

    float-to-double v4, v3

    invoke-static {v4, v5, v0, v2}, Lcom/tencent/tencentmap/lbssdk/service/e;->r(DII)D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, v1, Lct/cu;->d:F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lct/cy;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lct/cy;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lct/cy;I)Lct/cy;
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lct/cy;->c:I

    return-object p0
.end method

.method static synthetic b(Lct/cy;Ljava/lang/String;)Lct/cy;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lct/cy;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Lct/cy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 489
    sget-object v0, Lct/cy;->a:Lct/cy;

    if-ne p0, v0, :cond_0

    .line 490
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "location failed"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    return-void
.end method

.method static synthetic c(Lct/cy;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lct/cy;)Lct/cy;
    .locals 6

    .prologue
    .line 26
    new-instance v2, Lct/cy;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Lct/cy;-><init>(I)V

    if-nez p0, :cond_1

    new-instance v0, Lct/cu;

    invoke-direct {v0}, Lct/cu;-><init>()V

    iput-object v0, v2, Lct/cy;->b:Lct/cu;

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    new-instance v1, Lct/cu;

    invoke-direct {v1}, Lct/cu;-><init>()V

    if-eqz v0, :cond_2

    iget-wide v4, v0, Lct/cu;->a:D

    iput-wide v4, v1, Lct/cu;->a:D

    iget-wide v4, v0, Lct/cu;->b:D

    iput-wide v4, v1, Lct/cu;->b:D

    iget-wide v4, v0, Lct/cu;->c:D

    iput-wide v4, v1, Lct/cu;->c:D

    iget v3, v0, Lct/cu;->d:F

    iput v3, v1, Lct/cu;->d:F

    iget-object v3, v0, Lct/cu;->e:Ljava/lang/String;

    iput-object v3, v1, Lct/cu;->e:Ljava/lang/String;

    iget-object v0, v0, Lct/cu;->f:Ljava/lang/String;

    iput-object v0, v1, Lct/cu;->f:Ljava/lang/String;

    :cond_2
    iput-object v1, v2, Lct/cy;->b:Lct/cu;

    iget v0, p0, Lct/cy;->c:I

    iput v0, v2, Lct/cy;->c:I

    iget-object v0, p0, Lct/cy;->e:Ljava/lang/String;

    iput-object v0, v2, Lct/cy;->e:Ljava/lang/String;

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v2, Lct/cy;->f:Lct/cs;

    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, v2, Lct/cy;->g:Landroid/os/Bundle;

    iget-object v1, p0, Lct/cy;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lct/cs;

    invoke-direct {v1}, Lct/cs;-><init>()V

    iget v3, v0, Lct/cs;->a:I

    iput v3, v1, Lct/cs;->a:I

    iget-object v3, v0, Lct/cs;->c:Lct/cw;

    invoke-static {v3}, Lct/cw;->a(Lct/cw;)Lct/cw;

    move-result-object v3

    iput-object v3, v1, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cs;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/TencentPoi;

    iget-object v4, v1, Lct/cs;->b:Ljava/util/ArrayList;

    new-instance v5, Lct/cv;

    invoke-direct {v5, v0}, Lct/cv;-><init>(Lcom/tencent/map/geolocation/TencentPoi;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(J)Lct/cy;
    .locals 1

    .prologue
    .line 140
    iput-wide p1, p0, Lct/cy;->k:J

    .line 141
    return-object p0
.end method

.method public final a(DD)V
    .locals 7

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 188
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    mul-double v2, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    iput-wide v2, v0, Lct/cu;->a:D

    .line 189
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    mul-double v2, p3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    iput-wide v2, v0, Lct/cu;->b:D

    .line 190
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 6

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 174
    if-eqz p1, :cond_0

    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 176
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 177
    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    .line 178
    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    .line 180
    iget-object v4, p0, Lct/cy;->b:Lct/cu;

    iput-wide v0, v4, Lct/cu;->a:D

    .line 181
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    iput-wide v2, v0, Lct/cu;->b:D

    .line 182
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lct/cu;->c:D

    .line 183
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, v0, Lct/cu;->d:F

    .line 185
    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public final getAccuracy()F
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    iget v0, v0, Lct/cu;->d:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lct/cy;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    iget-object v0, v0, Lct/cu;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final getAltitude()D
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    iget-wide v0, v0, Lct/cu;->c:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getAreaStat()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget v0, v0, Lct/cs;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBearing()F
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lct/cy;->i:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lct/cy;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    goto :goto_0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->f:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getCoordinateType()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lct/cy;->l:I

    return v0
.end method

.method public final getDirection()D
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    const-string v1, "direction"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 554
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public final getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->g:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getElapsedRealtime()J
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Lct/cy;->j:J

    return-wide v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getLatitude()D
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    iget-wide v0, v0, Lct/cu;->a:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getLongitude()D
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    iget-wide v0, v0, Lct/cu;->b:D

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lct/cy;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    const-string v1, "addrdesp.name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lct/cy;->b:Lct/cu;

    iget-object v0, v0, Lct/cu;->e:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final getNation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getPoiList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/map/geolocation/TencentPoi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lct/cy;->f:Lct/cs;

    iget-object v1, v1, Lct/cs;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lct/cy;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getRssi()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 355
    iget-object v1, p0, Lct/cy;->i:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 358
    :cond_1
    iget-object v1, p0, Lct/cy;->i:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_0

    .line 362
    const-string v2, "rssi"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public final getSpeed()F
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lct/cy;->i:Landroid/location/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lct/cy;->i:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    goto :goto_0
.end method

.method public final getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->j:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getStreetNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->k:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getTime()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lct/cy;->k:J

    return-wide v0
.end method

.method public final getTown()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final getVillage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final isMockGps()I
    .locals 1

    .prologue
    .line 559
    iget v0, p0, Lct/cy;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "TxLocation{"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    const-string v0, "level="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lct/cy;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v0, "name="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string v0, "address="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    const-string v0, "provider="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v0, "latitude="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v0, "longitude="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v0, "altitude="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const-string v0, "accuracy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getAccuracy()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v0, "cityCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v0, "areaStat="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getAreaStat()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v0, "nation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getNation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v0, "province="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v0, "city="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v0, "district="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getDistrict()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    const-string v0, "street="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    const-string v0, "streetNo="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getStreetNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v0, "town="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getTown()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    const-string v0, "village="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getVillage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v0, "bearing="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getBearing()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v0, "time="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lct/cy;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v0, "poilist=["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0}, Lct/cy;->getPoiList()Ljava/util/List;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/geolocation/TencentPoi;

    .line 437
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    :cond_0
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lct/cy;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p0}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lct/cy;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    invoke-virtual {p0}, Lct/cy;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    invoke-virtual {p0}, Lct/cy;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 84
    invoke-virtual {p0}, Lct/cy;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 85
    invoke-virtual {p0}, Lct/cy;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lct/cy;->getNation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lct/cy;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lct/cy;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lct/cy;->getDistrict()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lct/cy;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lct/cy;->getStreetNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cy;->f:Lct/cs;

    iget-object v0, v0, Lct/cs;->c:Lct/cw;

    iget-object v0, v0, Lct/cw;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lct/cy;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-wide v0, p0, Lct/cy;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-object v0, p0, Lct/cy;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 98
    return-void

    .line 93
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
