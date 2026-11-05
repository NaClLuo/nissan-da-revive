.class Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;
.super Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback$Stub;
.source "DaConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;


# direct methods
.method constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarConnect(Z)V
    .locals 2
    .param p1, "isCarConnected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$502(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Z)Z

    .line 118
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$600(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$600(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;->onConnect(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public receiveMessage(I[B)V
    .locals 0
    .param p1, "msg"    # I
    .param p2, "playload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    .line 113
    return-void
.end method
