.class public final Lct/cj;
.super Lct/cm;
.source "TL"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field private final i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lct/cm;-><init>()V

    .line 43
    iput v0, p0, Lct/cj;->a:I

    .line 44
    iput v0, p0, Lct/cj;->b:I

    iput v0, p0, Lct/cj;->c:I

    iput v0, p0, Lct/cj;->d:I

    iput v0, p0, Lct/cj;->e:I

    iput v0, p0, Lct/cj;->f:I

    .line 45
    iput v1, p0, Lct/cj;->g:I

    iput v1, p0, Lct/cj;->h:I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/cj;->i:J

    .line 52
    return-void
.end method

.method public static a(Lct/bk;Landroid/telephony/CellInfo;)Lct/cj;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    const/16 v6, -0x28

    const/16 v2, -0x58

    const/16 v5, -0x6e

    .line 146
    invoke-virtual {p0}, Lct/bk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 218
    :cond_1
    :goto_0
    return-object v0

    .line 150
    :cond_2
    invoke-virtual {p0}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 151
    new-instance v0, Lct/cj;

    invoke-direct {v0}, Lct/cj;-><init>()V

    .line 152
    instance-of v3, p1, Landroid/telephony/CellInfoCdma;

    if-eqz v3, :cond_4

    .line 154
    :try_start_0
    check-cast p1, Landroid/telephony/CellInfoCdma;

    .line 155
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 156
    const/4 v4, 0x2

    iput v4, v0, Lct/cj;->a:I

    .line 157
    invoke-direct {v0, p0, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/TelephonyManager;)V

    .line 158
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v1

    iput v1, v0, Lct/cj;->c:I

    .line 159
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v1

    iput v1, v0, Lct/cj;->d:I

    .line 160
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v1

    iput v1, v0, Lct/cj;->e:I

    .line 161
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLatitude()I

    move-result v1

    iput v1, v0, Lct/cj;->g:I

    .line 162
    invoke-virtual {v3}, Landroid/telephony/CellIdentityCdma;->getLongitude()I

    move-result v1

    iput v1, v0, Lct/cj;->h:I

    .line 164
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getDbm()I

    move-result v1

    .line 165
    if-le v1, v5, :cond_3

    if-ge v1, v6, :cond_3

    move v2, v1

    :cond_3
    iput v2, v0, Lct/cj;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_7

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0

    .line 172
    :cond_4
    instance-of v3, p1, Landroid/telephony/CellInfoGsm;

    if-eqz v3, :cond_6

    .line 174
    :try_start_1
    check-cast p1, Landroid/telephony/CellInfoGsm;

    .line 175
    const/4 v3, 0x1

    iput v3, v0, Lct/cj;->a:I

    .line 176
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 177
    invoke-direct {v0, p0, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/TelephonyManager;)V

    .line 178
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v1

    iput v1, v0, Lct/cj;->d:I

    .line 179
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v1

    iput v1, v0, Lct/cj;->e:I

    .line 180
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v1

    iput v1, v0, Lct/cj;->b:I

    .line 181
    invoke-virtual {v3}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v1

    iput v1, v0, Lct/cj;->c:I

    .line 182
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v1

    .line 183
    if-le v1, v5, :cond_5

    if-ge v1, v6, :cond_5

    move v2, v1

    :cond_5
    iput v2, v0, Lct/cj;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6

    goto/16 :goto_0

    .line 186
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 187
    :cond_6
    instance-of v3, p1, Landroid/telephony/CellInfoWcdma;

    if-eqz v3, :cond_8

    .line 189
    :try_start_2
    check-cast p1, Landroid/telephony/CellInfoWcdma;

    .line 190
    const/4 v3, 0x1

    iput v3, v0, Lct/cj;->a:I

    .line 191
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 192
    invoke-direct {v0, p0, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/TelephonyManager;)V

    .line 193
    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v1

    iput v1, v0, Lct/cj;->d:I

    .line 194
    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v1

    iput v1, v0, Lct/cj;->e:I

    .line 195
    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v1

    iput v1, v0, Lct/cj;->b:I

    .line 196
    invoke-virtual {v3}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v1

    iput v1, v0, Lct/cj;->c:I

    .line 197
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v1

    .line 198
    if-le v1, v5, :cond_7

    if-ge v1, v6, :cond_7

    move v2, v1

    :cond_7
    iput v2, v0, Lct/cj;->f:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_0

    .line 201
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 202
    :cond_8
    instance-of v3, p1, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_1

    .line 204
    :try_start_3
    check-cast p1, Landroid/telephony/CellInfoLte;

    .line 205
    const/4 v3, 0x1

    iput v3, v0, Lct/cj;->a:I

    .line 206
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 207
    invoke-direct {v0, p0, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/TelephonyManager;)V

    .line 208
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v1

    iput v1, v0, Lct/cj;->d:I

    .line 209
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v1

    iput v1, v0, Lct/cj;->e:I

    .line 210
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v1

    iput v1, v0, Lct/cj;->b:I

    .line 211
    invoke-virtual {v3}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v1

    iput v1, v0, Lct/cj;->c:I

    .line 212
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v1

    .line 213
    if-le v1, v5, :cond_9

    if-ge v1, v6, :cond_9

    :goto_1
    iput v1, v0, Lct/cj;->f:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 216
    :catch_3
    move-exception v1

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 213
    goto :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_0

    .line 201
    :catch_5
    move-exception v1

    goto/16 :goto_0

    .line 186
    :catch_6
    move-exception v1

    goto/16 :goto_0

    .line 171
    :catch_7
    move-exception v1

    goto/16 :goto_0
