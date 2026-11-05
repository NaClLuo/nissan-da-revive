.class Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$5;
.super Ljava/lang/Object;
.source "DaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->onLocationChanged(Landroid/location/Location;)V
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
    .line 1368
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$5;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$5;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$900(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    .line 1373
    return-void
.end method
