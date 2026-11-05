.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;
.super Ljava/lang/Object;
.source "AudioManager.java"


# static fields
.field private static mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;


# instance fields
.field private currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->init(Landroid/content/Context;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;)V

    .line 21
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/XimalayaController;->init(Landroid/content/Context;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;)V

    .line 22
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->init(Landroid/content/Context;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;)V

    .line 23
    return-void
.end method

.method public next()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;->next()V

    .line 50
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;->pause()V

    .line 42
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;->play()V

    .line 35
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;->prev()V

    .line 57
    :cond_0
    return-void
.end method

.method public setCurrentController(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;)V
    .locals 0
    .param p1, "audioController"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->currentController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;

    .line 61
    return-void
.end method
