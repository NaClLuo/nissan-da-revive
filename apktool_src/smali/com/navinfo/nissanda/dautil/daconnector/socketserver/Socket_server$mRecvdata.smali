.class Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;
.super Ljava/lang/Thread;
.source "Socket_server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mRecvdata"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;


# direct methods
.method private constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p2, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 381
    :cond_0
    :goto_0
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 382
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v2}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v2}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 384
    .local v1, "msg_recv":[B
    if-eqz v1, :cond_0

    .line 385
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v2}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->receiveMessage([B)V

    goto :goto_0

    .line 389
    .end local v1    # "msg_recv":[B
    :cond_1
    const-wide/16 v2, 0x5

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v2}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 397
    return-void
.end method
