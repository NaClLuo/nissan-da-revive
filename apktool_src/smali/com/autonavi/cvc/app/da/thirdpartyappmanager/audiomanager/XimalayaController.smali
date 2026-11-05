.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;
.super Ljava/lang/Object;
.source "XimalayaController.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;


# static fields
.field private static ximalayaController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;


# instance fields
.field private controler:Lcom/ximalaya/speechcontrol/SpeechControler;

.field private mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->ximalayaController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->ximalayaController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    .prologue
    .line 28
    :try_start_0
    iput-object p2, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    .line 29
    invoke-static {p1}, Lcom/ximalaya/speechcontrol/SpeechControler;->getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/SpeechControler;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    .line 30
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    const-string v1, "b5b3a4366d7580e0e7c55273fc470d25"

    const-string v2, "3514539079bb75e28efc8efd172dd7bd"

    const-string v3, "com.ximalaya.ting.android.swtx"

    invoke-virtual {v0, v1, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0, p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->addPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->playNext()V

    .line 60
    :cond_0
    return-void
.end method

.method public onBufferProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 113
    return-void
.end method

.method public onBufferingStart()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onBufferingStop()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z
    .locals 1
    .param p1, "e"    # Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPause()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onPlayProgress(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onPlayStart()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->setCurrentController(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onPlayStop()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onSoundPlayComplete()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onSoundPrepared()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onSoundSwitch(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    .locals 0
    .param p1, "playableModel"    # Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .param p2, "playableModel1"    # Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .prologue
    .line 98
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->pause()V

    .line 54
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->play()V

    .line 48
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->controler:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->playPre()V

    .line 66
    :cond_0
    return-void
.end method
