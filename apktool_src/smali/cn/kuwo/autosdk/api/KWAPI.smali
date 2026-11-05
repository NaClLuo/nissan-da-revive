.class public Lcn/kuwo/autosdk/api/KWAPI;
.super Ljava/lang/Object;


# static fields
.field private static final AUTO_PLAY:Ljava/lang/String; = "auto_play"

.field private static final CLOSE_DESKLYRIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.CLOSE_DESKLYRIC"

.field private static final CLOSE_TOAST:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.CLOSE_TOAST"

.field private static final ENDTYPE:Ljava/lang/String; = "ENDTYPE"

.field private static final EXIT:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.EXIT"

.field private static final EXIT_KWMUSICAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.EXITAPP"

.field private static final EXIT_PLAY_MUSIC:Ljava/lang/String; = "exit_play_music"

.field private static final EXTRA:Ljava/lang/String; = "EXTRA"

.field private static final HAS_MV:Ljava/lang/String; = "hasMv"

.field private static final KEY_FULL_SCREEN:Ljava/lang/String; = "key_full_screen"

.field private static final KUWO_CARMUSIC_MEDIABUTTON_ACTION:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

.field private static final KUWO_KEY:Ljava/lang/String; = "kuwo_key"

.field private static final KW_CAR_PROCESS_NAME:Ljava/lang/String; = "cn.kuwo.kwmusiccar"

.field private static final MUSIC:Ljava/lang/String; = "music"

.field private static final MUSIC_ALBUM:Ljava/lang/String; = "album"

.field private static final MUSIC_ALL_LIST_KEY:Ljava/lang/String; = "music_all_list_key"

.field private static final MUSIC_ARTISTID:Ljava/lang/String; = "artistid"

.field private static final MUSIC_INDEX_KEY:Ljava/lang/String; = "music_index_key"

.field private static final MUSIC_NAME:Ljava/lang/String; = "name"

.field private static final MUSIC_RID:Ljava/lang/String; = "rid"

.field private static final MUSIC_SINGER:Ljava/lang/String; = "singer"

.field private static final MUSIC_SOURCE:Ljava/lang/String; = "source"

.field private static final MV_QUALITY:Ljava/lang/String; = "mvQuality"

.field private static final NoFoundAPP:Ljava/lang/String; = "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

.field private static final OPEN_DESKLYRIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.OPEN_DESKLYRIC"

.field private static final OPEN_TOAST:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.OPEN_TOAST"

.field private static final PALY_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_MUSIC"

.field private static final PLAYERMODE:Ljava/lang/String; = "PLAYERMODE"

.field private static final PLAYERSTATUS:Ljava/lang/String; = "PLAYERSTATUS"

.field private static final PLAYER_MODE:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAYER_MODE"

.field private static final PLAYER_STATUS:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

.field private static final PLAYMUSIC_ALBUM:Ljava/lang/String; = "play_music_album"

.field private static final PLAYMUSIC_ARTIST:Ljava/lang/String; = "play_music_artist"

.field private static final PLAYMUSIC_NAME:Ljava/lang/String; = "play_music_name"

.field private static final PLAY_ALL_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

.field private static final PLAY_END:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.PLAY_END"

.field private static final SEARCH_MUSIC:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

.field private static final SET_FULL_SCREEN:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.SET_FULL_SCREEN"

.field private static final START_KWMUSICAPP:Ljava/lang/String; = "cn.kuwo.kwmusicauto.action.STARTAPP"

.field private static final mCarExitReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;

.field private static final mCarPlayerModeReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerModeReceiver;

.field private static mKey:Ljava/lang/String;

.field private static mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

.field private static final mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

.field private static final mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

.field private static mSearchMgr:Lcn/kuwo/autosdk/g;


# instance fields
.field private mExitListener:Lcn/kuwo/autosdk/api/OnExitListener;

.field private mExitRegistered:Z

.field private mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

.field private mPlayEndRegistered:Z

.field private mPlayerModeListener:Lcn/kuwo/autosdk/api/OnPlayerModeListener;

.field private mPlayerModeRegistered:Z

.field private mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

