.class public abstract Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
.super Ljava/lang/Object;
.source "MediaControler.java"

# interfaces
.implements Lcom/ximalaya/speechcontrol/mediacontrol/IMediaControler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;,
        Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;
    }
.end annotation


# static fields
.field private static final MSG_ADS_BUFFERING_START:I = 0xe

.field private static final MSG_ADS_BUFFERING_STOP:I = 0xf

.field private static final MSG_BUFFER_PROGRESS_CHANGE:I = 0x9

.field private static final MSG_BUFFER_STATUS_CHANGE:I = 0x6

.field private static final MSG_COMPLETE_PLAY_ADS:I = 0x11

.field private static final MSG_GET_ADS_INFO:I = 0xd

.field private static final MSG_PLAY_ADS_ERROR:I = 0x12

.field private static final MSG_PLAY_COMPLETE:I = 0x4

.field private static final MSG_PLAY_ERROR:I = 0xa

.field private static final MSG_PLAY_PAUSE:I = 0x2

.field private static final MSG_PLAY_START:I = 0x1

.field private static final MSG_PLAY_STOP:I = 0x3

.field private static final MSG_PROGRESS_CHANGE:I = 0x7

.field private static final MSG_SOUND_CHANGE:I = 0x8

.field private static final MSG_SOUND_PREPARED:I = 0x5

.field private static final MSG_START_GET_ADS_INFO:I = 0xc

.field private static final MSG_START_PLAY_ADS:I = 0x10

.field private static final MaxNum:I = 0x1e

.field public static final SHARE_DATA_BASE_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_HOST:Ljava/lang/String; = "com.ximalaya.ting.android.util.TingSharedDataContentProvider"

.field private static final TAG:Ljava/lang/String; = "MediaControler"


# instance fields
.field private isDeath:Z

.field private mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

.field private mAdsStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mBindRet:Z

.field private mConnected:Z

.field protected mContext:Landroid/content/Context;

.field private mCurModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

.field private mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

.field private mPackId:Ljava/lang/String;

.field private mPlayerStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mResolver:Landroid/content/ContentResolver;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceDeathListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/speechcontrol/IServiceDeathListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

.field protected mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "content://com.ximalaya.ting.android.util.TingSharedDataContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    .line 72
    sget-object v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    const-string v1, "sharedpreferences"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    .line 55
    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    .line 56
    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$1;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 775
    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$3;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    .line 826
    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$4;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    .line 1103
    return-void
.end method

.method static synthetic access$000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayStart()V

    return-void
.end method

.method static synthetic access$1100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayPause()V

    return-void
.end method

.method static synthetic access$1200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayStop()V

    return-void
.end method

.method static synthetic access$1300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayComplete()V

    return-void
.end method

.method static synthetic access$1400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleSoundPrepared()V

    return-void
.end method

