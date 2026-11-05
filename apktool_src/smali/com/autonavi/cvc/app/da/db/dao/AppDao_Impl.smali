.class public Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;
.super Ljava/lang/Object;
.source "AppDao_Impl.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/db/dao/AppDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfLinkedAppBean:Landroid/arch/persistence/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 21
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl$1;-><init>(Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__insertionAdapterOfLinkedAppBean:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 66
    return-void
.end method


# virtual methods
.method public getAllApps()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const-string v14, "select * from apps_info"

    .line 93
    .local v14, "_sql":Ljava/lang/String;
    const-string v18, "select * from apps_info"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v15

    .line 94
    .local v15, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 96
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 97
    .local v8, "_cursorIndexOfUid":I
    const-string v18, "appName"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 98
    .local v3, "_cursorIndexOfAppName":I
    const-string v18, "pkg"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 99
    .local v7, "_cursorIndexOfPkg":I
    const-string v18, "webApp"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 100
    .local v11, "_cursorIndexOfWebApp":I
    const-string v18, "iconFilePath"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 101
    .local v6, "_cursorIndexOfIconFilePath":I
    const-string v18, "url"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 102
    .local v9, "_cursorIndexOfUrl":I
    const-string v18, "file_name"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 103
    .local v5, "_cursorIndexOfFileName":I
    const-string v18, "version"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 104
    .local v10, "_cursorIndexOfVersion":I
    const-string v18, "download_id"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 105
    .local v4, "_cursorIndexOfDownloadId":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    .local v13, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 108
    new-instance v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-direct {v12}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;-><init>()V

    .line 109
    .local v12, "_item":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->uid:I

    .line 110
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appName:Ljava/lang/String;

    .line 111
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->pkg:Ljava/lang/String;

    .line 114
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 115
    .local v16, "_tmp":I
    if-eqz v16, :cond_0

    const/16 v17, 0x1

    .line 116
    .local v17, "_tmpWebApp":Z
    :goto_1
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setWebApp(Z)V

    .line 117
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->iconFilePath:Ljava/lang/String;

    .line 118
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->url:Ljava/lang/String;

    .line 119
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->fileName:Ljava/lang/String;

    .line 120
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->version:Ljava/lang/String;

    .line 121
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->downloadId:J

    .line 122
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 126
    .end local v3    # "_cursorIndexOfAppName":I
    .end local v4    # "_cursorIndexOfDownloadId":I
    .end local v5    # "_cursorIndexOfFileName":I
    .end local v6    # "_cursorIndexOfIconFilePath":I
    .end local v7    # "_cursorIndexOfPkg":I
    .end local v8    # "_cursorIndexOfUid":I
    .end local v9    # "_cursorIndexOfUrl":I
    .end local v10    # "_cursorIndexOfVersion":I
    .end local v11    # "_cursorIndexOfWebApp":I
    .end local v12    # "_item":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .end local v16    # "_tmp":I
    .end local v17    # "_tmpWebApp":Z
    :catchall_0
    move-exception v18

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v18

    .line 115
    .restart local v3    # "_cursorIndexOfAppName":I
    .restart local v4    # "_cursorIndexOfDownloadId":I
    .restart local v5    # "_cursorIndexOfFileName":I
    .restart local v6    # "_cursorIndexOfIconFilePath":I
    .restart local v7    # "_cursorIndexOfPkg":I
    .restart local v8    # "_cursorIndexOfUid":I
    .restart local v9    # "_cursorIndexOfUrl":I
    .restart local v10    # "_cursorIndexOfVersion":I
    .restart local v11    # "_cursorIndexOfWebApp":I
    .restart local v12    # "_item":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .restart local v13    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .restart local v16    # "_tmp":I
    :cond_0
    const/16 v17, 0x0

    goto :goto_1

    .line 126
    .end local v12    # "_item":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v16    # "_tmp":I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 124
    return-object v13
.end method

.method public getAppByPkgName(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .locals 20
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v14, "select * from apps_info where pkg = ? limit 1"

    .line 159
    .local v14, "_sql":Ljava/lang/String;
    const-string v18, "select * from apps_info where pkg = ? limit 1"

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v15

    .line 160
    .local v15, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 161
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 162
    invoke-virtual {v15, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 166
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 168
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v18, "uid"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 169
    .local v9, "_cursorIndexOfUid":I
    const-string v18, "appName"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 170
    .local v4, "_cursorIndexOfAppName":I
    const-string v18, "pkg"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 171
    .local v8, "_cursorIndexOfPkg":I
    const-string v18, "webApp"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 172
    .local v12, "_cursorIndexOfWebApp":I
    const-string v18, "iconFilePath"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 173
    .local v7, "_cursorIndexOfIconFilePath":I
    const-string v18, "url"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 174
    .local v10, "_cursorIndexOfUrl":I
    const-string v18, "file_name"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 175
    .local v6, "_cursorIndexOfFileName":I
    const-string v18, "version"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 176
    .local v11, "_cursorIndexOfVersion":I
    const-string v18, "download_id"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 178
    .local v5, "_cursorIndexOfDownloadId":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 179
    new-instance v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-direct {v13}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;-><init>()V

    .line 180
    .local v13, "_result":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->uid:I

    .line 181
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appName:Ljava/lang/String;

    .line 182
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->pkg:Ljava/lang/String;

    .line 185
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 186
    .local v16, "_tmp":I
    if-eqz v16, :cond_1

    const/16 v17, 0x1

    .line 187
    .local v17, "_tmpWebApp":Z
    :goto_1
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setWebApp(Z)V

    .line 188
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->iconFilePath:Ljava/lang/String;

    .line 189
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->url:Ljava/lang/String;

    .line 190
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->fileName:Ljava/lang/String;

    .line 191
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->version:Ljava/lang/String;

    .line 192
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v13, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->downloadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v16    # "_tmp":I
    .end local v17    # "_tmpWebApp":Z
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 199
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 196
    return-object v13

    .line 164
    .end local v3    # "_cursor":Landroid/database/Cursor;
    .end local v4    # "_cursorIndexOfAppName":I
    .end local v5    # "_cursorIndexOfDownloadId":I
    .end local v6    # "_cursorIndexOfFileName":I
    .end local v7    # "_cursorIndexOfIconFilePath":I
    .end local v8    # "_cursorIndexOfPkg":I
    .end local v9    # "_cursorIndexOfUid":I
    .end local v10    # "_cursorIndexOfUrl":I
    .end local v11    # "_cursorIndexOfVersion":I
    .end local v12    # "_cursorIndexOfWebApp":I
    .end local v13    # "_result":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    :cond_0
    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .restart local v3    # "_cursor":Landroid/database/Cursor;
    .restart local v4    # "_cursorIndexOfAppName":I
    .restart local v5    # "_cursorIndexOfDownloadId":I
    .restart local v6    # "_cursorIndexOfFileName":I
    .restart local v7    # "_cursorIndexOfIconFilePath":I
    .restart local v8    # "_cursorIndexOfPkg":I
    .restart local v9    # "_cursorIndexOfUid":I
    .restart local v10    # "_cursorIndexOfUrl":I
    .restart local v11    # "_cursorIndexOfVersion":I
    .restart local v12    # "_cursorIndexOfWebApp":I
    .restart local v13    # "_result":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .restart local v16    # "_tmp":I
    :cond_1
    const/16 v17, 0x0

    goto :goto_1

    .line 194
    .end local v13    # "_result":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v16    # "_tmp":I
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "_result":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    goto :goto_2

    .line 198
    .end local v4    # "_cursorIndexOfAppName":I
    .end local v5    # "_cursorIndexOfDownloadId":I
    .end local v6    # "_cursorIndexOfFileName":I
    .end local v7    # "_cursorIndexOfIconFilePath":I
    .end local v8    # "_cursorIndexOfPkg":I
    .end local v9    # "_cursorIndexOfUid":I
    .end local v10    # "_cursorIndexOfUrl":I
    .end local v11    # "_cursorIndexOfVersion":I
    .end local v12    # "_cursorIndexOfWebApp":I
    .end local v13    # "_result":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    :catchall_0
    move-exception v18

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 199
    invoke-virtual {v15}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v18
.end method

.method public getAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v3, "select version from apps_info where pkg = ? limit 1"

    .line 134
    .local v3, "_sql":Ljava/lang/String;
    const-string v5, "select version from apps_info where pkg = ? limit 1"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v4

    .line 135
    .local v4, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 136
    .local v0, "_argIndex":I
    if-nez p1, :cond_0

    .line 137
    invoke-virtual {v4, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 141
    :goto_0
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v5, v4}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 144
    .local v1, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 145
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 151
    .local v2, "_result":Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 149
    return-object v2

    .line 139
    .end local v1    # "_cursor":Landroid/database/Cursor;
    .end local v2    # "_result":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 147
    .restart local v1    # "_cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_result":Ljava/lang/String;
    goto :goto_1

    .line 151
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 152
    invoke-virtual {v4}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v5
.end method

.method public getDownloadId(Ljava/lang/String;)J
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 205
    const-string v4, "select download_id from apps_info where pkg = ?"

    .line 206
    .local v4, "_sql":Ljava/lang/String;
    const-string v6, "select download_id from apps_info where pkg = ?"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v5

    .line 207
    .local v5, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 208
    .local v0, "_argIndex":I
    if-nez p1, :cond_0

    .line 209
    invoke-virtual {v5, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 213
    :goto_0
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v6, v5}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 216
    .local v1, "_cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 223
    .local v2, "_result":J
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 221
    return-wide v2

    .line 211
    .end local v1    # "_cursor":Landroid/database/Cursor;
    .end local v2    # "_result":J
    :cond_0
    invoke-virtual {v5, v0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 219
    .restart local v1    # "_cursor":Landroid/database/Cursor;
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "_result":J
    goto :goto_1

    .line 223
    .end local v2    # "_result":J
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 224
    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v6
.end method

.method public insertApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V
    .locals 2
    .param p1, "appBean"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__insertionAdapterOfLinkedAppBean:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public insertApps(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "linkedAppBeen":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__insertionAdapterOfLinkedAppBean:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 73
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
