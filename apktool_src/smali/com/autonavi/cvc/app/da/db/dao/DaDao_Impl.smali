.class public Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;
.super Ljava/lang/Object;
.source "DaDao_Impl.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/db/dao/DaDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfMobileApp:Landroid/arch/persistence/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 19
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl$1;-><init>(Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__insertionAdapterOfMobileApp:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 56
    return-void
.end method


# virtual methods
.method public getApp()Lcom/autonavi/cvc/app/da/db/MobileApp;
    .locals 14

    .prologue
    .line 71
    const-string v9, "select * from mobile_app limit 1"

    .line 72
    .local v9, "_sql":Ljava/lang/String;
    const-string v11, "select * from mobile_app limit 1"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v10

    .line 73
    .local v10, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    iget-object v11, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v11, v10}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 75
    .local v0, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v11, "uid"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "_cursorIndexOfUid":I
    const-string v11, "version"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 77
    .local v7, "_cursorIndexOfVersion":I
    const-string v11, "filename"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, "_cursorIndexOfFilename":I
    const-string v11, "url"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, "_cursorIndexOfUrl":I
    const-string v11, "pkg"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 80
    .local v4, "_cursorIndexOfPkg":I
    const-string v11, "appName"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 81
    .local v1, "_cursorIndexOfAppName":I
    const-string v11, "downloadId"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, "_cursorIndexOfDownloadId":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 84
    new-instance v8, Lcom/autonavi/cvc/app/da/db/MobileApp;

    invoke-direct {v8}, Lcom/autonavi/cvc/app/da/db/MobileApp;-><init>()V

    .line 85
    .local v8, "_result":Lcom/autonavi/cvc/app/da/db/MobileApp;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v8, Lcom/autonavi/cvc/app/da/db/MobileApp;->uid:I

    .line 86
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/autonavi/cvc/app/da/db/MobileApp;->version:Ljava/lang/String;

    .line 87
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/autonavi/cvc/app/da/db/MobileApp;->filename:Ljava/lang/String;

    .line 88
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/autonavi/cvc/app/da/db/MobileApp;->url:Ljava/lang/String;

    .line 89
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/autonavi/cvc/app/da/db/MobileApp;->pkg:Ljava/lang/String;

    .line 90
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/autonavi/cvc/app/da/db/MobileApp;->appName:Ljava/lang/String;

    .line 91
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/autonavi/cvc/app/da/db/MobileApp;->downloadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v10}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 95
    return-object v8

    .line 93
    .end local v8    # "_result":Lcom/autonavi/cvc/app/da/db/MobileApp;
    :cond_0
    const/4 v8, 0x0

    .restart local v8    # "_result":Lcom/autonavi/cvc/app/da/db/MobileApp;
    goto :goto_0

    .line 97
    .end local v1    # "_cursorIndexOfAppName":I
    .end local v2    # "_cursorIndexOfDownloadId":I
    .end local v3    # "_cursorIndexOfFilename":I
    .end local v4    # "_cursorIndexOfPkg":I
    .end local v5    # "_cursorIndexOfUid":I
    .end local v6    # "_cursorIndexOfUrl":I
    .end local v7    # "_cursorIndexOfVersion":I
    .end local v8    # "_result":Lcom/autonavi/cvc/app/da/db/MobileApp;
    :catchall_0
    move-exception v11

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 98
    invoke-virtual {v10}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v11
.end method

.method public insertApp(Lcom/autonavi/cvc/app/da/db/MobileApp;)V
    .locals 2
    .param p1, "version"    # Lcom/autonavi/cvc/app/da/db/MobileApp;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__insertionAdapterOfMobileApp:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
