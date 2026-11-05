.class public Lcom/ximalaya/speechcontrol/SpeechControler;
.super Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
.source "SpeechControler.java"

# interfaces
.implements Lcom/ximalaya/speechcontrol/IControler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechControler"

.field private static mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;


# instance fields
.field private callBackType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isConnected:Z

.field private isOldSDK:Z

.field private mCustomCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainDataCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

.field private mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

.field private mcallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<*>;>;"
        }
    .end annotation
.end field

.field private serviceBindSuccessCallBack:Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-direct {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    .line 66
    iput-boolean v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->callBackType:Ljava/util/Map;

    .line 69
    iput-boolean v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isConnected:Z

    .line 86
    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$1;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$1;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mMainDataCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    .line 98
    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$2;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$2;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mCustomCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    .line 260
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    .line 262
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;IJ)V
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/SpeechControler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ximalaya/speechcontrol/SpeechControler;->loadSuccessBack(Ljava/lang/String;IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/SpeechControler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler;->loadErrBack(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/ximalaya/speechcontrol/SpeechControler;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/SpeechControler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->callBackType:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/IMainDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/SpeechControler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ximalaya/speechcontrol/SpeechControler;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/SpeechControler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;
    .locals 1
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/SpeechControler;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    return-object v0
.end method

.method private getAlbumById(JLcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "l"    # Lcom/ximalaya/speechcontrol/IMainDataCallback;

    .prologue
    .line 115
    const/16 v0, 0xd

    :try_start_0
    invoke-virtual {p0, p3, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    .line 116
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mCustomCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    invoke-interface {v0, p1, p2, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getAlbumById(JLcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/SpeechControler;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const-class v1, Lcom/ximalaya/speechcontrol/SpeechControler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_1

    .line 250
    const-class v2, Lcom/ximalaya/speechcontrol/SpeechControler;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    sget-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    .line 254
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :cond_1
    :try_start_2
    sget-object v0, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 254
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSuccessInfo(ILjava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # I
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p2, v1

    .line 231
    .end local p2    # "content":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 203
    .restart local p2    # "content":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 205
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 206
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/album/SearchAlbumList;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 207
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 208
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/track/SearchTrackList;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 209
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 210
    new-instance v1, Lcom/ximalaya/speechcontrol/SpeechControler$5;

    invoke-direct {v1, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$5;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/SpeechControler$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 212
    .local v0, "objectType":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 213
    .end local v0    # "objectType":Ljava/lang/reflect/Type;
    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 214
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/ximalaya/speechcontrol/SpeechControler$6;

    invoke-direct {v2, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$6;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v2}, Lcom/ximalaya/speechcontrol/SpeechControler$6;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 216
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_6

    .line 217
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/track/TrackHotList;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 218
    :cond_6
    const/4 v2, 0x6

    if-ne p1, v2, :cond_7

    .line 219
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 220
    :cond_7
    const/4 v2, 0x7

    if-ne p1, v2, :cond_8

    .line 221
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/ximalaya/speechcontrol/SpeechControler$7;

    invoke-direct {v2, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$7;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v2}, Lcom/ximalaya/speechcontrol/SpeechControler$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 223
    :cond_8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_9

    .line 224
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    .line 225
    :cond_9
    const/16 v2, 0x9

    if-ne p1, v2, :cond_a

    .line 226
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    .line 227
    :cond_a
    const/16 v2, 0xd

    if-ne p1, v2, :cond_b

    .line 228
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    goto/16 :goto_0

    :cond_b
    move-object p2, v1

    .line 231
    goto/16 :goto_0
.end method

.method private getVersionCode(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 498
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 499
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 500
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 501
    const-string v3, "com.ximalaya.ting.android.car"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 506
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    return v3

    .line 498
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private isOldSDK(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/ximalaya/speechcontrol/SpeechControler;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 484
    .local v0, "versionCode":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 485
    const/4 v1, 0x0

    .line 492
    :goto_0
    return v1

    .line 488
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 489
    const-string v1, "SpeechControler"

    const-string v2, "\u6ca1\u6709\u5b89\u88c5\u8f66\u8f7d\u5e94\u7528"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadErrBack(Ljava/lang/String;J)V
    .locals 10
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "randomkey"    # J

    .prologue
    .line 156
    iget-object v8, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    monitor-enter v8

    .line 158
    const-wide/16 v0, -0x64

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 160
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/ximalaya/speechcontrol/IMainDataCallback<*>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/speechcontrol/IMainDataCallback;

    invoke-interface {v0, p1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/ximalaya/speechcontrol/IMainDataCallback<*>;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 162
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v8

    .line 181
    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ximalaya/speechcontrol/IMainDataCallback;

    .line 166
    .local v3, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;
    if-eqz v3, :cond_2

    .line 167
    iget-object v9, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$4;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/ximalaya/speechcontrol/SpeechControler$4;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;Lcom/ximalaya/speechcontrol/IMainDataCallback;J)V

    invoke-virtual {v9, v0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private loadSuccessBack(Ljava/lang/String;IJ)V
    .locals 11
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "key"    # J

    .prologue
    .line 127
    iget-object v8, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    monitor-enter v8

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ximalaya/speechcontrol/IMainDataCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .local v4, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;
    if-eqz v4, :cond_0

    .line 131
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/ximalaya/speechcontrol/SpeechControler;->getSuccessInfo(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 132
    .local v5, "object":Ljava/lang/Object;
    iget-object v9, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mUiHandler:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;

    new-instance v1, Lcom/ximalaya/speechcontrol/SpeechControler$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/ximalaya/speechcontrol/SpeechControler$3;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;Lcom/ximalaya/speechcontrol/IMainDataCallback;Ljava/lang/Object;J)V

    invoke-virtual {v9, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v5    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v8

    .line 150
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "Json\u683c\u5f0f\u51fa\u9519"

    invoke-interface {v4, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 149
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public browseAlbums(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 9
    .param p1, "albumId"    # J
    .param p3, "page"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p5, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v2, 0x3

    invoke-virtual {p0, p5, v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->browseAlbums(JIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 330
    if-eqz p5, :cond_0

    .line 331
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public collectAlbum(JLcom/ximalaya/speechcontrol/ICollectCallback;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "collectCallback"    # Lcom/ximalaya/speechcontrol/ICollectCallback;

    .prologue
    .line 525
    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler$9;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;JLcom/ximalaya/speechcontrol/ICollectCallback;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->getAlbumById(JLcom/ximalaya/speechcontrol/IMainDataCallback;)V

    .line 544
    return-void
.end method

.method public collectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 1
    .param p1, "album"    # Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .prologue
    .line 520
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-virtual {v0, p1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->collectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    .line 521
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->destory()V

    .line 279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.car.service.LocalMediaServiceByd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 283
    const/4 v1, 0x0

    sput-object v1, Lcom/ximalaya/speechcontrol/SpeechControler;->mInstance:Lcom/ximalaya/speechcontrol/SpeechControler;

    .line 284
    return-void
.end method

.method public getAlbumByCategoryId(JIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 9
    .param p1, "categoryid"    # J
    .param p3, "page"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p5, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/16 v2, 0x9

    invoke-virtual {p0, p5, v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v6

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getAlbumByCategoryId(JIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 463
    if-eqz p5, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallBackMap(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J
    .locals 2
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<*>;I)J"
        }
    .end annotation

    .prologue
    .line 586
    .local p1, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCategoryList(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;>;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getCategoryModelList(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getCustomDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mCustomCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHisListTracks(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;>;"
    const/4 v3, 0x0

    .line 396
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/ximalaya/speechcontrol/SpeechControler;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 398
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v11, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    const-string v1, "history_listener_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "content":Ljava/lang/String;
    new-instance v1, Lcom/ximalaya/speechcontrol/SpeechControler$8;

    invoke-direct {v1, p0}, Lcom/ximalaya/speechcontrol/SpeechControler$8;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/SpeechControler$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 404
    .local v10, "objectType":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v7, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v11, v0

    .line 405
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    invoke-interface {v1, v7}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    .line 410
    .end local v7    # "content":Ljava/lang/String;
    .end local v10    # "objectType":Ljava/lang/reflect/Type;
    :cond_0
    invoke-interface {p1, v11}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_1
    :goto_0
    return-void

    .line 411
    :catch_0
    move-exception v9

    .line 412
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 413
    if-eqz p1, :cond_2

    .line 414
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    .line 417
    :cond_2
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHotContent(ZIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 7
    .param p1, "isTrack"    # Z
    .param p2, "page"    # I
    .param p3, "count"    # I
    .param p4, "callback"    # Lcom/ximalaya/speechcontrol/IMainDataCallback;

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-eqz p1, :cond_2

    const/4 v1, 0x5

    :goto_1
    invoke-virtual {p0, p4, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v4

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getHotContent(ZIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v6

    .line 387
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 388
    if-eqz p4, :cond_0

    .line 389
    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x6

    goto :goto_1
.end method

.method protected getMainDataCallBack()Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->isOldSDK:Z

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mMainDataCallBack:Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;

    goto :goto_0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    const-string v0, "com.ximalaya.ting.android.car"

    return-object v0
.end method

.method protected getPlayServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.XmPlayerService"

    return-object v0
.end method

.method protected getServiceBindSuccessCallBack()Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->serviceBindSuccessCallBack:Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    return-object v0
.end method

.method public getSourseLists(Ljava/lang/String;IIIILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 9
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .param p3, "page"    # I
    .param p4, "count"    # I
    .param p5, "type"    # I
    .param p6, "callback"    # Lcom/ximalaya/speechcontrol/IMainDataCallback;

    .prologue
    const/4 v1, 0x1

    .line 308
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-ne p5, v1, :cond_2

    :goto_1
    invoke-virtual {p0, p6, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getSourseLists(Ljava/lang/String;IIIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v8

    .line 314
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 315
    if-eqz p6, :cond_0

    .line 316
    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public getTrackListByLastTrackId(JJILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 9
    .param p1, "albumid"    # J
    .param p3, "trackId"    # J
    .param p5, "pageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p6, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Lcom/ximalaya/ting/android/opensdk/model/track/LastPlayTrackList;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/16 v2, 0x8

    invoke-virtual {p0, p6, v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v7

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v8}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->getTrackListByLastTrack(JJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 447
    if-eqz p6, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p6, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "appsecret"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "packid"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.car.service.LocalMediaServiceByd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "intent2":Landroid/content/Intent;
    const-string v1, "startLocalService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string v1, "com.ximalaya.ting.android.car"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    .line 274
    return-void
.end method

.method public isCollectedAlbum(J)Z
    .locals 3
    .param p1, "albumId"    # J

    .prologue
    .line 573
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;-><init>()V

    .line 574
    .local v0, "album":Lcom/ximalaya/ting/android/opensdk/model/album/Album;
    invoke-virtual {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->setId(J)V

    .line 575
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-virtual {v1, v0}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->isCollectedAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)Z

    move-result v1

    return v1
.end method

.method public openAppAndContinuePlay(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 429
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "tingcar://welcome?msg_type=continue_play"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 430
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J
    .locals 6
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<TT;>;I)J"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<TT;>;"
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    monitor-enter v3

    .line 239
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    .local v0, "key":J
    if-eqz p1, :cond_0

    .line 241
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mcallback:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->callBackType:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    monitor-exit v3

    return-wide v0

    .line 245
    .end local v0    # "key":J
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerServiceBindSuccessCallBack(Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;)V
    .locals 0
    .param p1, "serviceBindSuccessCallBack"    # Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->serviceBindSuccessCallBack:Lcom/ximalaya/speechcontrol/IServiceBindSuccessCallBack;

    .line 598
    return-void
.end method

.method public setCategoryId(ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .param p1, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/16 v2, 0xc

    invoke-virtual {p0, p2, v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setCategoryId(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 372
    if-eqz p2, :cond_0

    .line 373
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDebugBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p1, "dubugCallBack":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mDubugCallBack:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    .line 581
    return-void
.end method

.method public setPlayByAlbumTracks(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 0
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
    .line 344
    .local p1, "commonTrackList":Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;, "Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .local p3, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler;->playCommontTrackList(Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V

    .line 345
    return-void
.end method

.method public setPlayByTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 0
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
    .line 338
    .local p2, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2}, Lcom/ximalaya/speechcontrol/SpeechControler;->playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Lcom/ximalaya/speechcontrol/IMainDataCallback;)V

    .line 339
    return-void
.end method

.method public setPlayModel(Ljava/lang/String;ILcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 4
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "categoryId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p3, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->checkConnectionStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mSpeechControler:Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->putMapCallBack(Lcom/ximalaya/speechcontrol/IMainDataCallback;I)J

    move-result-wide v2

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;->setPlayModel(Ljava/lang/String;IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 300
    if-eqz p3, :cond_0

    .line 301
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->errCallBack(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAndExitApp()V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/ximalaya/speechcontrol/SpeechControler;->pause()V

    .line 473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.ting.car.byd.exitApp"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 476
    return-void
.end method

.method public unCollectAlbum(JLcom/ximalaya/speechcontrol/ICollectCallback;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "collectCallback"    # Lcom/ximalaya/speechcontrol/ICollectCallback;

    .prologue
    .line 552
    new-instance v0, Lcom/ximalaya/speechcontrol/SpeechControler$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/SpeechControler$10;-><init>(Lcom/ximalaya/speechcontrol/SpeechControler;JLcom/ximalaya/speechcontrol/ICollectCallback;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->getAlbumById(JLcom/ximalaya/speechcontrol/IMainDataCallback;)V

    .line 571
    return-void
.end method

.method public unCollectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 1
    .param p1, "album"    # Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler;->mScContentProviderUtil:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-virtual {v0, p1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->unCollectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    .line 548
    return-void
.end method
