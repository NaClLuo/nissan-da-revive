.class public final Lct/ba;
.super Ljava/lang/Object;


# static fields
.field private static a:Lct/ba;


# instance fields
.field private b:I

.field private c:Ljava/net/Socket;

.field private d:I

.field private e:Lct/bb;

.field private f:Lct/s;

.field private g:Ljava/io/OutputStream;

.field private h:Ljava/io/InputStream;

.field private i:I

.field private j:I

.field private k:J

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lct/ba;

    invoke-direct {v0}, Lct/ba;-><init>()V

    sput-object v0, Lct/ba;->a:Lct/ba;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    iput v0, p0, Lct/ba;->b:I

    iput v2, p0, Lct/ba;->d:I

    iput v2, p0, Lct/ba;->i:I

    iput v2, p0, Lct/ba;->j:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lct/ba;->k:J

    iput v2, p0, Lct/ba;->l:I

    iput v2, p0, Lct/ba;->m:I

    return-void
.end method

.method public static declared-synchronized a()Lct/ba;
    .locals 2

    const-class v0, Lct/ba;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lct/ba;->a:Lct/ba;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lct/ba;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lct/ba;->d:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    iput p1, v0, Lct/bb;->b:I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    iput-object p2, v0, Lct/bb;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 12

    const/4 v11, -0x1

    const/4 v0, 0x0

    const/4 v10, 0x4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "doReadData: try read data...sk:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->b()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    :cond_0
    :goto_0
    if-ge v0, v10, :cond_1

    invoke-static {}, Lct/bd;->a()V

    iget-object v4, p0, Lct/ba;->h:Ljava/io/InputStream;

    rsub-int/lit8 v5, v0, 0x4

    invoke-virtual {v4, v1, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lct/ba;->k:J

    sub-long/2addr v6, v8

    long-to-int v5, v6

    iput v5, p0, Lct/ba;->l:I

    add-int/2addr v0, v4

    if-ne v0, v10, :cond_0

    :cond_1
    if-ne v0, v10, :cond_5

    invoke-static {v1}, Lct/be;->a([B)I

    move-result v4

    if-le v4, v10, :cond_2

    const/high16 v5, 0x80000

    if-le v4, v5, :cond_6

    :cond_2
    const/4 v0, -0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "packSizeFail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lct/ba;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    if-eq v4, v11, :cond_1

    goto :goto_0

    :cond_5
    const/4 v1, -0x6

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readLen fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/ba;->a(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x7

    invoke-static {v0}, Lct/be;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/ba;->a(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_4
    new-array v5, v4, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v1, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :cond_7
    :goto_2
    if-ge v0, v4, :cond_9

    sub-int v1, v4, v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "try read:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->a()V

    iget-object v8, p0, Lct/ba;->h:Ljava/io/InputStream;

    invoke-virtual {v8, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "read ret:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->a()V

    if-lez v1, :cond_8

    add-int/2addr v0, v1

    goto :goto_2

    :cond_8
    if-ne v1, v11, :cond_7

    :cond_9
    if-eq v0, v4, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "read fail. readLen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",packSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->c()V

    const/4 v0, -0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readLen != packSize,rspBuff:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lct/be;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lct/ba;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    long-to-int v1, v6

    iput v1, p0, Lct/ba;->m:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "doSendReceive: read finish,readLen="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->b()V

    new-instance v0, Lct/bi;

    invoke-direct {v0}, Lct/bi;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0, v5}, Lct/bi;->a([B)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v1, p0, Lct/ba;->e:Lct/bb;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lct/ba;->e:Lct/bb;

    iput-object v0, v1, Lct/bb;->a:Lct/bi;

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    const/4 v1, 0x0

    iput v1, v0, Lct/bb;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lct/ba;->m:I

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    iget v1, p0, Lct/ba;->l:I

    iput v1, v0, Lct/bb;->f:I

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    iget v1, p0, Lct/ba;->j:I

    iput v1, v0, Lct/bb;->d:I

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    iget v1, p0, Lct/ba;->m:I

    iput v1, v0, Lct/bb;->g:I

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v1, -0x8

    invoke-static {v0}, Lct/be;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/ba;->a(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized b(Lct/bb;)Z
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    move v3, v1

    move v4, v1

    :cond_0
    :goto_0
    if-nez v4, :cond_4

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p1, Lct/bb;->i:J

    sub-long/2addr v6, v8

    iget v0, p1, Lct/bb;->j:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    const/4 v0, 0x5

    if-ge v3, v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0}, Lct/ba;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "doSendData try send task:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lct/bb;->k()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",sk:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->b()V

    invoke-virtual {p1}, Lct/bb;->l()[B

    move-result-object v0

    iget-object v5, p0, Lct/ba;->g:Ljava/io/OutputStream;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    iget-object v5, p0, Lct/ba;->g:Ljava/io/OutputStream;

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lct/ba;->k:J

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "doSendData: sent data len:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v5, -0x5

    :try_start_2
    iput v5, p1, Lct/bb;->b:I

    invoke-static {v0}, Lct/be;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lct/bb;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_0

    :try_start_3
    iget v0, p1, Lct/bb;->b:I

    invoke-direct {p0, v0}, Lct/ba;->a(I)V

    iget-object v0, p0, Lct/ba;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    invoke-direct {p0}, Lct/ba;->e()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    if-nez v4, :cond_2

    :try_start_5
    iget v1, p1, Lct/bb;->b:I

    invoke-direct {p0, v1}, Lct/ba;->a(I)V

    iget-object v1, p0, Lct/ba;->g:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    invoke-direct {p0}, Lct/ba;->e()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_2
    :try_start_6
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lct/ba;->e()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_4
    monitor-exit p0

    return v4
.end method

.method private declared-synchronized c()Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lct/ba;->g:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lct/ba;->h:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lct/ba;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lct/ba;->h:Ljava/io/InputStream;

    :cond_0
    :goto_0
    iget-object v0, p0, Lct/ba;->g:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v0, p0, Lct/ba;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lct/ba;->g:Ljava/io/OutputStream;

    :cond_1
    :goto_1
    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_2

    :try_start_5
    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    :cond_2
    :goto_2
    invoke-static {}, Lct/ay;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_7
    iput-object v0, p0, Lct/ba;->h:Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lct/ba;->h:Ljava/io/InputStream;

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lct/ba;->g:Ljava/io/OutputStream;

    goto :goto_1

    :catchall_2
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lct/ba;->g:Ljava/io/OutputStream;

    throw v0

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    goto :goto_2

    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private declared-synchronized e()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lct/bd;->c()V

    new-instance v0, Lct/az;

    invoke-direct {v0}, Lct/az;-><init>()V

    iget-object v1, p0, Lct/ba;->e:Lct/bb;

    iget v1, v1, Lct/bb;->j:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lct/ba;->e:Lct/bb;

    iget v1, v1, Lct/bb;->j:I

    iput v1, v0, Lct/az;->c:I

    :goto_0
    invoke-static {}, Lct/b$a;->b()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->b:Lct/d;

    iget v1, v1, Lct/d;->d:I

    if-lez v1, :cond_0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    iput v1, v0, Lct/az;->a:I

    iput v1, v0, Lct/az;->b:I

    :cond_0
    const-string v1, "dispatcher.3g.qq.com"

    sget-object v2, Lct/c;->a:[I

    iput-object v1, v0, Lct/az;->f:Ljava/lang/String;

    invoke-static {v2}, Lct/az;->a([I)V

    invoke-static {}, Lct/u;->a()Lct/u;

    move-result-object v2

    invoke-virtual {v2, v1}, Lct/u;->a(Ljava/lang/String;)Lct/t$a;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lct/t$a;->c:Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v2, v0, Lct/az;->d:Ljava/util/ArrayList;

    :cond_1
    invoke-static {}, Lct/b$a;->b()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->a:Lct/c;

    iget-wide v2, v1, Lct/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {}, Lct/b$a;->b()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->b:Lct/d;

    iget v1, v1, Lct/d;->e:I

    :cond_2
    invoke-static {}, Lct/b$a;->b()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->a:Lct/c;

    invoke-virtual {v1}, Lct/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lct/az;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lct/ba;->j:I

    invoke-virtual {v0}, Lct/az;->a()V

    iget v1, v0, Lct/az;->j:I

    iput v1, p0, Lct/ba;->i:I

    iget v1, v0, Lct/az;->k:I

    iput v1, p0, Lct/ba;->j:I

    iget-object v1, p0, Lct/ba;->e:Lct/bb;

    iget v2, p0, Lct/ba;->i:I

    iput v2, v1, Lct/bb;->e:I

    iget-object v1, p0, Lct/ba;->e:Lct/bb;

    iget v2, p0, Lct/ba;->j:I

    iput v2, v1, Lct/bb;->d:I

    iget v1, v0, Lct/az;->h:I

    if-nez v1, :cond_6

    iget-object v1, v0, Lct/az;->g:Ljava/net/Socket;

    iput-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    iget-object v0, v0, Lct/az;->l:Lct/s;

    iput-object v0, p0, Lct/ba;->f:Lct/s;

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    iget-object v1, p0, Lct/ba;->f:Lct/s;

    iput-object v1, v0, Lct/bb;->h:Lct/s;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connect ok. sk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accessIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ba;->f:Lct/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->c()V

    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    iget v1, p0, Lct/ba;->b:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lct/ba;->g:Ljava/io/OutputStream;

    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lct/ba;->h:Ljava/io/InputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reConnect socket succ. sk:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-static {}, Lct/b$a;->b()Lct/b$a;

    move-result-object v1

    iget-object v1, v1, Lct/b$a;->b:Lct/d;

    iget v1, v1, Lct/d;->a:I

    iput v1, v0, Lct/az;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reConnect socket fail. sk:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->d()V

    const/4 v1, -0x3

    invoke-static {v0}, Lct/be;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/ba;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Lct/ba;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    throw v0

    :cond_4
    iget-object v0, p0, Lct/ba;->c:Ljava/net/Socket;

    if-nez v0, :cond_5

    const/4 v0, -0x3

    const-string v1, "sk is null"

    invoke-direct {p0, v0, v1}, Lct/ba;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, -0x3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "close:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lct/ba;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lct/ba;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lct/bc;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "info.3g.qq.com"

    invoke-static {v1}, Lct/i;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, -0x3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lct/az;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",failInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lct/az;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lct/ba;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, -0x10

    invoke-direct {p0, v0}, Lct/ba;->a(I)V

    goto/16 :goto_1

    :cond_8
    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lct/ba;->a(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(Lct/bb;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iput-object p1, p0, Lct/ba;->e:Lct/bb;

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lct/bb;->i:J

    iget-object v0, p0, Lct/ba;->e:Lct/bb;

    const/16 v1, 0x55f0

    iput v1, v0, Lct/bb;->j:I

    invoke-direct {p0}, Lct/ba;->e()V

    invoke-direct {p0}, Lct/ba;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lct/ba;->b(Lct/bb;)Z

    invoke-direct {p0}, Lct/ba;->b()V

    invoke-direct {p0}, Lct/ba;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
