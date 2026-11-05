.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;
.source "MediaControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(I)V
    .locals 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 876
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 877
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 878
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 879
    return-void
.end method

.method public onBufferingStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 883
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 884
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 885
    return-void
.end method

.method public onBufferingStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 889
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 890
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 891
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 892
    return-void
.end method

.method public onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 3
    .param p1, "exception"    # Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 870
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 871
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 872
    return-void
.end method

.method public onPlayPause()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 857
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 858
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 859
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 3
    .param p1, "currPos"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 849
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 850
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 851
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 852
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 853
    return-void
.end method

.method public onPlayStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 842
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 843
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 844
    return-void
.end method

.method public onPlayStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 837
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 838
    return-void
.end method

.method public onSoundPlayComplete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 863
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 864
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 865
    return-void
.end method

.method public onSoundPrepared()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 830
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 831
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 832
    return-void
.end method

.method public onSoundSwitch(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 3
    .param p1, "lastTrack"    # Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .param p2, "curTrack"    # Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 897
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 898
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 899
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 900
    return-void
.end method
