.class public Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
.super Ljava/lang/Object;
.source "Socket_server.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;,
        Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;,
        Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;,
        Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;
    }
.end annotation


# static fields
.field public static final ACCEPTING:I = 0x1

.field public static final CLOSED:I = 0x0

.field public static final CONNECTED:I = 0x2

.field public static final DA_CTRL_PORT:I = 0x270e

.field public static final DA_UIBC_RECV_PORT:I = 0x270c

.field private static final delayms:I = 0x5


# instance fields
.field private BUF_SIZE:I

.field private in:Ljava/io/InputStream;

.field private logdata:Ljava/lang/String;

.field private mRecvQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mSendQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartup_server:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mesCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

.field private out:Ljava/io/OutputStream;

.field private port:I

.field private serverSocket:Ljava/net/ServerSocket;

.field private socket:Ljava/net/Socket;

.field private socket_connect_succ_flag:I

.field private socket_state:I


# direct methods
.method public constructor <init>(ILcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "mesCon"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->logdata:Ljava/lang/String;

    .line 39
    iput v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_state:I

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mSendQueue:Ljava/util/Queue;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mRecvQueue:Ljava/util/Queue;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStartup_server:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->out:Ljava/io/OutputStream;

    .line 55
    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->in:Ljava/io/InputStream;

    .line 57
    const/16 v0, 0x800

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->BUF_SIZE:I

    .line 63
    iput v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_connect_succ_flag:I

    .line 68
    iput-object p2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mesCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    .line 69
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->port:I

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method static synthetic access$102(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p1, "x1"    # Ljava/net/ServerSocket;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->serverSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->in:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->server_close()V

    return-void
.end method

.method static synthetic access$1600(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->BUF_SIZE:I

    return v0
.end method

.method static synthetic access$1700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mRecvQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mSendQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->port:I

    return v0
.end method

.method static synthetic access$300(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->logdata:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->logdata:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStartup_server:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)I
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_state:I

    return v0
.end method

.method static synthetic access$502(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_state:I

    return p1
.end method

.method static synthetic access$600(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->buffer_clear()V

    return-void
.end method

.method static synthetic access$700(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mesCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    return-object v0
.end method

.method static synthetic access$800(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$802(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$902(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;I)I
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_connect_succ_flag:I

    return p1
.end method

.method private buffer_clear()V
    .locals 2

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mSendQueue:Ljava/util/Queue;

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mSendQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mRecvQueue:Ljava/util/Queue;

    if-eqz v1, :cond_3

    .line 250
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mRecvQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 255
    :cond_3
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getException(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 5
    .param p1, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 401
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 402
    .local v4, "writer":Ljava/io/Writer;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 403
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 404
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 406
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 411
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "err":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_1
    return-object v2

    .line 414
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private server_close()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " server_close"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->logdata:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->logdata:Ljava/lang/String;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mesCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    invoke-interface {v1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->disconnect_notify()V

    .line 194
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 196
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_state:I

    .line 197
    iget v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_connect_succ_flag:I

    if-ne v4, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 204
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_connect_succ_flag:I

    .line 205
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->out:Ljava/io/OutputStream;

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mSendQueue:Ljava/util/Queue;

    if-eqz v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mSendQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mRecvQueue:Ljava/util/Queue;

    if-eqz v1, :cond_5

    .line 222
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mRecvQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 224
    :cond_5
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mesCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->deviceClose(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mesCon:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;

    invoke-interface {v1, v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;->deviceClose(Z)V

    goto :goto_0

    .line 226
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->socket_state:I

    return v0
.end method

.method public send([B)Z
    .locals 1
    .param p1, "msg"    # [B

    .prologue
    .line 261
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mSendQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 264
    monitor-exit p0

    .line 265
    const/4 v0, 0x1

    return v0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public server_startup()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    :try_start_0
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStartup_server:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStartup_server get true!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->logdata:Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->logdata:Ljava/lang/String;

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 85
    :goto_0
    return v1

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStartup_server:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    new-instance v3, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V

    invoke-virtual {v3}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$socketThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public startThreads()V
    .locals 2

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    monitor-exit p0

    .line 282
    :goto_0
    return-void

    .line 276
    :cond_0
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mReadLoop;->start()V

    .line 277
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mWriteLoop;->start()V

    .line 278
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$1;)V

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server$mRecvdata;->start()V

    .line 280
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
