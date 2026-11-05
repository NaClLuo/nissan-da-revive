.class public final Lct/cb;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/cb$a;
    }
.end annotation


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile t:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Lcom/tencent/map/geolocation/TencentLocation;

.field private C:Lcom/tencent/map/geolocation/TencentDistanceListener;

.field private D:Z

.field private final E:Ljava/lang/Object;

.field private final F:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private G:Lct/cy;

.field private H:D

.field private I:D

.field private J:Lct/cy;

.field private K:I

.field private final L:Z

.field private M:Z

.field private N:J

.field private O:J

.field private P:Ljava/lang/String;

.field private b:I

.field private c:Lct/cb$a;

.field private final d:Lct/bw;

.field private final e:Lct/b;

.field private final f:Z

.field private final g:Lct/ca;

.field private final h:Lct/ch;

.field private final i:Lct/by;

.field private final j:Lct/cd;

.field private final k:Lct/cf;

.field private l:Lct/cg;

.field private final m:Lct/bm;

.field private n:Lct/cj;

.field private o:Lct/cn;

.field private p:Lct/ck;

.field private final q:Lct/bk;

.field private r:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private s:Lcom/tencent/map/geolocation/TencentLocationListener;

.field private volatile u:Z

.field private volatile v:Z

.field private w:Z

.field private x:D

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 137
    sput-object v0, Lct/cb;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lct/cb;->a:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "ERROR_NETWORK"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lct/cb;->a:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "BAD_JSON"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lct/cb;->a:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "DEFLECT_FAILED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    const-string v0, "stop"

    sput-object v0, Lct/cb;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lct/bk;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput v5, p0, Lct/cb;->b:I

    .line 157
    iput-boolean v4, p0, Lct/cb;->u:Z

    .line 173
    iput-boolean v4, p0, Lct/cb;->v:Z

    .line 174
    iput-boolean v4, p0, Lct/cb;->w:Z

    .line 175
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lct/cb;->x:D

    .line 176
    iput v4, p0, Lct/cb;->y:I

    .line 177
    iput v4, p0, Lct/cb;->z:I

    .line 178
    iput v4, p0, Lct/cb;->A:I

    .line 181
    iput-boolean v4, p0, Lct/cb;->D:Z

    .line 183
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lct/cb;->E:Ljava/lang/Object;

    .line 184
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v1

    iput-object v1, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 200
    const/16 v1, 0x194

    iput v1, p0, Lct/cb;->K:I

    .line 239
    iput-object p1, p0, Lct/cb;->q:Lct/bk;

    .line 241
    invoke-virtual {p1}, Lct/bk;->g()Lct/bl;

    move-result-object v1

    iget-boolean v1, v1, Lct/bl;->t:Z

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p1, Lct/bk;->a:Landroid/content/Context;

    invoke-static {v1}, Lct/db;->a(Landroid/content/Context;)V

    .line 245
    :cond_0
    invoke-static {}, Lct/bn;->b()Lct/bm;

    move-result-object v1

    iput-object v1, p0, Lct/cb;->m:Lct/bm;

    .line 247
    new-instance v1, Lct/cd;

    iget-object v2, p0, Lct/cb;->q:Lct/bk;

    invoke-direct {v1, v2}, Lct/cd;-><init>(Lct/bk;)V

    iput-object v1, p0, Lct/cb;->j:Lct/cd;

    .line 248
    new-instance v1, Lct/cf;

    iget-object v2, p0, Lct/cb;->q:Lct/bk;

    invoke-direct {v1, v2}, Lct/cf;-><init>(Lct/bk;)V

    iput-object v1, p0, Lct/cb;->k:Lct/cf;

    .line 250
    new-instance v1, Lct/cg;

    invoke-direct {v1}, Lct/cg;-><init>()V

    iput-object v1, p0, Lct/cb;->l:Lct/cg;

    .line 252
    iget-object v1, p1, Lct/bk;->a:Landroid/content/Context;

    invoke-static {v1}, Lct/by;->a(Landroid/content/Context;)Lct/by;

    move-result-object v1

    iput-object v1, p0, Lct/cb;->i:Lct/by;

    .line 254
    iget-object v1, p1, Lct/bk;->a:Landroid/content/Context;

    new-instance v2, Lct/di$a;

    invoke-direct {v2, v1}, Lct/di$a;-><init>(Landroid/content/Context;)V

    sput-object v2, Lct/di;->a:Lct/di$a;

    sput-boolean v5, Lct/di;->b:Z

    .line 255
    invoke-direct {p0}, Lct/cb;->i()Z

    move-result v1

    iput-boolean v1, p0, Lct/cb;->f:Z

    .line 256
    iget-boolean v1, p0, Lct/cb;->f:Z

    if-eqz v1, :cond_2

    .line 257
    iput-object v0, p0, Lct/cb;->d:Lct/bw;

    .line 258
    invoke-direct {p0}, Lct/cb;->k()Lct/ch;

    move-result-object v1

    iput-object v1, p0, Lct/cb;->h:Lct/ch;

    iget-object v1, p0, Lct/cb;->q:Lct/bk;

    invoke-virtual {v1}, Lct/bk;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    iput-object v0, p0, Lct/cb;->e:Lct/b;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lct/cb;->j()Lct/ca;

    move-result-object v2

    iput-object v2, p0, Lct/cb;->g:Lct/ca;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lct/cb;->L:Z

    .line 269
    :goto_1
    return-void

    .line 258
    :cond_1
    new-instance v0, Lct/b;

    iget-object v1, p0, Lct/cb;->q:Lct/bk;

    invoke-direct {v0, v1}, Lct/b;-><init>(Lct/bk;)V

    goto :goto_0

    .line 263
    :cond_2
    iput-object v0, p0, Lct/cb;->e:Lct/b;

    .line 264
    invoke-direct {p0}, Lct/cb;->k()Lct/ch;

    move-result-object v1

    iput-object v1, p0, Lct/cb;->h:Lct/ch;

    iget-object v1, p0, Lct/cb;->q:Lct/bk;

    invoke-virtual {v1}, Lct/bk;->d()Z

    move-result v1

    if-nez v1, :cond_3

    :goto_2
    iput-object v0, p0, Lct/cb;->d:Lct/bw;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lct/cb;->j()Lct/ca;

    move-result-object v2

    iput-object v2, p0, Lct/cb;->g:Lct/ca;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lct/b$a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lct/cb;->L:Z

    goto :goto_1

    :cond_3
    new-instance v0, Lct/bw;

    iget-object v1, p0, Lct/cb;->q:Lct/bk;

    invoke-direct {v0, v1}, Lct/bw;-><init>(Lct/bk;)V

    goto :goto_2
