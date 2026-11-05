.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;
.super Ljava/lang/Object;
.source "WeuiMusicController.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioController;


# static fields
.field private static mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

.field private static mContext:Landroid/content/Context;

.field private static weuiMusicController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;


# instance fields
.field broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->weuiMusicController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController$1;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController$1;-><init>(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->weuiMusicController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    return-object v0
.end method

.method static synthetic access$100()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    return-object v0
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->weuiMusicController:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioManager"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    .prologue
    .line 26
    sput-object p1, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->mContext:Landroid/content/Context;

    .line 27
    sput-object p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->mAudioManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/AudioManager;

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "da.music.playing"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    return-void
.end method

.method public next()V
    .locals 3

    .prologue
    .line 51
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "da.music.playnext"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 52
    return-void
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
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/audiomanager/WeuiMusicController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "da.music.playprev"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    return-void
.end method
