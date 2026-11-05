.class Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;
.super Ljava/lang/Object;
.source "DaConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 67
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {p2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$002(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$100(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 74
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$000(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-static {v2}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;->setCallback(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->access$002(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    .line 86
    return-void
.end method