.end method

.method public static a(Lct/bk;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cj;
    .locals 3
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Lct/bk;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 97
    new-instance v0, Lct/cj;

    invoke-direct {v0}, Lct/cj;-><init>()V

    .line 98
    instance-of v2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_3

    .line 100
    :try_start_0
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 101
    const/4 v2, 0x2

    iput v2, v0, Lct/cj;->a:I

    .line 102
    invoke-direct {v0, p0, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/TelephonyManager;)V

    .line 103
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    iput v1, v0, Lct/cj;->c:I

    .line 104
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v1

    iput v1, v0, Lct/cj;->d:I

    .line 105
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    iput v1, v0, Lct/cj;->e:I

    .line 106
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v1

    iput v1, v0, Lct/cj;->g:I

    .line 107
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v1

    iput v1, v0, Lct/cj;->h:I

    .line 108
    if-nez p2, :cond_2

    .line 109
    const/4 v1, -0x1

    iput v1, v0, Lct/cj;->f:I

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 112
    iput v1, v0, Lct/cj;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :cond_3
    :try_start_1
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 120
    const/4 v2, 0x1

    iput v2, v0, Lct/cj;->a:I

    .line 121
    invoke-direct {v0, p0, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/TelephonyManager;)V

    .line 122
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lct/cj;->d:I

    .line 123
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, v0, Lct/cj;->e:I

    .line 130
    if-nez p2, :cond_4

    .line 131
    const/4 v1, -0x1

    iput v1, v0, Lct/cj;->f:I

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 134
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    iput v1, v0, Lct/cj;->f:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method private a(Lct/bk;Landroid/telephony/TelephonyManager;)V
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p1}, Lct/bk;->g()Lct/bl;

    move-result-object v0

    .line 224
    iget v1, v0, Lct/bl;->k:I

    .line 225
    iget v2, v0, Lct/bl;->l:I

    .line 227
    if-lez v1, :cond_0

    if-ltz v2, :cond_0

    .line 228
    iput v1, p0, Lct/cj;->b:I

    .line 229
    iput v2, p0, Lct/cj;->c:I

    .line 238
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 232
    invoke-static {p2, v1}, Lct/cz;->a(Landroid/telephony/TelephonyManager;[I)V

    .line 235
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Lct/bl;->k:I

    .line 236
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lct/bl;->l:I

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/eclipse/jdt/annotation/NonNull;
    .end annotation

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/cj;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lct/cj;->j:Ljava/util/List;

    .line 262
    :cond_0
    iget-object v0, p0, Lct/cj;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/eclipse/jdt/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 273
    :try_start_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lct/cj;->j:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lct/cj;->j:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lct/cj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct/b$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TxCellInfo [PhoneType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lct/cj;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MCC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", MNC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LNG="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lct/cj;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lct/cj;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