.field private mPlayerStatusRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    const-string v0, ""

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    sput-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;-><init>(Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;)V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI$CarPlayerModeReceiver;

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI$CarPlayerModeReceiver;-><init>(Lcn/kuwo/autosdk/api/KWAPI$CarPlayerModeReceiver;)V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mCarPlayerModeReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerModeReceiver;

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;-><init>(Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;)V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mCarExitReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    invoke-direct {v0, v1}, Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;-><init>(Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;)V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    iput-object v1, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeListener:Lcn/kuwo/autosdk/api/OnPlayerModeListener;

    iput-object v1, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitListener:Lcn/kuwo/autosdk/api/OnExitListener;

    iput-object v1, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeRegistered:Z

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitRegistered:Z

    return-void
.end method

.method static synthetic access$0()Lcn/kuwo/autosdk/api/KWAPI;
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    return-object v0
.end method

.method static synthetic access$1(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayEndListener;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/autosdk/api/KWAPI;->getOnPlayEndListener()Lcn/kuwo/autosdk/api/OnPlayEndListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayerStatusListener;
    .locals 1

    invoke-direct {p0}, Lcn/kuwo/autosdk/api/KWAPI;->getOnPlayerStatusListener()Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnPlayerModeListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeListener:Lcn/kuwo/autosdk/api/OnPlayerModeListener;

    return-object v0
.end method

.method static synthetic access$4(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnExitListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitListener:Lcn/kuwo/autosdk/api/OnExitListener;

    return-object v0
.end method

.method private checkInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createKWAPI(Landroid/content/Context;Ljava/lang/String;)Lcn/kuwo/autosdk/api/KWAPI;
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcn/kuwo/autosdk/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcn/kuwo/autosdk/api/KWAPI;

    invoke-direct {v0}, Lcn/kuwo/autosdk/api/KWAPI;-><init>()V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    sput-object p1, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mKwapi:Lcn/kuwo/autosdk/api/KWAPI;

    return-object v0
.end method

.method private getOnPlayEndListener()Lcn/kuwo/autosdk/api/OnPlayEndListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

    return-object v0
.end method

.method private getOnPlayerStatusListener()Lcn/kuwo/autosdk/api/OnPlayerStatusListener;
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    return-object v0
.end method

.method private packJson(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "rid"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-wide v6, v0, Lcn/kuwo/autosdk/bean/Music;->rid:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "name"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-object v0, v0, Lcn/kuwo/autosdk/bean/Music;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "singer"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-object v0, v0, Lcn/kuwo/autosdk/bean/Music;->artist:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "album"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-object v0, v0, Lcn/kuwo/autosdk/bean/Music;->album:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "artistid"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-wide v6, v0, Lcn/kuwo/autosdk/bean/Music;->artistId:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "mvQuality"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-object v0, v0, Lcn/kuwo/autosdk/bean/Music;->mvQuality:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "hasMv"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/Music;

    iget-boolean v0, v0, Lcn/kuwo/autosdk/bean/Music;->hasMv:Z

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private registerExitReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "cn.kuwo.kwmusicauto.action.EXIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mCarExitReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPlayEndReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPlayerModeReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAYER_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mCarPlayerModeReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerModeReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPlayerStatusReceiver(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAYER_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private searchOnlineMusic(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;Lcn/kuwo/autosdk/api/OnSearchListener;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    if-nez v0, :cond_0

    new-instance v0, Lcn/kuwo/autosdk/h;

    invoke-direct {v0}, Lcn/kuwo/autosdk/h;-><init>()V

    sput-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    :cond_0
    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mSearchMgr:Lcn/kuwo/autosdk/g;

    invoke-interface {v0, p1, p2, p3}, Lcn/kuwo/autosdk/g;->a(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;Lcn/kuwo/autosdk/api/OnSearchListener;)V

    return-void
.end method

.method private unRegisterExitReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mCarExitReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPlayEndReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayEndReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPlayerModeReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mCarPlayerModeReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerModeReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterPlayerStatusReceiver(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusReceiver:Lcn/kuwo/autosdk/api/KWAPI$CarPlayerStatusReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public closeToast(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.CLOSE_TOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public exitAPP(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.EXITAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public isKuwoRunning(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_3

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_1
    return v2

    :cond_1
    const-string v5, "cn.kuwo.kwmusiccar"

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcn/kuwo/autosdk/u;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/v;

    const-string v4, "cn.kuwo.kwmusiccar"

    iget-object v0, v0, Lcn/kuwo/autosdk/v;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_1
.end method

.method public openToast(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.OPEN_TOAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public playClientMusics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "singer"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playLocalMusic(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.SEARCH_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "source"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public playMusic(Landroid/content/Context;Ljava/util/List;IZZ)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.PLAY_ALL_MUSIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "music_all_list_key"

    invoke-direct {p0, p2}, Lcn/kuwo/autosdk/api/KWAPI;->packJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "music_index_key"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    :try_start_0
    const-string v2, "exit_play_music"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->isKuwoRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "exit_play_music"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    const-string v0, "\u64ad\u653e\u7684\u6b4c\u66f2\u4f4d\u7f6e\u6709\u8bef\uff01"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v0, "\u64ad\u653e\u7684\u6b4c\u66f2\u4fe1\u606f\u6709\u8bef\uff01"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public registerExitListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnExitListener;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->registerExitReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitRegistered:Z

    :cond_0
    iput-object p2, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitListener:Lcn/kuwo/autosdk/api/OnExitListener;

    return-void
.end method

.method public registerPlayEndListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayEndListener;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayEndReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    :cond_0
    iput-object p2, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndListener:Lcn/kuwo/autosdk/api/OnPlayEndListener;

    return-void
.end method

.method public registerPlayerModeListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayerModeListener;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayerModeReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeRegistered:Z

    :cond_0
    iput-object p2, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeListener:Lcn/kuwo/autosdk/api/OnPlayerModeListener;

    return-void
.end method

.method public registerPlayerStatusListener(Landroid/content/Context;Lcn/kuwo/autosdk/api/OnPlayerStatusListener;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->registerPlayerStatusReceiver(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    :cond_0
    iput-object p2, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusListener:Lcn/kuwo/autosdk/api/OnPlayerStatusListener;

    return-void
.end method

.method public searchOnlineMusic(Ljava/lang/String;Lcn/kuwo/autosdk/api/OnSearchListener;)V
    .locals 1

    sget-object v0, Lcn/kuwo/autosdk/api/SearchMode;->ALL:Lcn/kuwo/autosdk/api/SearchMode;

    invoke-direct {p0, p1, v0, p2}, Lcn/kuwo/autosdk/api/KWAPI;->searchOnlineMusic(Ljava/lang/String;Lcn/kuwo/autosdk/api/SearchMode;Lcn/kuwo/autosdk/api/OnSearchListener;)V

    return-void
.end method

.method public setFullScreen(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.SET_FULL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "key_full_screen"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setPlayMode(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayMode;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    invoke-virtual {p2}, Lcn/kuwo/autosdk/api/PlayMode;->getPlayMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setPlayState(Landroid/content/Context;Lcn/kuwo/autosdk/api/PlayState;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA"

    invoke-virtual {p2}, Lcn/kuwo/autosdk/api/PlayState;->getPlayState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "kuwo_key"

    sget-object v2, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public startAPP(Landroid/content/Context;Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.kuwo.kwmusicauto.action.STARTAPP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "kuwo_key"

    sget-object v3, Lcn/kuwo/autosdk/api/KWAPI;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "auto_play"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "\u672a\u627e\u5230\u53ef\u7528\u7684\u5b89\u88c5\u7a0b\u5e8f\uff01"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public unRegisterExitListener(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterExitReceiver(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mExitRegistered:Z

    :cond_0
    return-void
.end method

.method public unRegisterPlayEndListener(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterPlayEndReceiver(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayEndRegistered:Z

    :cond_0
    return-void
.end method

.method public unRegisterPlayerModeListener(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterPlayerModeReceiver(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerModeRegistered:Z

    :cond_0
    return-void
.end method

.method public unRegisterPlayerStatusListener(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/api/KWAPI;->unRegisterPlayerStatusReceiver(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/kuwo/autosdk/api/KWAPI;->mPlayerStatusRegistered:Z

    :cond_0
    return-void
.end method
