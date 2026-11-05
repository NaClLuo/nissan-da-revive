.class final Lct/cf;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/cf$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lct/cf$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lct/bk;

.field c:J

.field d:J

.field e:J

.field f:J

.field volatile g:Z

.field h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lct/bk;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lct/cf;->b:Lct/bk;

    .line 57
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 59
    return-void
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, v0}, Lcom/tencent/tencentmap/lbssdk/service/e;->o([BI)I

    move-result v0

    if-gez v0, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lct/bx;->a(II)Ljava/lang/String;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    .line 309
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lct/bx;->a(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([B)[B
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 97
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 98
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 100
    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 101
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 102
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 103
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 110
    :goto_0
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_2

    .line 104
    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method final a(Lct/cf$a;)V
    .locals 4

    .prologue
    .line 258
    invoke-static {p1}, Lct/cf$a;->c(Lct/cf$a;)I

    .line 260
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/cf$a;

    .line 262
    invoke-static {v0}, Lct/cf$a;->d(Lct/cf$a;)I

    move-result v0

    invoke-static {p1}, Lct/cf$a;->d(Lct/cf$a;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 268
    :goto_0
    invoke-static {p1}, Lct/cf$a;->e(Lct/cf$a;)I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retryIfNeed: times="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lct/cf$a;->e(Lct/cf$a;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lct/cl;I)V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 124
    :try_start_0
    const-string v0, "GBK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lct/b$a;->a([B)[B

    move-result-object v0

    .line 125
    invoke-static {v0, p3}, Lct/cf;->a([BI)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v2, Lct/cf$a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1, p2}, Lct/cf$a;-><init>(I[BLjava/lang/String;Ljava/lang/Object;)V

    .line 129
    iput-object p1, v2, Lct/cf$a;->b:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    .line 133
    invoke-static {v2}, Lct/cf$a;->a(Lct/cf$a;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    :cond_0
    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 140
    iget-object v0, p0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lct/cf;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lct/cf;->h:Landroid/os/Handler;

    const/16 v1, 0x1386

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
