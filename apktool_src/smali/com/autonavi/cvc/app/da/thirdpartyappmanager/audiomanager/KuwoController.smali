.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;
.super Ljava/lang/Object;
.source "KuwoController.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;
.implements Lcn/kuwo/autosdk/api/OnPlayerStatusListener;


# static fields
.field private static controller:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;

.field private static mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

.field private static mContext:Landroid/content/Context;

.field private static mKwapi:Lcn/kuwo/autosdk/api/KWAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->controller:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->controller:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    .prologue
    .line 34
    sput-object p1, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mContext:Landroid/content/Context;

    .line 35
    sput-object p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    .line 36
    const-string v0, "siweiss"

    invoke-static {p1, v0}, Lcn/kuwo/autosdk/api/KWAPI;->createKWAPI(Landroid/content/Context;Ljava/lang/String;)Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    .line 37
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    invoke-virtual {v0, p1, p0}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayerStatusListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayerStatusListener;)V

    .line 38
    return-void
.end method

.method public next()V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    sget-object v1, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_NEXT:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    .line 52
    return-void
.end method

.method public onPlayerStatus(Lcn/kuwo/autosdk/api/PlayerStatus;Lcn/kuwo/autosdk/bean/Music;)V
    .locals 2
    .param p1, "playerStatus"    # Lcn/kuwo/autosdk/api/PlayerStatus;
    .param p2, "music"    # Lcn/kuwo/autosdk/bean/Music;

    .prologue
    .line 61
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController$1;->$SwitchMap$cn$kuwo$autosdk$api$PlayerStatus:[I

    invoke-virtual {p1}, Lcn/kuwo/autosdk/api/PlayerStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    invoke-virtual {v0, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;->setCurrentController(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public play()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public prev()V
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    sget-object v1, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/KuwoController;->mContext:Landroid/content/Context;

    sget-object v2, Lcn/kuwo/autosdk/api/PlayState;->STATE_PRE:Lcn/kuwo/autosdk/api/PlayState;

    invoke-virtual {v0, v1, v2}, Lcn/kuwo/autosdk/api/KWAPI;->setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V

    .line 57
    return-void
.end method
