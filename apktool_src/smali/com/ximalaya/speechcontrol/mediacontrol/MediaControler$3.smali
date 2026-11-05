.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;
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
    .line 775
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdsStartBuffering()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 822
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 823
    return-void
.end method

.method public onAdsStopBuffering()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 816
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    return-void
.end method

.method public onCompletePlayAds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 809
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 810
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 811
    return-void
.end method

.method public onError(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 802
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 803
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 804
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 805
    return-void
.end method

.method public onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 3
    .param p1, "ads"    # Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 795
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 797
    return-void
.end method

.method public onStartGetAdsInfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 788
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 789
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 790
    return-void
.end method

.method public onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 3
    .param p1, "ad"    # Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 781
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 782
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 784
    return-void
.end method
