.class public Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;
.super Lcom/autonavi/cvc/app/da/db/DaDatabase;
.source "DaDatabase_Impl.java"


# instance fields
.field private volatile _appDao:Lcom/autonavi/cvc/app/da/db/dao/AppDao;

.field private volatile _cityDao:Lcom/autonavi/cvc/app/da/db/dao/CityDao;

.field private volatile _daDao:Lcom/autonavi/cvc/app/da/db/dao/DaDao;

.field private volatile _weatherDao:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/db/DaDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;
    .param p1, "x1"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;
    .param p1, "x1"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method


# virtual methods
.method public appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_appDao:Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_appDao:Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    .line 186
    :goto_0
    return-object v0

    .line 182
    :cond_0
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_appDao:Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_appDao:Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_appDao:Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    monitor-exit p0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cityDao()Lcom/autonavi/cvc/app/da/db/dao/CityDao;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_cityDao:Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_cityDao:Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    .line 158
    :goto_0
    return-object v0

    .line 154
    :cond_0
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_cityDao:Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    if-nez v0, :cond_1

    .line 156
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_cityDao:Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_cityDao:Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    monitor-exit p0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 4

    .prologue
    .line 146
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "city"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "weather"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "apps_info"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mobile_app"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 5
    .param p1, "configuration"    # Landroid/arch/persistence/room/DatabaseConfiguration;

    .prologue
    .line 38
    new-instance v1, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v3, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl$1;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl$1;-><init>(Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;)V

    const-string v4, "6a42c8020cd3e03c0f18fcb0ebd49d6a"

    invoke-direct {v1, p1, v3, v4}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V

    .line 135
    .local v1, "_openCallback":Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    iget-object v3, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v3

    iget-object v4, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 136
    invoke-virtual {v3, v4}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 137
    invoke-virtual {v3, v4}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->version(I)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v3

    .line 139
    invoke-virtual {v3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v2

    .line 140
    .local v2, "_sqliteConfig":Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v3, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v3, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    .line 141
    .local v0, "_helper":Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    return-object v0
.end method

.method public daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_daDao:Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_daDao:Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    .line 200
    :goto_0
    return-object v0

    .line 196
    :cond_0
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_daDao:Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_daDao:Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_daDao:Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    monitor-exit p0

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public weatherDao()Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_weatherDao:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_weatherDao:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_weatherDao:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_weatherDao:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->_weatherDao:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;

    monitor-exit p0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
