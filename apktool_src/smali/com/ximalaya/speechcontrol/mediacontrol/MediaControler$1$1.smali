.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;
.super Ljava/lang/Object;
.source "MediaControler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v2, v2, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/speechcontrol/IServiceDeathListener;

    .line 88
    .local v1, "serviceDeathListener":Lcom/ximalaya/speechcontrol/IServiceDeathListener;
    invoke-interface {v1}, Lcom/ximalaya/speechcontrol/IServiceDeathListener;->onServiceDeath()V

    goto :goto_0

    .line 90
    .end local v1    # "serviceDeathListener":Lcom/ximalaya/speechcontrol/IServiceDeathListener;
    :cond_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v2, v2, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2, v4}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$202(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    .line 91
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v2, v2, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    .line 92
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;->this$1:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    iget-object v2, v2, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2, v4}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    .line 93
    return-void
.end method
