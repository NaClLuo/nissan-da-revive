.class Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;
.super Ljava/lang/Thread;
.source "Socket_server.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "socketThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;


# direct methods
.method private constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p2, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    new-instance v4, Ljava/net/ServerSocket;

    iget-object v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v5}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$102(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "counter_disconn":I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "waiting for connect"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    :try_start_1
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 104
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$600(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    .line 105
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$100(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/ServerSocket;

    move-result-object v3

    if-nez v3, :cond_1

    .line 106
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 108
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->deviceClose(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_5

    .line 182
    .end local v0    # "counter_disconn":I
    :cond_0
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const-string v4, "CTRL serverSocket create failed!"

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "counter_disconn":I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const-string v4, "CTRL serverSocket waiting for connect!"

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$100(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/ServerSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$802(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const-string v4, "CTRL serverSocket accept connect successfully!"

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$902(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 117
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 118
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1002(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 119
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1102(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 120
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-virtual {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->startThreads()V

    .line 121
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->deviceOpen(Ljava/net/Socket;Z)V

    .line 123
    :goto_1
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_5

    move-result v3

    if-ne v7, v3, :cond_3

    .line 125
    :try_start_3
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v3

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Ljava/net/Socket;->sendUrgentData(I)V

    .line 126
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_1

    .line 127
    :catch_1
    move-exception v2

    .line 128
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    .line 130
    const/4 v3, 0x3

    if-lt v0, v3, :cond_2

    .line 131
    const/4 v0, 0x0

    .line 132
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const-string v4, "CTRL serverSocket disconnect!"

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 134
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "UIBC serverSocket disconnect!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 137
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    .line 138
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    invoke-interface {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->disconnect_notify()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 156
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const-string v4, "CTRL serverSocket disconnect due to IOException!"

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 161
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3, v6}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 163
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    .line 164
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->deviceOpen(Ljava/net/Socket;Z)V

    goto/16 :goto_0

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "e1":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v4, 0x64

    :try_start_5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 142
    :catch_3
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 165
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const-string v4, "CTRL serverSocket disconnect due to Exception!"

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3, v6}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 171
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    .line 172
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->deviceOpen(Ljava/net/Socket;Z)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_7
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 151
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 152
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    .line 153
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    invoke-interface {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->disconnect_notify()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 173
    :catch_5
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 175
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const-string v4, "CTRL serverSocket disconnect due to Error!"

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 177
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3, v6}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I

    .line 179
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$1200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V

    .line 180
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->deviceOpen(Ljava/net/Socket;Z)V

    goto/16 :goto_0
.end method
