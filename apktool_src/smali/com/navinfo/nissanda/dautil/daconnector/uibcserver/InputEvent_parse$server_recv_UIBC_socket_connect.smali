.class Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;
.super Ljava/lang/Thread;
.source "InputEvent_parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "server_recv_UIBC_socket_connect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;


# direct methods
.method private constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .param p2, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 162
    :goto_0
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    move-result-object v1

    invoke-virtual {v1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    move-result-object v1

    invoke-virtual {v1}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;->server_startup()Z

    .line 167
    :cond_0
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    return-void

    .line 168
    :catch_1
    move-exception v0

    goto :goto_1
.end method
