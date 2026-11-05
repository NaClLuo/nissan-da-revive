.class Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$6;
.super Ljava/lang/Object;
.source "DaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->startMainIntent(J)V
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
    .line 1440
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$6;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$6;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$6;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$6;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$1000(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Landroid/content/Context;Ljava/lang/String;)V

    .line 1445
    return-void
.end method
