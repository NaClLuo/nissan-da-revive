.class Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;
.super Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;
.source "DaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;


# direct methods
.method constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDaInfo()Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->connected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-result-object v0

    return-object v0
.end method

.method public sendSerMsg(I[B)V
    .locals 1
    .param p1, "commandId"    # I
    .param p2, "playload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v0, p1, p2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 431
    return-void
.end method

.method public setCallback(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iput-object p1, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDaMessageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    .line 436
    return-void
.end method

.method public startLocating()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$3;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$600(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    .line 441
    return-void
.end method