.method static synthetic access$1500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleBufferStatusChange(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayProgressChange(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .param p2, "x2"    # Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleSoundChange(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleBufferChange(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleStartGetAdsInfo()V

    return-void
.end method

.method static synthetic access$202(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleAdsBufferingStart()V

    return-void
.end method

.method static synthetic access$2300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleAdsBufferingStop()V

    return-void
.end method

.method static synthetic access$2400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handleCompletePlayAds()V

    return-void
.end method

.method static synthetic access$2600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->handlePlayAdsError(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPackId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsListenerStub:Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->initAndSetHisPlayList()V

    return-void
.end method

.method static synthetic access$900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    return v0
.end method

.method static synthetic access$902(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    return p1
.end method

.method private handleAdsBufferingStart()V
    .locals 3

    .prologue
    .line 1074
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .line 1075
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onAdsStartBuffering()V

    goto :goto_0

    .line 1077
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    :cond_0
    return-void
.end method

.method private handleAdsBufferingStop()V
    .locals 3

    .prologue
    .line 1080
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .line 1081
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onAdsStopBuffering()V

    goto :goto_0

    .line 1083
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    :cond_0
    return-void
.end method

.method private handleBufferChange(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1046
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1047
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferProgress(I)V

    goto :goto_0

    .line 1049
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handleBufferStatusChange(Z)V
    .locals 3
    .param p1, "buffering"    # Z

    .prologue
    .line 1052
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1053
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    if-eqz p1, :cond_0

    .line 1054
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStart()V

    goto :goto_0

    .line 1056
    :cond_0
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onBufferingStop()V

    goto :goto_0

    .line 1059
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_1
    return-void
.end method

.method private handleCompletePlayAds()V
    .locals 3

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .line 1093
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onCompletePlayAds()V

    goto :goto_0

    .line 1095
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    :cond_0
    return-void
.end method

.method private handleGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V
    .locals 3
    .param p1, "ads"    # Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    .prologue
    .line 1068
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .line 1069
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onGetAdsInfo(Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    goto :goto_0

    .line 1071
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    :cond_0
    return-void
.end method

.method private handlePlayAdsError(II)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    .line 1098
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .line 1099
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    invoke-interface {v1, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onError(II)V

    goto :goto_0

    .line 1101
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    :cond_0
    return-void
.end method

.method private handlePlayComplete()V
    .locals 3

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1035
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundPlayComplete()V

    goto :goto_0

    .line 1037
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handlePlayError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V
    .locals 3
    .param p1, "exception"    # Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1041
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onError(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)Z

    goto :goto_0

    .line 1043
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handlePlayPause()V
    .locals 3

    .prologue
    .line 1028
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1029
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayPause()V

    goto :goto_0

    .line 1031
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handlePlayProgressChange(II)V
    .locals 3
    .param p1, "currPos"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1022
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1023
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayProgress(II)V

    goto :goto_0

    .line 1025
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handlePlayStart()V
    .locals 3

    .prologue
    .line 1016
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1017
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStart()V

    goto :goto_0

    .line 1019
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handlePlayStop()V
    .locals 3

    .prologue
    .line 1010
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1011
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onPlayStop()V

    goto :goto_0

    .line 1013
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handleSoundChange(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V
    .locals 3
    .param p1, "lastModel"    # Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .param p2, "curModel"    # Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .prologue
    .line 1003
    iput-object p2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mCurModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 1004
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 1005
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundSwitch(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V

    goto :goto_0

    .line 1007
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handleSoundPrepared()V
    .locals 3

    .prologue
    .line 996
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .line 997
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;->onSoundPrepared()V

    goto :goto_0

    .line 999
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;
    :cond_0
    return-void
.end method

.method private handleStartGetAdsInfo()V
    .locals 3

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .line 1063
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onStartGetAdsInfo()V

    goto :goto_0

    .line 1065
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    :cond_0
    return-void
.end method

.method private handleStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V
    .locals 3
    .param p1, "ad"    # Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
    .param p2, "position"    # I

    .prologue
    .line 1086
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .line 1087
    .local v1, "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    invoke-interface {v1, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;->onStartPlayAds(Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    goto :goto_0

    .line 1089
    .end local v1    # "l":Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;
    :cond_0
    return-void
.end method

.method private initAndSetHisPlayList()V
    .locals 11

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCurrIndex()I

    move-result v0

    if-ltz v0, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    const/4 v7, 0x0

    .line 668
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 669
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 670
    const-string v0, "history_play_list"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 672
    .local v10, "playListStr":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_9

    .line 674
    :try_start_1
    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$2;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$2;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    invoke-virtual {v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    .line 676
    .local v9, "objectType":Ljava/lang/reflect/Type;
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v10, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 679
    .local v6, "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    if-nez v6, :cond_3

    .line 693
    if-eqz v7, :cond_2

    .line 694
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 707
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 708
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v8

    .line 711
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 696
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 697
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 703
    .end local v6    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "objectType":Ljava/lang/reflect/Type;
    .end local v10    # "playListStr":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 704
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 707
    if-eqz v7, :cond_0

    .line 708
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 710
    :catch_3
    move-exception v8

    .line 711
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 682
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .restart local v9    # "objectType":Ljava/lang/reflect/Type;
    .restart local v10    # "playListStr":Ljava/lang/String;
    :cond_3
    :try_start_7
    invoke-virtual {v6}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->getTracks()Ljava/util/List;

    move-result-object v2

    .line 683
    .local v2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    .line 693
    :cond_4
    if-eqz v7, :cond_5

    .line 694
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 707
    :cond_5
    :goto_2
    if-eqz v7, :cond_0

    .line 708
    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    .line 710
    :catch_4
    move-exception v8

    .line 711
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 696
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    .line 697
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 706
    .end local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v6    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "objectType":Ljava/lang/reflect/Type;
    .end local v10    # "playListStr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 707
    if-eqz v7, :cond_6

    .line 708
    :try_start_b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 712
    :cond_6
    :goto_3
    throw v0

    .line 685
    .restart local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .restart local v6    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .restart local v9    # "objectType":Ljava/lang/reflect/Type;
    .restart local v10    # "playListStr":Ljava/lang/String;
    :cond_7
    :try_start_c
    const-string v0, "history_play_index"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 686
    .local v3, "playIndex":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_8

    if-ltz v3, :cond_8

    .line 687
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 693
    :cond_8
    if-eqz v7, :cond_9

    .line 694
    :try_start_d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 707
    .end local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v3    # "playIndex":I
    .end local v6    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v9    # "objectType":Ljava/lang/reflect/Type;
    .end local v10    # "playListStr":Ljava/lang/String;
    :cond_9
    :goto_4
    if-eqz v7, :cond_0

    .line 708
    :try_start_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 710
    :catch_6
    move-exception v8

    .line 711
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 696
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .restart local v3    # "playIndex":I
    .restart local v6    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .restart local v9    # "objectType":Ljava/lang/reflect/Type;
    .restart local v10    # "playListStr":Ljava/lang/String;
    :catch_7
    move-exception v8

    .line 697
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    .line 689
    .end local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v3    # "playIndex":I
    .end local v6    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "objectType":Ljava/lang/reflect/Type;
    :catch_8
    move-exception v8

    .line 693
    .restart local v8    # "e":Ljava/lang/Exception;
    if-eqz v7, :cond_a

    .line 694
    :try_start_10
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 707
    :cond_a
    :goto_5
    if-eqz v7, :cond_0

    .line 708
    :try_start_11
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    goto/16 :goto_0

    .line 710
    :catch_9
    move-exception v8

    .line 711
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 696
    :catch_a
    move-exception v8

    .line 697
    :try_start_12
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_5

    .line 692
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    .line 693
    if-eqz v7, :cond_b

    .line 694
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 698
    :cond_b
    :goto_6
    :try_start_14
    throw v0

    .line 696
    :catch_b
    move-exception v8

    .line 697
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_6

    .line 710
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "playListStr":Ljava/lang/String;
    :catch_c
    move-exception v8

    .line 711
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static radioToTrack(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Z)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 4
    .param p0, "radio"    # Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .param p1, "isActivity"    # Z

    .prologue
    .line 637
    if-nez p0, :cond_0

    .line 638
    const/4 v0, 0x0

    .line 656
    :goto_0
    return-object v0

    .line 640
    :cond_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;-><init>()V

    .line 641
    .local v0, "track":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getDataId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setDataId(J)V

    .line 642
    const-string v1, "radio"

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setKind(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setTrackIntro(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getScheduleID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setScheduleId(J)V

    .line 646
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate24AacUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate24AacUrl(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate24TsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate24TsUrl(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64AacUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate64AacUrl(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRate64TsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setRadioRate64TsUrl(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setPlayCount(I)V

    .line 651
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getCoverUrlLarge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setCoverUrlLarge(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setCoverUrlSmall(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getUpdateAt()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setUpdatedAt(J)V

    .line 654
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setPlayCount(I)V

    .line 655
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->setExtra(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;)V
    .locals 1
    .param p1, "l"    # Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    :cond_0
    return-void
.end method

.method public addPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 1
    .param p1, "l"    # Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_0
    return-void
.end method

.method public addServiceDeathListener(Lcom/ximalaya/speechcontrol/IServiceDeathListener;)V
    .locals 1
    .param p1, "serviceDeathListener"    # Lcom/ximalaya/speechcontrol/IServiceDeathListener;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_0
    return-void
.end method

.method public checkConnectionStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 207
    const-string v2, "MediaControler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkConnectionStatus---mConnected---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mConnected:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-nez v2, :cond_2

    .line 210
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    iget-boolean v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    .line 217
    :cond_1
    const/4 v1, 0x0

    .line 219
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return v1
.end method

.method public destory()V
    .locals 3

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->pause()V

    .line 194
    iget-boolean v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 200
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 204
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method protected abstract getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<*>;I)J"
        }
    .end annotation
.end method

.method public getCurPosition()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    :goto_0
    return v1

    .line 380
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayCurrPosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrIndex()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 404
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 414
    :goto_0
    return v1

    .line 409
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCurrIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentTrack()Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 245
    :cond_0
    :goto_0
    return-object v1

    .line 231
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v4, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCurrIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v1

    .line 233
    .local v1, "track":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    if-nez v1, :cond_2

    move-object v1, v2

    .line 234
    goto :goto_0

    .line 237
    :cond_2
    const-string v3, "track"

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    .line 241
    goto :goto_0

    .line 242
    .end local v1    # "track":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v2

    .line 245
    goto :goto_0
.end method

.method protected abstract getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;
.end method

.method public getDuration()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 434
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 444
    :goto_0
    return v1

    .line 439
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getDuration()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 440
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;
.end method

.method protected abstract getPageName()Ljava/lang/String;
.end method

.method public getPlayList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 512
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 536
    :cond_0
    :goto_0
    return-object v2

    .line 517
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .local v2, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    const/4 v1, 0x0

    .line 520
    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v5, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayList(I)Ljava/util/List;

    move-result-object v3

    .line 521
    .local v3, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    if-eqz v3, :cond_0

    .line 525
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_0

    .line 530
    add-int/lit8 v1, v1, 0x1

    .line 531
    goto :goto_1

    .line 532
    .end local v1    # "i":I
    .end local v2    # "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v3    # "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v2, v4

    .line 536
    goto :goto_0
.end method

.method public getPlayListSize()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 389
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    :goto_0
    return v1

    .line 394
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayListSize()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getPlayServiceName()Ljava/lang/String;
.end method

.method public getPlayerStatus()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 363
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 371
    :goto_0
    return v1

    .line 367
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getPlayerStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 345
    :goto_0
    return v1

    .line 341
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->hasNextSound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hasPre()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    :goto_0
    return v1

    .line 354
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->hasPreSound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "appsecret"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "packid"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppSecret:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAppKey:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPackId:Ljava/lang/String;

    .line 162
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mResolver:Landroid/content/ContentResolver;

    .line 164
    new-instance v3, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    .line 166
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "\u8bf7\u4f20\u5165 PlayServiceName"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_0
    const-string v3, "MediaControler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init ---  PlayServiceName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    | pageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPlayServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getPageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 176
    const-string v3, "MediaControler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init---mBindRet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    if-nez v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    .line 180
    const-string v3, "MediaControler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init2---mBindRet = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mBindRet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    new-instance v0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;-><init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    .line 183
    .local v0, "aliBroadcastReceiver":Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$AliBroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.ximalaya.ali"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    return-void
.end method

.method public isAdsActive()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    :goto_0
    return v1

    .line 454
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isAdsActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOnlineSource()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 319
    :goto_0
    return v1

    .line 315
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isOnlineSource()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    :goto_0
    return v1

    .line 302
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    :goto_0
    return-void

    .line 278
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->pausePlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->isDeath:Z

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->startPlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public play(I)Z
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 551
    :goto_0
    return v1

    .line 546
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playCommontTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 6
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .local p3, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {p0, p3, v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v4

    invoke-interface {v1, v2, p2, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayByAlbumTracks(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playNext()V
    .locals 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->playNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playPre()V
    .locals 2

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->playPre()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z
    .locals 7
    .param p1, "radio"    # Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 614
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v5

    if-nez v5, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v3

    .line 619
    :cond_1
    if-eqz p1, :cond_0

    .line 622
    :try_start_0
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    .line 623
    .local v0, "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 624
    .local v2, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->radioToTrack(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;Z)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v0, v2}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTracks(Ljava/util/List;)V

    .line 626
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTotalCount(I)V

    .line 627
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;->setTotalPage(I)V

    .line 629
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v5, v6}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playCommontTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 630
    goto :goto_0

    .line 631
    .end local v0    # "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
    .end local v2    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 6
    .param p1, "track"    # Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p2, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    if-eqz p1, :cond_0

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0, p2, v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayByTrack(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public playTrackList(Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 1
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .local p3, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    .line 557
    return-void
.end method

.method public playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 6
    .param p1, "param"    # Ljava/util/Map;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .local p4, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;Z)V

    .line 562
    return-void
.end method

.method public playTrackList(Ljava/util/Map;Ljava/util/List;ILcom/ximalaya/speechcontrol/IMainDataCallback;Z)V
    .locals 10
    .param p1, "param"    # Ljava/util/Map;
    .param p3, "position"    # I
    .param p5, "willPlay"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .local p4, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const/16 v4, 0x1e

    .line 572
    .local v4, "maxNum":I
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 574
    .local v5, "num":I
    if-ge v5, v4, :cond_4

    .line 575
    iget-object v7, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v7, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 594
    :cond_2
    :goto_1
    if-eqz p5, :cond_7

    .line 595
    iget-object v7, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v7, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->play(I)Z

    move-result v1

    .line 596
    .local v1, "flag":Z
    if-eqz p4, :cond_0

    if-nez v1, :cond_0

    .line 597
    const-string v7, "\u64ad\u653e\u5931\u8d25"

    invoke-interface {p4, v7}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 605
    .end local v1    # "flag":Z
    .end local v5    # "num":I
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    if-eqz p4, :cond_3

    .line 607
    const-string v7, "\u901a\u4fe1\u5931\u8d25"

    invoke-interface {p4, v7}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    .line 609
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 577
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v5    # "num":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    :try_start_1
    div-int v7, v5, v4

    if-ge v2, v7, :cond_6

    .line 578
    if-nez v2, :cond_5

    .line 579
    iget-object v7, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    mul-int v8, v2, v4

    add-int/lit8 v9, v2, 0x1

    mul-int/2addr v9, v4

    invoke-interface {p2, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, p1, v8}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 577
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 582
    :cond_5
    iget-object v7, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    mul-int v8, v2, v4

    add-int/lit8 v9, v2, 0x1

    mul-int/2addr v9, v4

    invoke-interface {p2, v8, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->addPlayList(Ljava/util/List;)V

    goto :goto_3

    .line 586
    :cond_6
    rem-int v6, v5, v4

    .line 587
    .local v6, "remainder":I
    if-eqz v6, :cond_2

    .line 588
    div-int v7, v5, v4

    mul-int v3, v4, v7

    .line 589
    .local v3, "lastNum":I
    iget-object v7, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    add-int v8, v3, v6

    invoke-interface {p2, v3, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->addPlayList(Ljava/util/List;)V

    goto :goto_1

    .line 600
    .end local v2    # "i":I
    .end local v3    # "lastNum":I
    .end local v6    # "remainder":I
    :cond_7
    iget-object v7, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v7, p3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayIndex(I)Z

    move-result v1

    .line 601
    .restart local v1    # "flag":Z
    if-eqz p4, :cond_0

    if-nez v1, :cond_0

    .line 602
    const-string v7, "\u8bbe\u7f6e\u5217\u8868\u5931\u8d25"

    invoke-interface {p4, v7}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public removeAdsStatusListener(Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;)V
    .locals 1
    .param p1, "l"    # Lcom/ximalaya/ting/android/opensdk/player/advertis/IXmAdsStatusListener;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mAdsStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 740
    return-void
.end method

.method public removePlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 1
    .param p1, "l"    # Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mPlayerStatusListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 730
    return-void
.end method

.method public removerServiceDeathListener(Lcom/ximalaya/speechcontrol/IServiceDeathListener;)V
    .locals 1
    .param p1, "serviceDeathListener"    # Lcom/ximalaya/speechcontrol/IServiceDeathListener;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mServiceDeathListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 750
    return-void
.end method

.method public seekTo(I)Z
    .locals 3
    .param p1, "ms"    # I

    .prologue
    const/4 v1, 0x0

    .line 419
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    :goto_0
    return v1

    .line 424
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v2, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->seekTo(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 290
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    invoke-interface {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->stopPlay()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
