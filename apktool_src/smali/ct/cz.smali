.class public final Lct/cz;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lct/cz;->a:Z

    return-void
.end method

.method public static a(Landroid/telephony/CellLocation;)I
    .locals 1

    .prologue
    .line 207
    instance-of v0, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_0

    .line 208
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 209
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    :try_start_0
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 213
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Lct/bk;)Landroid/telephony/CellInfo;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_4

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 117
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    move-object v1, v0

    .line 118
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 122
    :goto_2
    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 123
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_1
    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    :cond_2
    :goto_4
    move-object v0, v2

    goto :goto_3

    .line 128
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public static a(Landroid/telephony/TelephonyManager;[I)V
    .locals 5
    .param p0    # Landroid/telephony/TelephonyManager;
        .annotation build Lorg/eclipse/jdt/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [I
        .annotation build Lorg/eclipse/jdt/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x0

    .line 488
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 494
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p1, v1

    .line 499
    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p1, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 505
    :cond_0
    :goto_1
    invoke-static {p1, v4}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 503
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 471
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(IIIII)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const v3, 0xffff

    .line 410
    invoke-static {p0}, Lct/cz;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gt p3, v3, :cond_0

    if-ltz p4, :cond_0

    if-gt p4, v3, :cond_0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    :cond_0
    move v0, v1

    .line 429
    :cond_1
    :goto_0
    return v0

    .line 416
    :cond_2
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    if-lez p3, :cond_3

    if-lt p3, v3, :cond_4

    :cond_3
    move v0, v1

    .line 417
    goto :goto_0

    .line 420
    :cond_4
    const v2, 0xfffffff

    if-eq p4, v2, :cond_5

    const v2, 0x7fffffff

    if-eq p4, v2, :cond_5

    const v2, 0x3040101

    if-eq p4, v2, :cond_5

    if-eq p4, v3, :cond_5

    if-gtz p4, :cond_6

    :cond_5
    move v0, v1

    .line 424
    goto :goto_0

    .line 427
    :cond_6
    if-eq p4, v3, :cond_7

    if-gtz p4, :cond_1

    :cond_7
    move v0, v1

    .line 428
    goto :goto_0
.end method

.method public static a(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    invoke-static {p0, p1, p2}, Lct/cz;->b(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)I

    move-result v2

    .line 448
    invoke-static {p0}, Lct/cz;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 449
    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 450
    :cond_2
    invoke-static {p0}, Lct/cz;->b(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    const/4 v3, 0x6

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 453
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    .line 70
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 57
    goto :goto_0

    .line 64
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    .line 68
    goto :goto_1

    :cond_2
    move v0, v1

    .line 64
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 60
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static a(Landroid/telephony/CellInfo;)Z
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0x21

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v0, 0x0

    const v5, 0xffff

    .line 320
    if-nez p0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    :try_start_0
    instance-of v1, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v1, :cond_3

    .line 325
    check-cast p0, Landroid/telephony/CellInfoGsm;

    .line 326
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v2

    .line 328
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v3

    .line 329
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v4

    .line 330
    invoke-virtual {v1}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    .line 331
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    if-lez v4, :cond_0

    if-ge v4, v5, :cond_0

    const v2, 0xfffffff

    if-eq v1, v2, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const v2, 0x3040101

    if-eq v1, v2, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    if-lez v1, :cond_0

    .line 374
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    :cond_3
    instance-of v1, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v1, :cond_4

    .line 336
    check-cast p0, Landroid/telephony/CellInfoCdma;

    .line 337
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v2

    .line 340
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v3

    .line 341
    invoke-virtual {v1}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    .line 342
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    if-gt v3, v5, :cond_0

    if-ltz v1, :cond_0

    if-gt v1, v5, :cond_0

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-nez v1, :cond_2

    goto :goto_0

    .line 345
    :cond_4
    instance-of v1, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v1, :cond_5

    .line 346
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    .line 347
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v1

    .line 348
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v2

    .line 349
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v3

    .line 350
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v4

    .line 351
    invoke-virtual {v1}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    .line 352
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    if-lez v4, :cond_0

    if-ge v4, v5, :cond_0

    const v2, 0xfffffff

    if-eq v1, v2, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const v2, 0x3040101

    if-eq v1, v2, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    if-gtz v1, :cond_2

    goto/16 :goto_0

    .line 356
    :cond_5
    instance-of v1, p0, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_2

    .line 357
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 358
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 359
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v2

    .line 360
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v3

    .line 361
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v4

    .line 362
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 363
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    if-lez v4, :cond_0

    if-ge v4, v5, :cond_0

    const v2, 0xfffffff

    if-eq v1, v2, :cond_0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const v2, 0x3040101

    if-eq v1, v2, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v1, v7, :cond_0

    if-eq v1, v8, :cond_0

    if-gtz v1, :cond_2

    goto/16 :goto_0

    .line 372
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 369
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public static a(Landroid/telephony/CellInfo;Landroid/telephony/CellInfo;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 246
    invoke-static {p0, p1}, Lct/b$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 252
    if-ne v2, v3, :cond_0

    .line 256
    :try_start_0
    instance-of v2, p0, Landroid/telephony/CellInfoGsm;

    if-eqz v2, :cond_2

    .line 257
    check-cast p0, Landroid/telephony/CellInfoGsm;

    .line 258
    check-cast p1, Landroid/telephony/CellInfoGsm;

    .line 259
    invoke-virtual {p0}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 260
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 261
    invoke-virtual {v2}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v2

    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 262
    :cond_2
    instance-of v2, p0, Landroid/telephony/CellInfoCdma;

    if-eqz v2, :cond_3

    .line 263
    check-cast p0, Landroid/telephony/CellInfoCdma;

    .line 264
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 265
    invoke-virtual {p0}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 266
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 267
    invoke-virtual {v2}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v2

    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 268
    :cond_3
    instance-of v2, p0, Landroid/telephony/CellInfoWcdma;

    if-eqz v2, :cond_4

    .line 269
    check-cast p0, Landroid/telephony/CellInfoWcdma;

    .line 270
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 271
    invoke-virtual {p0}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 272
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 273
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v2

    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 274
    :cond_4
    instance-of v2, p0, Landroid/telephony/CellInfoLte;

    if-eqz v2, :cond_0

    .line 275
    check-cast p0, Landroid/telephony/CellInfoLte;

    .line 276
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 277
    invoke-virtual {p0}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 278
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 279
    invoke-virtual {v2}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v2

    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 282
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/telephony/CellLocation;Landroid/telephony/CellLocation;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 296
    invoke-static {p0, p1}, Lct/b$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 300
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 302
    if-ne v2, v3, :cond_0

    .line 306
    instance-of v2, p0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_2

    .line 307
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 308
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 309
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 310
    :cond_2
    instance-of v2, p0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 311
    check-cast p0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 312
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 313
    invoke-virtual {p0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Lct/cj;)Z
    .locals 5

    .prologue
    .line 384
    invoke-static {p0}, Lct/b$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lct/cj;->a:I

    iget v1, p0, Lct/cj;->b:I

    iget v2, p0, Lct/cj;->c:I

    iget v3, p0, Lct/cj;->d:I

    iget v4, p0, Lct/cj;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lct/cz;->a(IIIII)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)I
    .locals 2

    .prologue
    .line 459
    :try_start_0
    invoke-static {p0}, Lct/cz;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    sub-int/2addr v0, v1

    .line 467
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-static {p0}, Lct/cz;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lct/bk;)Landroid/telephony/CellLocation;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p0}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 140
    if-eqz v3, :cond_5

    .line 142
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 144
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_3

    move v0, v1

    .line 147
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    .line 152
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 154
    if-eqz v4, :cond_0

    :try_start_2
    invoke-static {v4}, Lct/cz;->b(Landroid/telephony/CellLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Lct/cz;->a(Landroid/telephony/CellLocation;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lct/bk;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/cz;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    sput-boolean v2, Lct/cz;->a:Z

    .line 157
    :cond_2
    sget-boolean v0, Lct/cz;->a:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v4

    .line 168
    :goto_2
    return-object v0

    :cond_3
    move v0, v2

    .line 144
    goto :goto_0

    :cond_4
    move v3, v2

    .line 147
    goto :goto_1

    :catch_0
    move-exception v3

    move v3, v1

    goto :goto_1

    .line 164
    :catch_1
    move-exception v0

    sput-boolean v1, Lct/cz;->a:Z

    .line 168
    :cond_5
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v0

    goto :goto_2
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/telephony/CellLocation;)Z
    .locals 1

    .prologue
    .line 226
    :try_start_0
    check-cast p0, Landroid/telephony/gsm/GsmCellLocation;

    .line 227
    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lct/bk;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lct/bk;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 200
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
