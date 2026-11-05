.class Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;
.super Ljava/lang/Object;
.source "MediaControler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 76
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 80
    const-string v1, "MediaControler"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    .line 82
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    move-result-object v2

    iput-object v2, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;

    invoke-direct {v2, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1$1;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v4}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registeMainDataSupportCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;)V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registeCustomDataCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    .line 114
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    .line 116
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 117
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;->success()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    .line 126
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    :try_start_2
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->startPlay()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1, v5}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$902(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    .line 134
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 130
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    .line 139
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$902(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    .line 140
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    .line 141
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v0, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$202(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z

    .line 142
    const-string v0, "MediaControler"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
