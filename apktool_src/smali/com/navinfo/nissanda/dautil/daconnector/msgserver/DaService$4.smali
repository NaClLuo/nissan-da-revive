.class Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;
.super Ljava/lang/Object;
.source "DaService.java"

# interfaces
.implements Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;


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
    .line 478
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceClose(Z)V
    .locals 2
    .param p1, "isClose"    # Z

    .prologue
    const/4 v1, 0x0

    .line 514
    sput-boolean v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serSocketConnected:Z

    .line 515
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->setDaState(I)V

    .line 519
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->stopHorizontalService()V

    .line 520
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Z)V

    .line 521
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    .line 524
    return-void
.end method

.method public deviceOpen(Ljava/net/Socket;Z)V
    .locals 5
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "isOpen"    # Z

    .prologue
    const/4 v2, 0x1

    .line 490
    if-eqz p2, :cond_0

    .line 491
    sput-boolean v2, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serSocketConnected:Z

    .line 492
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Z)V

    .line 493
    const-string v1, "DA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app server =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serSocketConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "deviceOpen:\n--------------------------"

    .line 497
    .local v0, "logdata":Ljava/lang/String;
    const-string v1, "smartphone.txt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 498
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 499
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v1, v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 500
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v1, v1, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v3}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v4, v4, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/navinfo/nissanda/dautil/DaUtil;->pkgName2Bytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 509
    .end local v0    # "logdata":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public disconnect_notify()V
    .locals 0

    .prologue
    .line 529
    return-void
.end method

.method public receiveMessage([B)V
    .locals 1
    .param p1, "mes"    # [B

    .prologue
    .line 483
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$4;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->translateMsg([B)V

    .line 484
    return-void
.end method
