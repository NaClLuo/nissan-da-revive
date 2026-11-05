.class public final Lct/cg;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/cg$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lct/cg$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lct/bv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lct/cg;->c:Ljava/util/LinkedList;

    .line 46
    const/16 v0, 0xa

    iput v0, p0, Lct/cg;->a:I

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lct/cg;->b:I

    .line 48
    new-instance v0, Lct/bv;

    invoke-direct {v0}, Lct/bv;-><init>()V

    iput-object v0, p0, Lct/cg;->d:Lct/bv;

    .line 52
    return-void
.end method

.method private declared-synchronized a(Lct/cg$a;Lct/bk;)Z
    .locals 14

    .prologue
    .line 187
    monitor-enter p0

    if-nez p2, :cond_0

    .line 188
    const/4 v2, 0x1

    .line 231
    :goto_0
    monitor-exit p0

    return v2

    .line 190
    :cond_0
    :try_start_0
    iget v2, p1, Lct/cg$a;->d:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 191
    const/4 v2, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lct/cg;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lct/cg;->b:I

    if-lt v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    .line 207
    const/4 v11, 0x0

    .line 208
    const/4 v2, 0x0

    .line 209
    iget-object v3, p0, Lct/cg;->c:Ljava/util/LinkedList;

    iget-object v4, p0, Lct/cg;->c:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v13

    move v12, v2

    .line 214
    :goto_2
    invoke-interface {v13}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 215
    invoke-interface {v13}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lct/cg$a;

    move-object v10, v0

    .line 216
    iget-wide v2, v10, Lct/cg$a;->a:D

    iget-wide v4, v10, Lct/cg$a;->b:D

    iget-wide v6, p1, Lct/cg$a;->a:D

    iget-wide v8, p1, Lct/cg$a;->b:D

    invoke-static/range {v2 .. v9}, Lct/b$a;->a(DDDD)D

    move-result-wide v2

    iget-wide v4, v10, Lct/cg$a;->c:J

    iget-wide v6, p1, Lct/cg$a;->c:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_7

    .line 217
    add-int/lit8 v2, v11, 0x1

    .line 219
    :goto_4
    add-int/lit8 v3, v12, 0x1

    .line 220
    iget v4, p0, Lct/cg;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v3, v4, :cond_6

    .line 221
    :goto_5
    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    .line 228
    const/4 v2, 0x0

    goto :goto_0

    .line 206
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 216
    :cond_3
    const/4 v2, 0x1

    goto :goto_3

    .line 231
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5
    move v2, v11

    goto :goto_5

    :cond_6
    move v12, v3

    move v11, v2

    goto :goto_2

    :cond_7
    move v2, v11

    goto :goto_4
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/cg;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 132
    iget-object v0, p0, Lct/cg;->d:Lct/bv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/map/geolocation/TencentLocation;)V
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/cg;->c:Ljava/util/LinkedList;

    invoke-static {p1}, Lct/cg$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Lct/cg$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lct/cg;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lct/cg;->a:I

    if-le v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lct/cg;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/map/geolocation/TencentLocation;Lct/bk;)Z
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lct/cg$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Lct/cg$a;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lct/cg;->a(Lct/cg$a;Lct/bk;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 0

    .prologue
    .line 156
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
