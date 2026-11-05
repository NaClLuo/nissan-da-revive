.class final Lct/cf$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/os/Handler;

.field private synthetic b:Lct/cf;


# direct methods
.method constructor <init>(Lct/cf;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lct/cf$1;->b:Lct/cf;

    iput-object p2, p0, Lct/cf$1;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    .line 165
    iget-object v0, p0, Lct/cf$1;->b:Lct/cf;

    iget-object v0, v0, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 166
    iget-object v4, p0, Lct/cf$1;->b:Lct/cf;

    iget-object v5, p0, Lct/cf$1;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iget-object v6, v4, Lct/cf;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v1, v0

    :goto_0
    iget-boolean v0, v4, Lct/cf;->g:Z

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/cf$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v1, Lct/cf$a;->d:Lct/cf$a;

    if-ne v1, v0, :cond_1

    .line 167
    :cond_0
    return-void

    .line 166
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "request:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lct/cf$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, v4, Lct/cf;->b:Lct/bk;

    invoke-static {v0}, Lct/cf$a;->b(Lct/cf$a;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Lct/cf$a;->a(Lct/cf$a;)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lct/bk;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "cost:"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v10, "request:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-wide v10, v4, Lct/cf;->c:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v4, Lct/cf;->c:J

    iget-wide v10, v4, Lct/cf;->d:J

    invoke-static {v0}, Lct/cf$a;->a(Lct/cf$a;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v12, v1

    add-long/2addr v10, v12

    iput-wide v10, v4, Lct/cf;->d:J

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lct/b$a;->a([B)[B

    move-result-object v1

    iget-wide v10, v4, Lct/cf;->e:J

    if-eqz v1, :cond_3

    array-length v1, v1

    :goto_1
    int-to-long v12, v1

    add-long/2addr v10, v12

    iput-wide v10, v4, Lct/cf;->e:J

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    long-to-int v8, v8

    iput v8, v1, Landroid/os/Message;->arg1:I

    iput-wide v2, v0, Lct/cf$a;->c:J

    const/4 v8, 0x1

    invoke-static {v0}, Lct/cf$a;->d(Lct/cf$a;)I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-static {v7, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    iput-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v7, 0x1387

    iput v7, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    move-object v1, v0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "cost:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",run: io error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v4, v0}, Lct/cf;->a(Lct/cf$a;)V

    const/16 v1, 0x1386

    const-wide/16 v2, 0x0

    invoke-virtual {v5, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v1, v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method
