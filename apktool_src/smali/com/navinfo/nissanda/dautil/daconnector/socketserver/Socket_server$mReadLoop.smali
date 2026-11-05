.class Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;
.super Ljava/lang/Thread;
.source "Socket_server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mReadLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;


# direct methods
.method private constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p2, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 293
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1100(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_0

    .line 318
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1600(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    new-array v0, v4, [B

    .line 297
    .local v0, "buf":[B
    :cond_1
    :goto_1
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v5}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 299
    :try_start_0
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 300
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 303
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v4

    invoke-interface {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->disconnect_notify()V

    .line 306
    :cond_2
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1100(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 307
    .local v2, "len":I
    const-string v4, "len"

    invoke-static {v4}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 308
    if-lez v2, :cond_1

    .line 309
    new-array v3, v2, [B

    .line 310
    .local v3, "tempbug":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 313
    .end local v2    # "len":I
    .end local v3    # "tempbug":[B
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 317
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 313
    :catch_1
    move-exception v1

    goto :goto_2
.end method
