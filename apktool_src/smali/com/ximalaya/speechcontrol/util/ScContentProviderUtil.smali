.class public Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;
.super Ljava/lang/Object;
.source "ScContentProviderUtil.java"


# static fields
.field public static final SHARE_DATA_BASE_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

.field public static final SHARE_DATA_HOST:Ljava/lang/String; = "com.ximalaya.ting.android.util.TingSharedDataContentProvider"

.field public static final TypeDownLoadTrack:I = 0x3

.field public static final TypeListenerChange:I = 0x2

.field public static final TypeLoginIn:I = 0x0

.field public static final TypeLoginOut:I = 0x1

.field public static final dataChange:Landroid/net/Uri;

.field private static mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataChangeCallBack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/speechcontrol/IDataChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "content://com.ximalaya.ting.android.dataChange"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->dataChange:Landroid/net/Uri;

    .line 156
    const-string v0, "content://com.ximalaya.ting.android.util.TingSharedDataContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    .line 157
    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_BASE_URI:Landroid/net/Uri;

    const-string v1, "sharedpreferences"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    .line 52
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->dataChange:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;-><init>(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->dataChange(ZILjava/lang/Object;)V

    return-void
.end method

.method private dataChange(ZILjava/lang/Object;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZITT;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    .local v0, "dataCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/speechcontrol/IDataChangeCallback;>;"
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ximalaya/speechcontrol/IDataChangeCallback;

    .line 146
    .local v2, "iDataChangeCallback":Lcom/ximalaya/speechcontrol/IDataChangeCallback;
    invoke-interface {v2, p3}, Lcom/ximalaya/speechcontrol/IDataChangeCallback;->change(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    .end local v0    # "dataCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/speechcontrol/IDataChangeCallback;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "iDataChangeCallback":Lcom/ximalaya/speechcontrol/IDataChangeCallback;
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    if-nez v0, :cond_1

    .line 94
    const-class v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-direct {v0, p0}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    sget-object v0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mInstance:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public collectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 4
    .param p1, "album"    # Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .prologue
    .line 219
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 221
    .local v0, "contentValues":Landroid/content/ContentValues;
    :try_start_0
    const-string v2, "album"

    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCollectedByLocalAlbum(Lcom/ximalaya/speechcontrol/IMainDataCallback;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ximalaya/speechcontrol/IMainDataCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Album;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "callback":Lcom/ximalaya/speechcontrol/IMainDataCallback;, "Lcom/ximalaya/speechcontrol/IMainDataCallback<Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/album/Album;>;>;"
    const/4 v3, 0x0

    .line 165
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 167
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v7, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/album/Album;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string v1, "COLLECT_ALLBUM"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ge v1, v2, :cond_0

    .line 171
    invoke-interface {p1, v3}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    .line 194
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v1, "COLLECT_ALLBUM"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "content":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$2;

    invoke-direct {v1, p0}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$2;-><init>(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;)V

    invoke-virtual {v1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 179
    .local v11, "objectType":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v8, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v7, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    .end local v11    # "objectType":Ljava/lang/reflect/Type;
    :goto_1
    invoke-interface {p1, v7}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    .line 185
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v10

    .line 187
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 181
    .local v10, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v10}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1

    .line 193
    .end local v8    # "content":Ljava/lang/String;
    .end local v10    # "e":Lcom/google/gson/JsonSyntaxException;
    :cond_1
    invoke-interface {p1, v7}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isCollectedAlbum(J)Z
    .locals 11
    .param p1, "albumId"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 243
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "id == ?"

    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 245
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 247
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v0, v8

    .line 258
    :goto_1
    return v0

    .line 248
    :catch_0
    move-exception v7

    .line 249
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 255
    :catch_1
    move-exception v7

    .line 256
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v9

    .line 258
    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    move v0, v9

    .line 253
    goto :goto_1
.end method

.method public isCollectedAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)Z
    .locals 9
    .param p1, "album"    # Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .prologue
    const/4 v8, 0x0

    .line 202
    const/4 v6, 0x0

    .line 204
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    if-nez v6, :cond_0

    move v0, v8

    .line 215
    :goto_0
    return v0

    .line 209
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    :catch_0
    move-exception v7

    .line 213
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v8

    .line 215
    goto :goto_0
.end method

.method public putDataCallBack(ILcom/ximalaya/speechcontrol/IDataChangeCallback;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "callback"    # Lcom/ximalaya/speechcontrol/IDataChangeCallback;

    .prologue
    .line 103
    if-nez p2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 108
    .local v0, "dataChangeCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/speechcontrol/IDataChangeCallback;>;"
    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "dataChangeCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/speechcontrol/IDataChangeCallback;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .restart local v0    # "dataChangeCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/speechcontrol/IDataChangeCallback;>;"
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeDataChange(Lcom/ximalaya/speechcontrol/IDataChangeCallback;)V
    .locals 4
    .param p1, "dataCallback"    # Lcom/ximalaya/speechcontrol/IDataChangeCallback;

    .prologue
    .line 121
    if-nez p1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mDataChangeCallBack:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 126
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Lcom/ximalaya/speechcontrol/IDataChangeCallback;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .local v0, "dataChangeCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/speechcontrol/IDataChangeCallback;>;"
    if-eqz v0, :cond_2

    .line 132
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unCollectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V
    .locals 5
    .param p1, "album"    # Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->SHARE_DATA_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
