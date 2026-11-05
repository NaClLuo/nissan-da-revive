.class final Lct/cb$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Lct/cc;

.field private b:I

.field private c:J

.field private d:Z

.field private e:Z

.field private synthetic f:Lct/cb;


# direct methods
.method constructor <init>(Lct/cb;Landroid/os/Looper;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1171
    iput-object p1, p0, Lct/cb$a;->f:Lct/cb;

    .line 1172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1173
    invoke-static {p1}, Lct/cb;->a(Lct/cb;)Lct/bk;

    invoke-static {}, Lct/bn;->c()Lct/cc;

    move-result-object v0

    iput-object v0, p0, Lct/cb$a;->a:Lct/cc;

    .line 1174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/cb$a;->c:J

    .line 1175
    iput-boolean v2, p0, Lct/cb$a;->d:Z

    .line 1176
    iput-boolean v2, p0, Lct/cb$a;->e:Z

    .line 1177
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    .line 1477
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->n(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1479
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v2

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v3

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v4, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v4}, Lct/cb;->f(Lct/cb;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1484
    :goto_0
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->p(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 1485
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->q(Lct/cb;)Z

    .line 1486
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->A(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-virtual {v0}, Lct/cb;->c()V

    .line 1490
    :cond_0
    return-void

    .line 1481
    :cond_1
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    sget-object v2, Lct/cy;->a:Lct/cy;

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lct/cb$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1181
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    .line 1185
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->b(Lct/cb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1186
    :try_start_0
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->c(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1187
    monitor-exit v1

    .line 1469
    :cond_0
    :goto_0
    return-void

    .line 1189
    :cond_1
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->c(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v4

    .line 1190
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1191
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->d(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    .line 1193
    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v1

    .line 1194
    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v8

    .line 1195
    const-wide/16 v2, 0x0

    .line 1196
    const-wide/16 v6, 0x1388

    cmp-long v5, v8, v6

    if-lez v5, :cond_1e

    .line 1197
    const-wide/16 v2, 0x1388

    sub-long v2, v8, v2

    move-wide v6, v2

    .line 1198
    :goto_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1466
    :sswitch_0
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->C(Lct/cb;)Lct/cn;

    .line 1468
    const/16 v0, 0xf9f

    invoke-virtual {p0, v0}, Lct/cb$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1202
    :sswitch_1
    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Lct/cb;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lct/cb;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1203
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v1

    invoke-static {v0, v1}, Lct/cb;->a(Lct/cb;Lct/cy;)V

    .line 1204
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v1

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v2

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v3}, Lct/cb;->f(Lct/cb;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->g(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->h(Lct/cb;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1207
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->h(Lct/cb;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v1

    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->i(Lct/cb;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lct/b$a;->a(DI)D

    move-result-wide v2

    iget-object v4, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v4}, Lct/cb;->f(Lct/cb;)I

    move-result v4

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v5

    iget-object v10, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v10}, Lct/cb;->f(Lct/cb;)I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/tencent/map/geolocation/TencentDistanceListener;->onDistanceChanged(Lcom/tencent/map/geolocation/TencentLocation;DILjava/lang/String;)V

    .line 1209
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_3

    .line 1210
    const/16 v0, 0x2edf

    invoke-virtual {p0, v0, v8, v9}, Lct/cb$a;->sendEmptyMessageDelayed(IJ)Z

    .line 1213
    :cond_3
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->j(Lct/cb;)Lct/ch;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lct/ch;->a(J)V

    goto/16 :goto_0

    .line 1217
    :sswitch_2
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1218
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v1

    invoke-static {v0, v1}, Lct/cb;->a(Lct/cb;Lct/cy;)V

    .line 1219
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v1

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v2

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v3, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v3}, Lct/cb;->f(Lct/cb;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v1, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->g(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->h(Lct/cb;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1222
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->h(Lct/cb;)Lcom/tencent/map/geolocation/TencentDistanceListener;

    move-result-object v0

    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v1

    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->i(Lct/cb;)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lct/b$a;->a(DI)D

    move-result-wide v2

    iget-object v4, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v4}, Lct/cb;->f(Lct/cb;)I

    move-result v4

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v5

    iget-object v8, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v8}, Lct/cb;->f(Lct/cb;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/tencent/map/geolocation/TencentDistanceListener;->onDistanceChanged(Lcom/tencent/map/geolocation/TencentLocation;DILjava/lang/String;)V

    .line 1224
    :cond_4
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->j(Lct/cb;)Lct/ch;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lct/ch;->a(J)V

    goto/16 :goto_0

    .line 1228
    :sswitch_3
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->k(Lct/cb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    :sswitch_4
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->l(Lct/cb;)Lct/cl;

    move-result-object v0

    .line 1235
    const/4 v3, 0x0

    .line 1236
    const/4 v2, 0x0

    .line 1237
    if-eqz v0, :cond_1d

    .line 1238
    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->m(Lct/cb;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v3}, Lct/cb;->a(Lct/cb;)Lct/bk;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lct/cl;->a(ILjava/lang/String;Lct/bk;ZZZZ)Ljava/lang/String;

    move-result-object v2

    .line 1239
    invoke-static {v2}, Lct/b$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    .line 1241
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_8

    .line 1243
    :cond_5
    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: bad json "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1244
    :cond_6
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->n(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v2

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v3

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v4, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v4}, Lct/cb;->f(Lct/cb;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1246
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->p(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 1247
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->q(Lct/cb;)Z

    goto/16 :goto_0

    .line 1239
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 1252
    :cond_8
    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->s(Lct/cb;)Lct/cf;

    move-result-object v1

    iget-object v3, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v3}, Lct/cb;->r(Lct/cb;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lct/cf;->a(Ljava/lang/String;Lct/cl;I)V

    goto/16 :goto_0

    .line 1259
    :sswitch_5
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->d(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "daemon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1260
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->t(Lct/cb;)J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-gez v0, :cond_9

    .line 1261
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->u(Lct/cb;)J

    .line 1262
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "the daemonLocation,so we delay long time upload:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->t(Lct/cb;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->v(Lct/cb;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->v(Lct/cb;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->t(Lct/cb;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lct/cb;->a(Lct/cb;J)J

    .line 1271
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "wifi error."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1274
    :cond_b
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->r(Lct/cb;)I

    move-result v8

    .line 1275
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->l(Lct/cb;)Lct/cl;

    move-result-object v0

    .line 1276
    if-nez v0, :cond_c

    .line 1277
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lct/cb$a;->a(I)V

    goto/16 :goto_0

    .line 1280
    :cond_c
    invoke-virtual {v0}, Lct/cl;->b()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lct/cb$a;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 1281
    const/4 v2, 0x1

    iput-boolean v2, p0, Lct/cb$a;->d:Z

    .line 1282
    const/4 v2, 0x0

    iput-boolean v2, p0, Lct/cb$a;->e:Z

    .line 1283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lct/cb$a;->c:J

    .line 1287
    :goto_3
    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->m(Lct/cb;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v3}, Lct/cb;->a(Lct/cb;)Lct/bk;

    move-result-object v3

    iget-boolean v4, p0, Lct/cb$a;->d:Z

    iget-boolean v5, p0, Lct/cb$a;->e:Z

    iget-object v6, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v6}, Lct/cb;->w(Lct/cb;)Z

    move-result v6

    iget-object v7, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v7}, Lct/cb;->d(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v9, "daemon"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lct/cl;->a(ILjava/lang/String;Lct/bk;ZZZZ)Ljava/lang/String;

    move-result-object v2

    .line 1290
    invoke-static {v2}, Lct/b$a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    .line 1291
    :goto_4
    if-eqz v1, :cond_d

    .line 1292
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleMessage: bad json "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1295
    :cond_d
    if-eqz v1, :cond_10

    .line 1296
    iget v0, p0, Lct/cb$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/cb$a;->b:I

    .line 1297
    iget v0, p0, Lct/cb$a;->b:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->x(Lct/cb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: bad json "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1299
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lct/cb$a;->a(I)V

    .line 1300
    const/4 v0, 0x0

    iput v0, p0, Lct/cb$a;->b:I

    goto/16 :goto_0

    .line 1285
    :cond_e
    const/4 v2, 0x0

    iput-boolean v2, p0, Lct/cb$a;->d:Z

    goto :goto_3

    .line 1290
    :cond_f
    const/4 v1, 0x0

    goto :goto_4

    .line 1304
    :cond_10
    const/4 v1, 0x0

    iput v1, p0, Lct/cb$a;->b:I

    .line 1316
    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->d(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "daemon"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lct/co;->b()Z

    .line 1317
    :cond_11
    sget-boolean v1, Lct/co;->a:Z

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->s(Lct/cb;)Lct/cf;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v8}, Lct/cf;->a(Ljava/lang/String;Lct/cl;I)V

    .line 1331
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->y(Lct/cb;)Lct/bm;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_0

    .line 1336
    :sswitch_6
    new-instance v0, Lct/cl;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v2, Lct/ck;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lct/ck;-><init>(Landroid/location/Location;JIII)V

    invoke-direct {v0, v9, v10, v2}, Lct/cl;-><init>(Lct/cn;Lct/cj;Lct/ck;)V

    .line 1339
    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->m(Lct/cb;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v3}, Lct/cb;->a(Lct/cb;)Lct/bk;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v7}, Lct/cb;->d(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "daemon"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lct/cl;->a(ILjava/lang/String;Lct/bk;ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 1341
    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->s(Lct/cb;)Lct/cf;

    move-result-object v2

    iget-object v3, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v3}, Lct/cb;->r(Lct/cb;)I

    move-result v3

    invoke-virtual {v2, v1, v0, v3}, Lct/cf;->a(Ljava/lang/String;Lct/cl;I)V

    goto/16 :goto_0

    .line 1349
    :sswitch_7
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->d(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "daemon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1350
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lct/cb;->a(Lct/cb;Z)Z

    goto/16 :goto_0

    .line 1356
    :cond_12
    const/16 v0, 0x1386

    invoke-virtual {p0, v0}, Lct/cb$a;->removeMessages(I)V

    .line 1357
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 1358
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1359
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lct/cf$a;

    .line 1360
    iget-object v2, v0, Lct/cf$a;->a:Ljava/lang/Object;

    check-cast v2, Lct/cl;

    .line 1361
    iget-object v3, v0, Lct/cf$a;->b:Ljava/lang/String;

    .line 1363
    invoke-virtual {v2}, Lct/cl;->b()Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "gps"

    .line 1366
    :goto_5
    :try_start_1
    new-instance v5, Lct/cy$a;

    invoke-direct {v5}, Lct/cy$a;-><init>()V

    iput-object v4, v5, Lct/cy$a;->a:Ljava/lang/String;

    iput v1, v5, Lct/cy$a;->c:I

    iput-object v3, v5, Lct/cy$a;->d:Ljava/lang/String;

    invoke-virtual {v5}, Lct/cy$a;->a()Lct/cy;

    move-result-object v3

    .line 1374
    invoke-virtual {v3}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "resp_json"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v3}, Lct/cy;->isMockGps()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_13

    .line 1376
    const/4 v1, 0x1

    iput-boolean v1, p0, Lct/cb$a;->e:Z

    .line 1378
    :cond_13
    invoke-static {v3}, Lct/cy;->b(Lct/cy;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1396
    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->z(Lct/cb;)Lct/cj;

    move-result-object v1

    invoke-static {v3, v1}, Lct/b$a;->a(Lct/cy;Lct/cj;)Z

    .line 1397
    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->z(Lct/cb;)Lct/cj;

    move-result-object v1

    invoke-static {v3, v1}, Lct/cy;->a(Lct/cy;Lct/cj;)Lct/cy;

    .line 1400
    const/4 v1, 0x0

    .line 1401
    invoke-virtual {v2}, Lct/cl;->a()Lct/ck;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 1402
    invoke-virtual {v2}, Lct/cl;->a()Lct/ck;

    move-result-object v1

    iget v1, v1, Lct/ck;->c:I

    .line 1404
    :cond_14
    invoke-virtual {v3}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "sat_num"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    invoke-virtual {v3}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "req_cost"

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1407
    invoke-virtual {v3}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "req_start"

    iget-wide v4, v0, Lct/cf$a;->c:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1409
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->a(Lct/cb;)Lct/bk;

    move-result-object v0

    const-string v1, "map"

    invoke-virtual {v0, v1}, Lct/bk;->a(Ljava/lang/String;)Lct/bo;

    move-result-object v0

    .line 1410
    invoke-virtual {v3}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lct/bo;->b(Landroid/os/Bundle;)Z

    .line 1412
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lct/cb;->a(Lct/cb;Z)Z

    .line 1414
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->x(Lct/cb;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1415
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0, v3}, Lct/cb;->b(Lct/cb;Lct/cy;)V

    .line 1417
    :cond_15
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->n(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1418
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v3, v2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1420
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->p(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 1421
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->q(Lct/cb;)Z

    .line 1423
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->A(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1424
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-virtual {v0}, Lct/cb;->c()V

    goto/16 :goto_0

    .line 1363
    :cond_16
    const-string v3, "network"

    goto/16 :goto_5

    .line 1380
    :catch_0
    move-exception v0

    iget-object v0, p0, Lct/cb$a;->a:Lct/cc;

    invoke-interface {v0}, Lct/cc;->d()Landroid/location/Location;

    move-result-object v0

    sget-object v1, Lct/bx;->b:Landroid/location/Location;

    if-eq v0, v1, :cond_17

    const/16 v1, 0xf9e

    invoke-virtual {p0, v1, v0}, Lct/cb$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1387
    :cond_17
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->n(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1388
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v2

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v3

    invoke-static {}, Lct/cb;->h()Landroid/util/SparseArray;

    move-result-object v0

    iget-object v4, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v4}, Lct/cb;->f(Lct/cb;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->p(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 1390
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->q(Lct/cb;)Z

    goto/16 :goto_0

    .line 1430
    :cond_18
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->w(Lct/cb;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1432
    :try_start_2
    invoke-virtual {v3}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    .line 1433
    if-eqz v0, :cond_19

    .line 1434
    const-string v1, "icontrol"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1435
    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->a(Lct/cb;)Lct/bk;

    move-result-object v1

    iget-object v1, v1, Lct/bk;->a:Landroid/content/Context;

    const-string v2, "LocationSDK"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1436
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "start icontrol:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1437
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "control"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 1444
    :cond_19
    :goto_6
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->B(Lct/cb;)Z

    .line 1446
    :cond_1a
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0, v3}, Lct/cb;->c(Lct/cb;Lct/cy;)Lct/cy;

    goto/16 :goto_0

    .line 1439
    :catch_1
    move-exception v0

    .line 1440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_6

    .line 1441
    :catch_2
    move-exception v0

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_6

    .line 1450
    :sswitch_8
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lct/cb;->a(Lct/cb;Z)Z

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->n(Lct/cb;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v1}, Lct/cb;->o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1452
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->f(Lct/cb;)I

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v2}, Lct/cb;->e(Lct/cb;)Lct/cy;

    move-result-object v2

    invoke-virtual {v2}, Lct/cy;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1453
    :cond_1b
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0}, Lct/cb;->z(Lct/cb;)Lct/cj;

    move-result-object v0

    invoke-static {v0}, Lct/b$a;->a(Lct/cj;)[D

    move-result-object v0

    .line 1456
    if-eqz v0, :cond_1c

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 1457
    new-instance v1, Lct/cy$a;

    invoke-direct {v1}, Lct/cy$a;-><init>()V

    const-string v2, "network"

    iput-object v2, v1, Lct/cy$a;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lct/cy$a;->a()Lct/cy;

    move-result-object v1

    .line 1458
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lct/cy;->a(DD)V

    .line 1459
    invoke-static {v1}, Lct/cy;->a(Lct/cy;)Lct/cy;

    .line 1460
    iget-object v0, p0, Lct/cb$a;->f:Lct/cb;

    invoke-static {v0, v1}, Lct/cb;->b(Lct/cb;Lct/cy;)V

    .line 1462
    :cond_1c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lct/cb$a;->a(I)V

    goto/16 :goto_0

    :cond_1d
    move v1, v2

    move-object v2, v3

    goto/16 :goto_2

    :cond_1e
    move-wide v6, v2

    goto/16 :goto_1

    .line 1198
    :sswitch_data_0
    .sparse-switch
        0x22b -> :sswitch_0
        0xf9d -> :sswitch_4
        0xf9e -> :sswitch_6
        0xf9f -> :sswitch_5
        0x1386 -> :sswitch_8
        0x1387 -> :sswitch_7
        0x1f3f -> :sswitch_3
        0x2ede -> :sswitch_2
        0x2edf -> :sswitch_1
    .end sparse-switch
.end method
