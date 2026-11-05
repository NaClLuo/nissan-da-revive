.class final Lct/ca;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/location/GpsStatus$Listener;
.implements Landroid/location/LocationListener;


# instance fields
.field private a:J

.field private final b:Lct/bk;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private volatile h:Z

.field private i:Z

.field private j:Lct/bu;

.field private k:Landroid/location/GpsStatus;

.field private final l:[D


# direct methods
.method public constructor <init>(Lct/bk;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/ca;->a:J

    .line 57
    const/16 v0, 0x400

    iput v0, p0, Lct/ca;->c:I

    .line 59
    iput-boolean v2, p0, Lct/ca;->d:Z

    .line 60
    iput-boolean v2, p0, Lct/ca;->e:Z

    .line 62
    iput v2, p0, Lct/ca;->f:I

    .line 63
    iput v2, p0, Lct/ca;->g:I

    .line 199
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lct/ca;->l:[D

    .line 75
    iput-object p1, p0, Lct/ca;->b:Lct/bk;

    .line 76
    invoke-static {}, Lct/bu;->a()Lct/bu;

    move-result-object v0

    iput-object v0, p0, Lct/ca;->j:Lct/bu;

    .line 77
    return-void
.end method

.method private static a(Landroid/location/Location;DDI)V
    .locals 3

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 550
    if-nez v0, :cond_0

    .line 551
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 553
    :cond_0
    const-string v1, "lat"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 554
    const-string v1, "lng"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 555
    const-string v1, "rssi"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    invoke-virtual {p0, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 557
    return-void
.end method

.method private static a(D)Z
    .locals 4

    .prologue
    .line 176
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 271
    sget-boolean v2, Lct/co;->a:Z

    if-nez v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    :try_start_0
    iget-object v2, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v2}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 278
    goto :goto_0

    .line 282
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/location/Location;->isFromMockProvider()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 284
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 291
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 229
    iget v0, p0, Lct/ca;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 233
    const/4 v0, 0x1

    .line 241
    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 242
    const/16 v2, 0x32c7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 243
    const/16 v2, 0x2ee2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 244
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 245
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    .line 246
    return-void

    .line 234
    :cond_0
    iget v0, p0, Lct/ca;->c:I

    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 426
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lct/ca;->g:I

    iput v0, p0, Lct/ca;->f:I

    .line 428
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 430
    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v1

    .line 435
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 437
    if-eqz v2, :cond_0

    .line 440
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lct/ca;->f:I

    if-gt v0, v1, :cond_0

    .line 441
    iget v0, p0, Lct/ca;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ca;->f:I

    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    iget v0, p0, Lct/ca;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ca;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private f()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 497
    .line 499
    :try_start_0
    iget-object v2, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v2}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 501
    :goto_0
    if-nez v1, :cond_1

    .line 516
    :cond_0
    return v0

    .line 505
    :cond_1
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    .line 506
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 507
    if-eqz v1, :cond_0

    .line 511
    const/4 v0, 0x0

    .line 512
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gt v0, v2, :cond_0

    .line 513
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private g()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 526
    .line 528
    :try_start_0
    iget-object v2, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v2}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 530
    :goto_0
    if-nez v0, :cond_1

    .line 546
    :cond_0
    return v1

    .line 534
    :cond_1
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v2

    .line 535
    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 536
    if-eqz v3, :cond_0

    .line 540
    const/4 v0, 0x0

    move v1, v0

    .line 541
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt v1, v2, :cond_0

    .line 542
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-boolean v0, p0, Lct/ca;->h:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-boolean v2, p0, Lct/ca;->h:Z

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/ca;->a:J

    .line 124
    const/16 v0, 0x400

    iput v0, p0, Lct/ca;->c:I

    .line 125
    iput-boolean v2, p0, Lct/ca;->d:Z

    .line 126
    iput-boolean v2, p0, Lct/ca;->e:Z

    .line 127
    iput v2, p0, Lct/ca;->f:I

    .line 128
    iput v2, p0, Lct/ca;->g:I

    .line 129
    iput-boolean v2, p0, Lct/ca;->i:Z

    .line 130
    iget-object v0, p0, Lct/ca;->l:[D

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 132
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0, p0}, Lct/bk;->b(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 136
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :goto_1
    :try_start_1
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final a(JZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 80
    iget-boolean v0, p0, Lct/ca;->h:Z

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iput-boolean v6, p0, Lct/ca;->h:Z

    .line 86
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0, p0}, Lct/bk;->a(Ljava/lang/Object;)V

    .line 88
    const-wide/16 v0, 0x3e8

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 90
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 92
    if-nez p3, :cond_2

    .line 93
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 94
    const-string v1, "gps"

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_1
    invoke-virtual {p0}, Lct/ca;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x4

    iput v0, p0, Lct/ca;->c:I

    .line 107
    invoke-direct {p0}, Lct/ca;->d()V

    goto :goto_0

    .line 97
    :cond_2
    :try_start_1
    const-string v1, "passive"

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 100
    :catch_0
    move-exception v0

    sput-boolean v6, Lct/cz;->a:Z

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lct/ca;->i:Z

    .line 173
    return-void
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 147
    .line 148
    iget v1, p0, Lct/ca;->c:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lct/ca;->a:J

    sub-long/2addr v2, v4

    invoke-static {}, Lct/bz;->a()Lct/bz;

    move-result-object v1

    invoke-virtual {v1}, Lct/bz;->b()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v0, 0x1

    .line 155
    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 3

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v1}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v1

    .line 162
    :try_start_0
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 167
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final onGpsStatusChanged(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 388
    packed-switch p1, :pswitch_data_0

    .line 417
    :goto_0
    invoke-direct {p0}, Lct/ca;->e()V

    .line 421
    invoke-direct {p0}, Lct/ca;->f()I

    move-result v0

    invoke-direct {p0}, Lct/ca;->g()I

    move-result v2

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lct/ca;->e:Z

    :cond_0
    if-lez v2, :cond_1

    iput-boolean v1, p0, Lct/ca;->d:Z

    :cond_1
    iget-boolean v1, p0, Lct/ca;->e:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    if-le v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lct/ca;->d:Z

    .line 422
    :cond_3
    return-void

    .line 390
    :pswitch_0
    iget v0, p0, Lct/ca;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ca;->c:I

    goto :goto_0

    .line 393
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lct/ca;->c:I

    goto :goto_0

    .line 396
    :pswitch_2
    iget v0, p0, Lct/ca;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lct/ca;->c:I

    goto :goto_0

    .line 399
    :pswitch_3
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 401
    :try_start_0
    iget-object v2, p0, Lct/ca;->k:Landroid/location/GpsStatus;

    if-nez v2, :cond_4

    .line 402
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    iput-object v0, p0, Lct/ca;->k:Landroid/location/GpsStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_1
    iget-object v0, p0, Lct/ca;->k:Landroid/location/GpsStatus;

    if-eqz v0, :cond_6

    .line 409
    iget-object v0, p0, Lct/ca;->j:Lct/bu;

    iget-object v2, p0, Lct/ca;->k:Landroid/location/GpsStatus;

    invoke-virtual {v0, v2}, Lct/bu;->a(Landroid/location/GpsStatus;)Z

    move-result v0

    .line 414
    :goto_2
    if-eqz v0, :cond_5

    const/4 v0, 0x3

    :goto_3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x32c7

    iput v3, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x2ee4

    iput v3, v2, Landroid/os/Message;->arg1:I

    iput v0, v2, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v0, v2}, Lct/bk;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_4
    :try_start_1
    iget-object v2, p0, Lct/ca;->k:Landroid/location/GpsStatus;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    .line 414
    :cond_5
    const/4 v0, 0x4

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 8

    .prologue
    .line 333
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 338
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 339
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onLocationChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "yyyy-MM-dd kk:mm:ss"

    iget-wide v6, p0, Lct/ca;->a:J

    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    .line 341
    const v5, 0x461c4000    # 10000.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0}, Lct/ca;->e()V

    .line 346
    iget v0, p0, Lct/ca;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lct/ca;->c:I

    .line 348
    iget-object v0, p0, Lct/ca;->b:Lct/bk;

    iget-object v0, v0, Lct/bk;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lct/ca;->a(Landroid/location/Location;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/ca;->a:J

    .line 353
    const/4 v6, 0x0

    iget v0, p0, Lct/ca;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v6, 0x1

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lct/ca;->i:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lct/da;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_e

    iget-object v0, p0, Lct/ca;->l:[D

    invoke-static {p1, v0}, Lct/b$a;->a(Landroid/location/Location;[D)Z

    iget-object v0, p0, Lct/ca;->l:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    iget-object v0, p0, Lct/ca;->l:[D

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lct/ca;->a(Landroid/location/Location;DDI)V

    :goto_4
    new-instance v0, Lct/ck;

    iget-wide v2, p0, Lct/ca;->a:J

    iget v4, p0, Lct/ca;->f:I

    iget v5, p0, Lct/ca;->g:I

    iget v6, p0, Lct/ca;->c:I

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lct/ck;-><init>(Landroid/location/Location;JIII)V

    iget-object v1, p0, Lct/ca;->b:Lct/bk;

    invoke-virtual {v1, v0}, Lct/bk;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 341
    :cond_3
    invoke-static {v0, v1}, Lct/ca;->a(D)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v2, v3}, Lct/ca;->a(D)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_7

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    const-wide v4, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_9

    const-wide v4, 0x4056800000000000L    # 90.0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_9

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, v2, v0

    if-ltz v0, :cond_9

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 353
    :cond_b
    iget v0, p0, Lct/ca;->g:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c

    iget v0, p0, Lct/ca;->g:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_c

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_c
    iget v0, p0, Lct/ca;->g:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    const/4 v6, 0x3

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lct/ca;->a(Landroid/location/Location;DDI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 356
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 375
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iput v1, p0, Lct/ca;->g:I

    iput v1, p0, Lct/ca;->f:I

    .line 379
    iput v1, p0, Lct/ca;->c:I

    .line 380
    iput-boolean v1, p0, Lct/ca;->d:Z

    .line 381
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/ca;->a:J

    .line 382
    invoke-direct {p0}, Lct/ca;->d()V

    .line 384
    :cond_0
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 365
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x4

    iput v0, p0, Lct/ca;->c:I

    .line 368
    invoke-direct {p0}, Lct/ca;->d()V

    .line 371
    :cond_0
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method
