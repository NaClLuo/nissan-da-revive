.class Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController$1;
.super Landroid/content/BroadcastReceiver;
.source "WeuiMusicController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->access$100()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->access$000()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->setCurrentController(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;)V

    .line 37
    return-void
.end method
