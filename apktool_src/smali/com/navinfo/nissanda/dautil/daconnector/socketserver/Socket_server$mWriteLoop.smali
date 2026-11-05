.class Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;
.super Ljava/lang/Thread;
.source "Socket_server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "mWriteLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;


# direct methods
.method private constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p2, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 329
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1000(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/io/OutputStream;

    move-result-object v3

    if-nez v3, :cond_0

    .line 369
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "log":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 334
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1900(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 335
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1900(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 336
    .local v2, "msg_send":[B
    if-eqz v2, :cond_1

    .line 338
    :try_start_0
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 339
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 342
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    invoke-interface {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->disconnect_notify()V

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket client closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Socket_send.txt"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    :cond_2
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1000(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 347
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1000(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send success:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    invoke-static {v2}, Lcom/autonavi/cvc/app/da/source/Common_method;->getHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Socket_send.txt"

    const/4 v5, 0x0

    .line 348
    invoke-static {v3, v4, v5}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 353
    invoke-static {v2}, Lcom/autonavi/cvc/app/da/source/Common_method;->getHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Socket_send.txt"

    .line 352
    invoke-static {v3, v4, v6}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 359
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "msg_send":[B
    :cond_3
    const-wide/16 v4, 0x5

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 360
    :catch_1
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 366
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket disconnect"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Socket_send.txt"

    invoke-static {v3, v4, v6}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 368
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0
.end method
