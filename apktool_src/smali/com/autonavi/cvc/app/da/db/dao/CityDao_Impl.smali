.class public Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;
.super Ljava/lang/Object;
.source "CityDao_Impl.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/db/dao/CityDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfCityModel:Landroid/arch/persistence/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 21
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl$1;-><init>(Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__insertionAdapterOfCityModel:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 52
    return-void
.end method


# virtual methods
.method public getAllCity()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-string v8, "select * from city order by py"

    .line 68
    .local v8, "_sql":Ljava/lang/String;
    const-string v10, "select * from city order by py"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v9

    .line 69
    .local v9, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    iget-object v10, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v10, v9}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    .local v0, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v10, "uid"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 72
    .local v5, "_cursorIndexOfUid":I
    const-string v10, "cityName"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, "_cursorIndexOfCityName":I
    const-string v10, "cityCode"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 74
    .local v1, "_cursorIndexOfCityCode":I
    const-string v10, "py"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 75
    .local v4, "_cursorIndexOfPy":I
    const-string v10, "nameSort"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, "_cursorIndexOfNameSort":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 79
    new-instance v6, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-direct {v6}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;-><init>()V

    .line 80
    .local v6, "_item":Lcom/autonavi/cvc/app/da/weather/model/CityModel;
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v6, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->uid:I

    .line 81
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityName:Ljava/lang/String;

    .line 82
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityCode:Ljava/lang/String;

    .line 83
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->py:Ljava/lang/String;

    .line 84
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->nameSort:Ljava/lang/String;

    .line 85
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    .end local v1    # "_cursorIndexOfCityCode":I
    .end local v2    # "_cursorIndexOfCityName":I
    .end local v3    # "_cursorIndexOfNameSort":I
    .end local v4    # "_cursorIndexOfPy":I
    .end local v5    # "_cursorIndexOfUid":I
    .end local v6    # "_item":Lcom/autonavi/cvc/app/da/weather/model/CityModel;
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    :catchall_0
    move-exception v10

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    invoke-virtual {v9}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v10

    .line 89
    .restart local v1    # "_cursorIndexOfCityCode":I
    .restart local v2    # "_cursorIndexOfCityName":I
    .restart local v3    # "_cursorIndexOfNameSort":I
    .restart local v4    # "_cursorIndexOfPy":I
    .restart local v5    # "_cursorIndexOfUid":I
    .restart local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    invoke-virtual {v9}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 87
    return-object v7
.end method

.method public insertCitys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "cityModels":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__insertionAdapterOfCityModel:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 59
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
