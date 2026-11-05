.class Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;
.super Ljava/lang/Object;
.source "DaConnector.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 53
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$000(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$000(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$100(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 62
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$002(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    .line 63
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$200(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Landroid/content/Context;)V

    goto :goto_0
.end method
