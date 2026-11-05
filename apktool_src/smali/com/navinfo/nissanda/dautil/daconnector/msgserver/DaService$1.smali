.class Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;
.super Ljava/lang/Object;
.source "DaService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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
    .line 234
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    .line 256
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v2, v2, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 257
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 258
    .local v1, "point":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 260
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setScreenWidth(I)V

    .line 261
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->setScreenHeight(I)V

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3, v4}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$000(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;ZZZ)V

    .line 264
    const-string v2, "DA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisplayAdded====="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 250
    const-string v0, "DA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayChanged====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->stopHorizontalService()V

    .line 240
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v0, v1, v1, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$000(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;ZZZ)V

    .line 241
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->setDaState(I)V

    .line 245
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$100(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    .line 246
    return-void
.end method