.end method

.method static synthetic A(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lct/cb;->v:Z

    return v0
.end method

.method static synthetic B(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/cb;->M:Z

    return v0
.end method

.method static synthetic C(Lct/cb;)Lct/cn;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lct/cb;->o:Lct/cn;

    return-object v0
.end method

.method static synthetic a(Lct/cb;J)J
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lct/cb;->O:J

    return-wide p1
.end method

.method static synthetic a(Lct/cb;)Lct/bk;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 308
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 310
    if-eqz v2, :cond_2

    .line 311
    :try_start_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 312
    if-eqz v2, :cond_0

    array-length v3, v2

    if-le v3, v0, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v3, v4}, Lcom/tencent/tencentmap/lbssdk/service/e;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    .line 315
    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 321
    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    .line 312
    goto :goto_0

    .line 315
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 317
    :cond_2
    invoke-static {p0}, Lcom/tencent/tencentmap/lbssdk/service/e;->v(Ljava/lang/String;)I

    move-result v0

    .line 318
    if-ltz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(II)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1071
    .line 1074
    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    .line 1143
    :goto_0
    iget-object v2, p0, Lct/cb;->E:Ljava/lang/Object;

    monitor-enter v2

    .line 1144
    :try_start_0
    iget-object v3, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v3, :cond_0

    .line 1145
    iget-object v3, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-interface {v3, v1, p2, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V

    .line 1147
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1076
    :pswitch_0
    const-string v1, "gps"

    .line 1077
    packed-switch p2, :pswitch_data_1

    .line 1085
    const-string v0, "unknown"

    goto :goto_0

    .line 1079
    :pswitch_1
    const-string v0, "gps enabled"

    goto :goto_0

    .line 1082
    :pswitch_2
    const-string v0, "gps disabled"

    goto :goto_0

    .line 1090
    :pswitch_3
    const-string v1, "gps"

    .line 1091
    packed-switch p2, :pswitch_data_2

    .line 1099
    const-string v0, "unknown"

    goto :goto_0

    .line 1093
    :pswitch_4
    const-string v0, "gps available"

    goto :goto_0

    .line 1096
    :pswitch_5
    const-string v0, "gps unavailable"

    goto :goto_0

    .line 1105
    :pswitch_6
    const-string v2, "cell"

    .line 1106
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "cell enabled"

    .line 1108
    :goto_1
    sget-boolean v3, Lct/cz;->a:Z

    if-eqz v3, :cond_3

    .line 1110
    const-string v0, "location permission denied"

    move p2, v1

    move-object v1, v2

    goto :goto_0

    .line 1106
    :cond_1
    if-nez p2, :cond_2

    const-string v0, "cell disabled"

    goto :goto_1

    :cond_2
    const-string v0, "unknown"

    goto :goto_1

    .line 1115
    :pswitch_7
    const-string v2, "wifi"

    .line 1118
    packed-switch p2, :pswitch_data_3

    .line 1129
    :pswitch_8
    const-string v0, "unknown"

    .line 1132
    :goto_2
    const/4 v3, 0x5

    if-eq p2, v3, :cond_3

    sget-boolean v3, Lct/dj;->a:Z

    if-eqz v3, :cond_3

    .line 1134
    const-string v0, "location permission denied"

    move p2, v1

    move-object v1, v2

    goto :goto_0

    .line 1120
    :pswitch_9
    const-string v0, "wifi disabled"

    goto :goto_2

    .line 1123
    :pswitch_a
    const-string v0, "wifi enabled"

    goto :goto_2

    .line 1126
    :pswitch_b
    const-string v0, "location service switch is off"

    goto :goto_2

    .line 1147
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v1, v2

    goto :goto_0

    .line 1074
    nop

    :pswitch_data_0
    .packed-switch 0x2ee1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 1077
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1091
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1118
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-virtual {v0, p1}, Lct/cb$a;->removeMessages(I)V

    .line 888
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-virtual {v0, p1, p2, p3}, Lct/cb$a;->sendEmptyMessageDelayed(IJ)Z

    .line 890
    :cond_0
    return-void
.end method

.method static synthetic a(Lct/cb;Lct/cy;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lct/cb;->a(Lct/cy;)V

    return-void
.end method

.method private final a(Lct/cy;)V
    .locals 4

    .prologue
    .line 530
    if-eqz p1, :cond_1

    .line 531
    iget-object v0, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "direction"

    iget-object v2, p0, Lct/cb;->i:Lct/by;

    invoke-virtual {v2}, Lct/by;->b()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 537
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lct/cy;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lct/cb;Z)Z
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lct/cb;->D:Z

    return p1
.end method

.method static synthetic b(Lct/cb;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->E:Ljava/lang/Object;

    return-object v0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-virtual {v0, p1}, Lct/cb$a;->sendEmptyMessage(I)Z

    .line 881
    :cond_0
    return-void
.end method

.method static synthetic b(Lct/cb;Lct/cy;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lct/cb;->b(Lct/cy;)V

    return-void
.end method

.method private b(Lct/cy;)V
    .locals 11

    .prologue
    const-wide v6, 0x3e45798ee2308c3aL    # 1.0E-8

    const/16 v10, 0x2ede

    const-wide/16 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 686
    if-nez p1, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    invoke-virtual {p1}, Lct/cy;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lct/cy;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    .line 692
    iget v0, p0, Lct/cb;->b:I

    if-ne v0, v8, :cond_10

    invoke-virtual {p1}, Lct/cy;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lct/cy;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lct/da;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v8

    .line 694
    :goto_1
    invoke-static {p1, v0}, Lct/cy;->a(Lct/cy;I)Lct/cy;

    .line 697
    :cond_2
    invoke-direct {p0}, Lct/cb;->o()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 700
    iget v0, p0, Lct/cb;->K:I

    if-eqz v0, :cond_f

    move v0, v8

    .line 703
    :goto_2
    iput v9, p0, Lct/cb;->K:I

    .line 704
    iput-object p1, p0, Lct/cb;->G:Lct/cy;

    .line 705
    invoke-virtual {p1}, Lct/cy;->getAccuracy()F

    move-result v1

    const v2, 0x459c4000    # 5000.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p1}, Lct/cy;->getAccuracy()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 706
    iget-object v1, p0, Lct/cb;->l:Lct/cg;

    invoke-virtual {v1, p1}, Lct/cg;->a(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 707
    iget-boolean v1, p0, Lct/cb;->w:Z

    if-eqz v1, :cond_3

    .line 708
    iput-object p1, p0, Lct/cb;->B:Lcom/tencent/map/geolocation/TencentLocation;

    .line 710
    :cond_3
    invoke-virtual {p1}, Lct/cy;->getLatitude()D

    move-result-wide v2

    iput-wide v2, p0, Lct/cb;->H:D

    .line 711
    invoke-virtual {p1}, Lct/cy;->getLongitude()D

    move-result-wide v2

    iput-wide v2, p0, Lct/cb;->I:D

    .line 712
    iget-object v1, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v1}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 713
    iget-object v1, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    const/16 v1, 0x2edf

    iget-object v2, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lct/cb;->a(IJ)V

    .line 715
    :cond_4
    if-eqz v0, :cond_5

    .line 716
    invoke-direct {p0, v10}, Lct/cb;->b(I)V

    .line 767
    :cond_5
    :goto_3
    iget v0, p0, Lct/cb;->K:I

    if-eqz v0, :cond_e

    move v0, v8

    .line 770
    :goto_4
    iget v1, p0, Lct/cb;->K:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lct/cb;->G:Lct/cy;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lct/cb;->G:Lct/cy;

    invoke-virtual {v1}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v8

    .line 775
    :cond_6
    iput v9, p0, Lct/cb;->K:I

    .line 776
    iput-object p1, p0, Lct/cb;->G:Lct/cy;

    .line 777
    iget-object v1, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    iget-object v1, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v1}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 778
    invoke-direct {p0, v10}, Lct/cb;->b(I)V

    .line 780
    :cond_7
    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    invoke-direct {p0, v10}, Lct/cb;->b(I)V

    goto/16 :goto_0

    .line 718
    :cond_8
    invoke-virtual {p1}, Lct/cy;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lct/cy;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lct/cy;->getLatitude()D

    move-result-wide v0

    iget-wide v2, p0, Lct/cb;->H:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_5

    invoke-virtual {p1}, Lct/cy;->getLongitude()D

    move-result-wide v0

    iget-wide v2, p0, Lct/cb;->I:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_5

    .line 722
    iget-object v0, p0, Lct/cb;->l:Lct/cg;

    iget-object v1, p0, Lct/cb;->q:Lct/bk;

    iget-object v2, p0, Lct/cb;->g:Lct/ca;

    invoke-virtual {v2}, Lct/ca;->c()Z

    invoke-virtual {v0, p1, v1}, Lct/cg;->a(Lcom/tencent/map/geolocation/TencentLocation;Lct/bk;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "discard "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 741
    :cond_9
    invoke-virtual {p1}, Lct/cy;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lct/cb;->H:D

    .line 742
    invoke-virtual {p1}, Lct/cy;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lct/cb;->I:D

    .line 744
    invoke-virtual {p1}, Lct/cy;->getAccuracy()F

    move-result v0

    const v1, 0x459c4000    # 5000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    invoke-virtual {p1}, Lct/cy;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 745
    iget-object v0, p0, Lct/cb;->l:Lct/cg;

    invoke-virtual {v0}, Lct/cg;->b()V

    .line 746
    iget-object v0, p0, Lct/cb;->l:Lct/cg;

    invoke-virtual {v0, p1}, Lct/cg;->a(Lcom/tencent/map/geolocation/TencentLocation;)V

    .line 747
    iget-boolean v0, p0, Lct/cb;->w:Z

    if-eqz v0, :cond_5

    .line 748
    iget-object v0, p0, Lct/cb;->B:Lcom/tencent/map/geolocation/TencentLocation;

    if-eqz v0, :cond_d

    .line 749
    iget-object v0, p0, Lct/cb;->B:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v0}, Lcom/tencent/map/geolocation/TencentLocation;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lct/cb;->B:Lcom/tencent/map/geolocation/TencentLocation;

    invoke-interface {v2}, Lcom/tencent/map/geolocation/TencentLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lct/cy;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lct/cy;->getLongitude()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lct/b$a;->a(DDDD)D

    move-result-wide v0

    .line 750
    invoke-virtual {p1}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double v2, v0, v2

    if-gtz v2, :cond_b

    :cond_a
    invoke-virtual {p1}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_5

    .line 751
    :cond_b
    iget-wide v2, p0, Lct/cb;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lct/cb;->x:D

    .line 752
    invoke-virtual {p1}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 753
    iget v0, p0, Lct/cb;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/cb;->z:I

    .line 757
    :goto_5
    iget v0, p0, Lct/cb;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/cb;->A:I

    .line 758
    iput-object p1, p0, Lct/cb;->B:Lcom/tencent/map/geolocation/TencentLocation;

    goto/16 :goto_3

    .line 755
    :cond_c
    iget v0, p0, Lct/cb;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/cb;->y:I

    goto :goto_5

    .line 761
    :cond_d
    iput-object p1, p0, Lct/cb;->B:Lcom/tencent/map/geolocation/TencentLocation;

    goto/16 :goto_3

    :cond_e
    move v0, v9

    goto/16 :goto_4

    :cond_f
    move v0, v9

    goto/16 :goto_2

    :cond_10
    move v0, v9

    goto/16 :goto_1
.end method

.method static synthetic c(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object v0
.end method

.method static synthetic c(Lct/cb;Lct/cy;)Lct/cy;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lct/cb;->J:Lct/cy;

    return-object p1
.end method

.method static synthetic d(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationRequest;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    return-object v0
.end method

.method static synthetic e(Lct/cb;)Lct/cy;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    return-object v0
.end method

.method static synthetic f(Lct/cb;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lct/cb;->K:I

    return v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lct/cb;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lct/cb;->w:Z

    return v0
.end method

.method static synthetic h()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lct/cb;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic h(Lct/cb;)Lcom/tencent/map/geolocation/TencentDistanceListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->C:Lcom/tencent/map/geolocation/TencentDistanceListener;

    return-object v0
.end method

.method static synthetic i(Lct/cb;)D
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lct/cb;->x:D

    return-wide v0
.end method

.method private i()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 208
    .line 209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 210
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 211
    new-instance v0, Lct/cb$1;

    invoke-direct {v0, p0}, Lct/cb$1;-><init>(Lct/cb;)V

    .line 224
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 225
    const-wide/16 v4, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 232
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 235
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    .line 232
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v0, v1

    .line 233
    goto :goto_0

    .line 229
    :catch_1
    move-exception v0

    .line 232
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v0, v1

    .line 233
    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private j()Lct/ca;
    .locals 2
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lct/ca;

    iget-object v1, p0, Lct/cb;->q:Lct/bk;

    invoke-direct {v0, v1}, Lct/ca;-><init>(Lct/bk;)V

    goto :goto_0
.end method

.method static synthetic j(Lct/cb;)Lct/ch;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->h:Lct/ch;

    return-object v0
.end method

.method private k()Lct/ch;
    .locals 2
    .annotation build Lorg/eclipse/jdt/annotation/Nullable;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lct/ch;

    iget-object v1, p0, Lct/cb;->q:Lct/bk;

    invoke-direct {v0, v1}, Lct/ch;-><init>(Lct/bk;)V

    goto :goto_0
.end method

.method static synthetic k(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lct/cb;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lct/cb;)Lct/cl;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lct/cb;->o:Lct/cn;

    iget-object v0, p0, Lct/cb;->n:Lct/cj;

    iget-object v3, p0, Lct/cb;->p:Lct/ck;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lct/cb;->p()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v1

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_5

    invoke-static {v0}, Lct/cz;->a(Lct/bk;)Landroid/telephony/CellInfo;

    move-result-object v4

    invoke-static {v4}, Lct/cz;->a(Landroid/telephony/CellInfo;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0, v4}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellInfo;)Lct/cj;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    invoke-virtual {v2, v4, v5, v6, v7}, Lct/cn;->a(JJ)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v2, v1

    :cond_2
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    iget v4, v0, Lct/cj;->d:I

    iget v5, v0, Lct/cj;->e:I

    iget-object v6, v3, Lct/ck;->a:Landroid/location/Location;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "lac"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "cid"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v8, "location"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v6, p0, Lct/cb;->q:Lct/bk;

    const-string v8, "cell"

    invoke-virtual {v6, v8}, Lct/bk;->a(Ljava/lang/String;)Lct/bo;

    move-result-object v6

    invoke-virtual {v6, v7}, Lct/bo;->b(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "getFromLastKnownInfo: discard bad cell("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    new-instance v0, Lct/cl;

    invoke-direct {v0, v2, v1, v3}, Lct/cl;-><init>(Lct/cn;Lct/cj;Lct/ck;)V

    return-object v0

    :cond_3
    invoke-static {v0}, Lct/cz;->b(Lct/bk;)Landroid/telephony/CellLocation;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cj;

    move-result-object v0

    invoke-static {v0}, Lct/cz;->a(Lct/cj;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lct/cz;->b(Lct/bk;)Landroid/telephony/CellLocation;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cj;

    move-result-object v0

    invoke-static {v0}, Lct/cz;->a(Lct/cj;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method private l()V
    .locals 12

    .prologue
    const-wide/16 v2, 0x1388

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 471
    iget-object v4, p0, Lct/cb;->q:Lct/bk;

    invoke-virtual {v4, p0}, Lct/bk;->a(Ljava/lang/Object;)V

    .line 472
    iget-object v4, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v4}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "use_network"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 473
    iget-object v6, p0, Lct/cb;->c:Lct/cb$a;

    .line 475
    iget-object v4, p0, Lct/cb;->j:Lct/cd;

    invoke-virtual {v4}, Lct/cd;->a()V

    .line 476
    iget-object v4, p0, Lct/cb;->k:Lct/cf;

    iget-boolean v7, v4, Lct/cf;->g:Z

    if-nez v7, :cond_0

    iput-boolean v0, v4, Lct/cf;->g:Z

    iput-object v6, v4, Lct/cf;->h:Landroid/os/Handler;

    iget-object v7, v4, Lct/cf;->b:Lct/bk;

    invoke-virtual {v7}, Lct/bk;->h()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v8, Lct/cf$1;

    invoke-direct {v8, v4, v6}, Lct/cf$1;-><init>(Lct/cf;Landroid/os/Handler;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v4, Lct/cf;->f:J

    .line 477
    :cond_0
    iget-object v7, p0, Lct/cb;->k:Lct/cf;

    iget-object v4, p0, Lct/cb;->q:Lct/bk;

    invoke-static {}, Lct/bk;->i()Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_7

    .line 480
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lct/cb;->f:Z

    if-eqz v4, :cond_8

    .line 481
    if-eqz v5, :cond_2

    iget-object v4, p0, Lct/cb;->e:Lct/b;

    invoke-static {v4}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    iget-object v4, p0, Lct/cb;->e:Lct/b;

    invoke-virtual {v4}, Lct/b;->a()V

    .line 489
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    iget-object v4, p0, Lct/cb;->h:Lct/ch;

    invoke-static {v4}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 490
    iget-object v4, p0, Lct/cb;->h:Lct/ch;

    invoke-virtual {v4, v6}, Lct/ch;->a(Landroid/os/Handler;)V

    .line 492
    :cond_3
    iget-object v4, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v4}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "daemon"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 493
    iput-boolean v0, p0, Lct/cb;->M:Z

    .line 494
    :cond_4
    iget-object v4, p0, Lct/cb;->g:Lct/ca;

    invoke-static {v4}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v4}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowGPS()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 496
    iget-object v4, p0, Lct/cb;->g:Lct/ca;

    iget v5, p0, Lct/cb;->b:I

    if-ne v5, v0, :cond_9

    :goto_2
    invoke-virtual {v4, v0}, Lct/ca;->a(Z)V

    .line 498
    iget-object v0, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 499
    iget-object v0, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    .line 501
    :goto_3
    iget-object v2, p0, Lct/cb;->g:Lct/ca;

    iget-object v3, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "daemon"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lct/ca;->a(JZ)V

    .line 503
    :cond_5
    iget-object v0, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 504
    iget-object v0, p0, Lct/cb;->i:Lct/by;

    invoke-virtual {v0, v6}, Lct/by;->a(Landroid/os/Handler;)V

    .line 506
    :cond_6
    return-void

    .line 477
    :cond_7
    const/4 v4, 0x0

    :try_start_1
    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lct/cf;->a([B)[B

    move-result-object v4

    const/4 v8, 0x2

    invoke-static {v4, v8}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([BI)I

    new-instance v8, Lct/cf$a;

    const/4 v9, 0x2

    const-string v10, "http://ue.indoorloc.map.qq.com"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v4, v10, v11}, Lct/cf$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    iput-object v4, v8, Lct/cf$a;->b:Ljava/lang/String;

    invoke-static {v8}, Lct/cf$a;->a(Lct/cf$a;)[B

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, v7, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v4

    :goto_4
    if-nez v4, :cond_1

    iget-object v4, v7, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v4, v7, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 485
    :cond_8
    if-eqz v5, :cond_2

    iget-object v4, p0, Lct/cb;->d:Lct/bw;

    invoke-static {v4}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    iget-object v4, p0, Lct/cb;->d:Lct/bw;

    invoke-virtual {v4}, Lct/bw;->a()V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 496
    goto :goto_2

    :catch_1
    move-exception v4

    goto/16 :goto_0

    :cond_a
    move-wide v0, v2

    goto :goto_3

    :cond_b
    move v4, v1

    goto :goto_4
.end method

.method static synthetic m(Lct/cb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->P:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 639
    sput-boolean v10, Lct/cz;->a:Z

    .line 640
    iget-object v0, p0, Lct/cb;->j:Lct/cd;

    invoke-virtual {v0}, Lct/cd;->b()V

    .line 641
    iget-object v0, p0, Lct/cb;->k:Lct/cf;

    iget-boolean v1, v0, Lct/cf;->g:Z

    if-eqz v1, :cond_1

    iput-boolean v10, v0, Lct/cf;->g:Z

    iget-object v1, v0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v1, v0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Lct/cf$a;->d:Lct/cf$a;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-wide v2, v0, Lct/cf;->f:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lct/cf;->f:J

    sub-long/2addr v2, v4

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "shutdown: duration=%ds, sent=%dB, recv=%dB, reqCount=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v10

    const/4 v2, 0x1

    iget-wide v6, v0, Lct/cf;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    iget-wide v6, v0, Lct/cf;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    iget-wide v6, v0, Lct/cf;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iput-wide v8, v0, Lct/cf;->c:J

    iput-wide v8, v0, Lct/cf;->d:J

    iput-wide v8, v0, Lct/cf;->e:J

    iput-wide v8, v0, Lct/cf;->f:J

    .line 642
    :cond_1
    iget-object v0, p0, Lct/cb;->l:Lct/cg;

    invoke-virtual {v0}, Lct/cg;->a()V

    .line 644
    iget-object v0, p0, Lct/cb;->h:Lct/ch;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lct/cb;->h:Lct/ch;

    invoke-virtual {v0}, Lct/ch;->a()V

    .line 647
    :cond_2
    iget-boolean v0, p0, Lct/cb;->f:Z

    if-eqz v0, :cond_6

    .line 648
    iget-object v0, p0, Lct/cb;->e:Lct/b;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Lct/cb;->e:Lct/b;

    invoke-virtual {v0}, Lct/b;->b()V

    .line 656
    :cond_3
    :goto_0
    iget-object v0, p0, Lct/cb;->g:Lct/ca;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lct/cb;->g:Lct/ca;

    invoke-virtual {v0}, Lct/ca;->a()V

    .line 659
    :cond_4
    iget-object v0, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->isAllowDirection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    iget-object v0, p0, Lct/cb;->i:Lct/by;

    invoke-virtual {v0}, Lct/by;->a()V

    .line 662
    :cond_5
    return-void

    .line 652
    :cond_6
    iget-object v0, p0, Lct/cb;->d:Lct/bw;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 653
    iget-object v0, p0, Lct/cb;->d:Lct/bw;

    invoke-virtual {v0}, Lct/bw;->b()V

    goto :goto_0
.end method

.method private n()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 669
    iput-object v0, p0, Lct/cb;->o:Lct/cn;

    .line 670
    iput-object v0, p0, Lct/cb;->n:Lct/cj;

    .line 671
    iput-object v0, p0, Lct/cb;->p:Lct/ck;

    .line 672
    const/4 v0, 0x0

    sput v0, Lct/cl;->a:I

    .line 674
    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    const-string v1, "cell"

    invoke-virtual {v0, v1}, Lct/bk;->a(Ljava/lang/String;)Lct/bo;

    move-result-object v0

    invoke-virtual {v0}, Lct/bo;->a()V

    .line 675
    return-void
.end method

.method static synthetic n(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lct/cb;->u:Z

    return v0
.end method

.method static synthetic o(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object v0
.end method

.method private o()Z
    .locals 2

    .prologue
    .line 788
    iget v0, p0, Lct/cb;->K:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic p(Lct/cb;)Lcom/tencent/map/geolocation/TencentLocationListener;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    return-object v0
.end method

.method private p()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 796
    .line 797
    iget-object v1, p0, Lct/cb;->g:Lct/ca;

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lct/cb;->g:Lct/ca;

    invoke-virtual {v1}, Lct/ca;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lct/cb;->g:Lct/ca;

    invoke-virtual {v1}, Lct/ca;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 800
    :cond_0
    return v0
.end method

.method static synthetic q(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/cb;->u:Z

    return v0
.end method

.method static synthetic r(Lct/cb;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lct/cb;->b:I

    return v0
.end method

.method static synthetic s(Lct/cb;)Lct/cf;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->k:Lct/cf;

    return-object v0
.end method

.method static synthetic t(Lct/cb;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lct/cb;->N:J

    return-wide v0
.end method

.method static synthetic u(Lct/cb;)J
    .locals 2

    .prologue
    .line 69
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lct/cb;->N:J

    return-wide v0
.end method

.method static synthetic v(Lct/cb;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lct/cb;->O:J

    return-wide v0
.end method

.method static synthetic w(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lct/cb;->M:Z

    return v0
.end method

.method static synthetic x(Lct/cb;)Z
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lct/cb;->p()Z

    move-result v0

    return v0
.end method

.method static synthetic y(Lct/cb;)Lct/bm;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->m:Lct/bm;

    return-object v0
.end method

.method static synthetic z(Lct/cb;)Lct/cj;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lct/cb;->n:Lct/cj;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/map/geolocation/TencentDistanceListener;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 328
    iget-object v1, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return v0

    .line 330
    :cond_0
    iget-boolean v1, p0, Lct/cb;->w:Z

    if-eqz v1, :cond_1

    .line 331
    const/4 v0, 0x2

    goto :goto_0

    .line 333
    :cond_1
    iput-boolean v0, p0, Lct/cb;->w:Z

    .line 334
    iput-object p1, p0, Lct/cb;->C:Lcom/tencent/map/geolocation/TencentDistanceListener;

    .line 335
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 342
    iget-boolean v0, p0, Lct/cb;->u:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lct/cb;->K:I

    if-nez v0, :cond_0

    .line 346
    iget-object v2, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    iget-object v3, p0, Lct/cb;->G:Lct/cy;

    iget v4, p0, Lct/cb;->K:I

    sget-object v0, Lct/cb;->a:Landroid/util/SparseArray;

    iget v5, p0, Lct/cb;->K:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 347
    iput-object v7, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 348
    :cond_0
    iput-boolean v6, p0, Lct/cb;->u:Z

    .line 353
    if-eqz p1, :cond_4

    .line 354
    iput-object p1, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 360
    iget v0, p0, Lct/cb;->K:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    invoke-virtual {v0}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    invoke-virtual {v0}, Lct/cy;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x15f90

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    invoke-virtual {v0}, Lct/cy;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v2, "network"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    invoke-virtual {v0}, Lct/cy;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-gtz v0, :cond_5

    .line 370
    :cond_2
    iget-object v0, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    if-eqz v0, :cond_3

    .line 371
    iget-object v2, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    iget-object v3, p0, Lct/cb;->G:Lct/cy;

    iget v4, p0, Lct/cb;->K:I

    sget-object v0, Lct/cb;->a:Landroid/util/SparseArray;

    iget v5, p0, Lct/cb;->K:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    .line 372
    iput-object v7, p0, Lct/cb;->s:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 373
    :cond_3
    iput-boolean v1, p0, Lct/cb;->u:Z

    .line 398
    :goto_0
    return v1

    .line 356
    :cond_4
    iput-boolean v1, p0, Lct/cb;->u:Z

    .line 358
    const/4 v1, 0x4

    goto :goto_0

    .line 378
    :cond_5
    sget-object v0, Lct/cb;->t:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lct/cb;->t:Ljava/lang/String;

    const-string v2, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 379
    iput-boolean v1, p0, Lct/cb;->v:Z

    .line 380
    const/16 v0, 0xf9d

    invoke-direct {p0, v0}, Lct/cb;->b(I)V

    move v0, v1

    :goto_1
    move v1, v0

    .line 398
    goto :goto_0

    .line 383
    :cond_6
    iput-boolean v6, p0, Lct/cb;->v:Z

    .line 384
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    .line 385
    new-instance v1, Lct/cb$2;

    invoke-direct {v1}, Lct/cb$2;-><init>()V

    .line 396
    invoke-virtual {p0, v0, v1, p2}, Lct/cb;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    move-result v0

    goto :goto_1
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 406
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->isLoadLibraryEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    :try_start_0
    const-string v0, "tencentloc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_0
    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    .line 420
    invoke-virtual {v0}, Lct/bk;->g()Lct/bl;

    move-result-object v3

    .line 422
    iget-object v0, v3, Lct/bl;->h:Ljava/lang/String;

    invoke-static {v0}, Lct/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Lct/cb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lct/cb;->P:Ljava/lang/String;

    .line 424
    iget-object v1, p0, Lct/cb;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestLocationUpdates: illegal key ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    const/4 v0, 0x2

    .line 453
    :goto_0
    return v0

    .line 413
    :catch_0
    move-exception v0

    const/4 v0, 0x3

    goto :goto_0

    .line 430
    :cond_1
    iget-boolean v0, p0, Lct/cb;->L:Z

    if-eqz v0, :cond_2

    .line 431
    const/4 v0, 0x1

    goto :goto_0

    .line 434
    :cond_2
    invoke-direct {p0}, Lct/cb;->n()V

    .line 435
    const/16 v0, 0x194

    iput v0, p0, Lct/cb;->K:I

    .line 436
    iput-object v6, p0, Lct/cb;->G:Lct/cy;

    .line 437
    iget-object v1, p0, Lct/cb;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_1
    iput-object p2, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 439
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    iget-object v0, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-static {v0, p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->copy(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationRequest;)V

    .line 441
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getQQ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lct/bl;->g:Ljava/lang/String;

    .line 443
    iget-object v0, v3, Lct/bl;->e:Ljava/lang/String;

    invoke-static {v0}, Lct/b$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lct/bl;->e:Ljava/lang/String;

    .line 446
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    const-wide/16 v0, 0x2

    :goto_1
    const-wide/16 v4, 0x1388

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v3, Lct/bl;->m:J

    .line 448
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_4
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-static {v0}, Lct/b$a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lct/cb$a;

    invoke-direct {v0, p0, p3}, Lct/cb$a;-><init>(Lct/cb;Landroid/os/Looper;)V

    iput-object v0, p0, Lct/cb;->c:Lct/cb$a;

    .line 449
    :cond_5
    :goto_2
    invoke-direct {p0}, Lct/cb;->m()V

    .line 450
    const-string v0, "start"

    sput-object v0, Lct/cb;->t:Ljava/lang/String;

    .line 451
    iput-boolean v2, p0, Lct/cb;->v:Z

    .line 452
    invoke-direct {p0}, Lct/cb;->l()V

    move v0, v2

    .line 453
    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 446
    :cond_6
    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v0

    goto :goto_1

    .line 448
    :cond_7
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-virtual {v0, v6}, Lct/cb$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-virtual {v0}, Lct/cb$a;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v0, p3, :cond_5

    new-instance v0, Lct/cb$a;

    invoke-direct {v0, p0, p3}, Lct/cb$a;-><init>(Lct/cb;Landroid/os/Looper;)V

    iput-object v0, p0, Lct/cb;->c:Lct/cb$a;

    goto :goto_2
.end method

.method public final a()Lcom/tencent/map/geolocation/TencentLocation;
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Lct/cb;->K:I

    if-nez v0, :cond_0

    .line 523
    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    invoke-direct {p0, v0}, Lct/cb;->a(Lct/cy;)V

    .line 524
    iget-object v0, p0, Lct/cb;->G:Lct/cy;

    .line 526
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 858
    iget v0, p0, Lct/cb;->b:I

    if-ne v0, p1, :cond_0

    .line 871
    :goto_0
    return-void

    .line 861
    :cond_0
    iput p1, p0, Lct/cb;->b:I

    goto :goto_0
.end method

.method public final b()Lcom/tencent/map/geolocation/TencentDistanceAnalysis;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 543
    iput-object v2, p0, Lct/cb;->C:Lcom/tencent/map/geolocation/TencentDistanceListener;

    .line 544
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/cb;->x:D

    .line 545
    iput-boolean v6, p0, Lct/cb;->w:Z

    .line 546
    iput-object v2, p0, Lct/cb;->B:Lcom/tencent/map/geolocation/TencentLocation;

    .line 547
    new-instance v0, Lct/ct;

    invoke-direct {v0}, Lct/ct;-><init>()V

    .line 548
    iget v1, p0, Lct/cb;->y:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v2, v1

    iget v1, p0, Lct/cb;->A:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 549
    const/4 v1, 0x4

    invoke-static {v2, v3, v1}, Lct/b$a;->a(DI)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lct/ct;->a(D)V

    .line 550
    iget v1, p0, Lct/cb;->y:I

    invoke-virtual {v0, v1}, Lct/ct;->a(I)V

    .line 551
    iget v1, p0, Lct/cb;->z:I

    invoke-virtual {v0, v1}, Lct/ct;->b(I)V

    .line 552
    iput v6, p0, Lct/cb;->y:I

    .line 553
    iput v6, p0, Lct/cb;->z:I

    .line 554
    iput v6, p0, Lct/cb;->A:I

    .line 555
    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 558
    invoke-direct {p0}, Lct/cb;->m()V

    .line 559
    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    invoke-virtual {v0, p0}, Lct/bk;->b(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-static {v0}, Lct/b$a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    invoke-virtual {v0}, Lct/cb$a;->a()V

    .line 563
    :cond_0
    iget-object v1, p0, Lct/cb;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 564
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lct/cb;->r:Lcom/tencent/map/geolocation/TencentLocationListener;

    .line 565
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    iget-object v0, p0, Lct/cb;->m:Lct/bm;

    invoke-interface {v0}, Lct/bm;->a()V

    .line 567
    invoke-direct {p0}, Lct/cb;->n()V

    .line 568
    const-string v0, "stop"

    sput-object v0, Lct/cb;->t:Ljava/lang/String;

    .line 569
    return-void

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 621
    sget-object v0, Lct/cb;->t:Ljava/lang/String;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-direct {p0}, Lct/cb;->l()V

    .line 623
    const-string v0, "start"

    sput-object v0, Lct/cb;->t:Ljava/lang/String;

    .line 624
    const-string v0, "success"

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "warning!!!resume failed.only when the machine has paused, can resume!"

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 630
    sget-object v0, Lct/cb;->t:Ljava/lang/String;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-direct {p0}, Lct/cb;->m()V

    .line 632
    const-string v0, "pause"

    sput-object v0, Lct/cb;->t:Ljava/lang/String;

    .line 633
    const-string v0, "success"

    .line 635
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "warning!!!pause failed.only when the machine has started, can pause!"

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lct/cb;->b:I

    return v0
.end method

.method public final onCellInfoEvent(Lct/cj;)V
    .locals 13

    .prologue
    const/16 v12, 0xf9f

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 893
    iget v5, p1, Lct/cj;->e:I

    iget v6, p1, Lct/cj;->f:I

    iget-object v2, p0, Lct/cb;->n:Lct/cj;

    if-eqz v2, :cond_6

    iget v0, v2, Lct/cj;->f:I

    iget v2, v2, Lct/cj;->e:I

    :goto_0
    iput-object p1, p0, Lct/cb;->n:Lct/cj;

    iget-object v3, p0, Lct/cb;->h:Lct/ch;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lct/cb;->h:Lct/ch;

    invoke-virtual {v3}, Lct/ch;->b()I

    move-result v3

    :goto_1
    if-eqz v3, :cond_0

    const/4 v7, 0x0

    iput-object v7, p0, Lct/cb;->o:Lct/cn;

    :cond_0
    if-nez v3, :cond_3

    iget-object v7, p0, Lct/cb;->o:Lct/cn;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lct/cb;->o:Lct/cn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x7530

    invoke-virtual {v7, v8, v9, v10, v11}, Lct/cn;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    iget-object v7, p0, Lct/cb;->c:Lct/cb$a;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lct/cb;->c:Lct/cb$a;

    const-string v8, "wifi_not_received"

    invoke-virtual {v7, v12, v8}, Lct/cb$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, p0, Lct/cb;->c:Lct/cb$a;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v7, v10, v11}, Lct/cb$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_2
    const-string v7, "onCellChanged: %d(%d)-->%d(%d) (%d)%s"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v4

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v1, 0x5

    if-nez v3, :cond_4

    const-string v0, "scan wifi"

    :goto_3
    aput-object v0, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 894
    return-void

    .line 893
    :cond_3
    invoke-direct {p0, v12}, Lct/cb;->b(I)V

    goto :goto_2

    :cond_4
    const-string v0, "prepare json. wifi is not scannable?"

    goto :goto_3

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method public final onGpsInfoEvent(Lct/ck;)V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    .line 901
    iget-object v2, p1, Lct/ck;->a:Landroid/location/Location;

    sget-object v3, Lct/bx;->b:Landroid/location/Location;

    if-eq v2, v3, :cond_1

    iput-object p1, p0, Lct/cb;->p:Lct/ck;

    invoke-static {}, Lct/bz;->a()Lct/bz;

    move-result-object v2

    invoke-virtual {v2, p1}, Lct/bz;->a(Lct/ck;)I

    iget v4, p0, Lct/cb;->b:I

    iget-object v2, p0, Lct/cb;->F:Lcom/tencent/map/geolocation/TencentLocationRequest;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v5

    iget-object v6, p0, Lct/cb;->J:Lct/cy;

    new-instance v7, Landroid/location/Location;

    iget-object v2, p1, Lct/ck;->a:Landroid/location/Location;

    invoke-direct {v7, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v7}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v0, "lat"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "lng"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    invoke-static {v4}, Lct/b$a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lct/cy$a;

    invoke-direct {v4}, Lct/cy$a;-><init>()V

    iput-object v6, v4, Lct/cy$a;->b:Lct/cy;

    const-string v6, "gps"

    iput-object v6, v4, Lct/cy$a;->d:Ljava/lang/String;

    iput v5, v4, Lct/cy$a;->c:I

    new-instance v5, Landroid/location/Location;

    iget-object v6, p1, Lct/ck;->a:Landroid/location/Location;

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v4, v5}, Lct/cy$a;->a(Landroid/location/Location;)Lct/cy$a;

    move-result-object v4

    invoke-virtual {v4}, Lct/cy$a;->a()Lct/cy;

    move-result-object v4

    invoke-virtual {v7, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v4, v7}, Lct/cy;->a(Landroid/location/Location;)V

    invoke-direct {p0, v4}, Lct/cb;->b(Lct/cy;)V

    :goto_1
    iget-object v0, p0, Lct/cb;->g:Lct/ca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb;->g:Lct/ca;

    invoke-virtual {v0}, Lct/ca;->b()Z

    :cond_0
    iget-object v0, p0, Lct/cb;->m:Lct/bm;

    .line 902
    :cond_1
    return-void

    .line 901
    :cond_2
    invoke-direct {p0}, Lct/cb;->o()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xf9f

    invoke-direct {p0, v4}, Lct/cb;->b(I)V

    :cond_3
    new-instance v4, Lct/cy$a;

    invoke-direct {v4}, Lct/cy$a;-><init>()V

    iput-object v6, v4, Lct/cy$a;->b:Lct/cy;

    const-string v6, "gps"

    iput-object v6, v4, Lct/cy$a;->d:Ljava/lang/String;

    iput v5, v4, Lct/cy$a;->c:I

    new-instance v5, Landroid/location/Location;

    iget-object v6, p1, Lct/ck;->a:Landroid/location/Location;

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v4, v5}, Lct/cy$a;->a(Landroid/location/Location;)Lct/cy$a;

    move-result-object v4

    invoke-virtual {v4}, Lct/cy$a;->a()Lct/cy;

    move-result-object v4

    invoke-virtual {v7, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    invoke-virtual {v7, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    invoke-virtual {v4, v7}, Lct/cy;->a(Landroid/location/Location;)V

    invoke-direct {p0, v4}, Lct/cb;->b(Lct/cy;)V

    const/16 v0, 0x2ee4

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lct/cb;->a(II)V

    goto :goto_1

    :cond_4
    move-wide v2, v0

    goto :goto_0
.end method

.method public final onNetworkEvent(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 909
    iget-object v0, p0, Lct/cb;->q:Lct/bk;

    iget-object v0, v0, Lct/bk;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/b$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 910
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 922
    :goto_0
    :pswitch_0
    return-void

    .line 916
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetworkEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 920
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetworkEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 921
    const/16 v0, 0x1f3f

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v2, v3}, Lct/cb;->a(IJ)V

    goto :goto_0

    .line 910
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onStatusEvent(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 905
    iget v0, p1, Landroid/os/Message;->what:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lct/cb;->a(II)V

    .line 906
    return-void
.end method

.method public final onWifiInfoEvent(Lct/cn;)V
    .locals 4

    .prologue
    const/16 v2, 0xf9f

    .line 897
    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/cb;->c:Lct/cb$a;

    const-string v1, "wifi_not_received"

    invoke-virtual {v0, v2, v1}, Lct/cb$a;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    sget-object v0, Lct/cn;->a:Lct/cn;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x22b

    const-wide/16 v2, 0x5dc

    invoke-direct {p0, v0, v2, v3}, Lct/cb;->a(IJ)V

    .line 898
    :goto_0
    return-void

    .line 897
    :cond_1
    iget-object v0, p0, Lct/cb;->o:Lct/cn;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lct/cb;->D:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lct/cn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lct/cb;->o:Lct/cn;

    invoke-static {}, Lct/cn;->b()Z

    :cond_2
    invoke-direct {p0, v2}, Lct/cb;->b(I)V

    iput-object p1, p0, Lct/cb;->o:Lct/cn;

    goto :goto_0
.end method
