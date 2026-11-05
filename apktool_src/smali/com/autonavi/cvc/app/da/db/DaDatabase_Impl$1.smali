.class Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl$1;
.super Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
.source "DaDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl$1;->this$0:Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;

    invoke-direct {p0}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;-><init>()V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 40
    const-string v0, "CREATE TABLE IF NOT EXISTS `city` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT, `cityName` TEXT, `cityCode` TEXT, `py` TEXT, `nameSort` TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v0, "CREATE TABLE IF NOT EXISTS `weather` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT, `publishDate` TEXT, `forecast` TEXT, `admincode` TEXT, `adminname` TEXT, `windPower` INTEGER, `weather` INTEGER, `windDirection` INTEGER, `temperature` INTEGER, `indices` TEXT, `publicTime` TEXT, `aqi` INTEGER, `pm25` INTEGER, `detail` TEXT, `desc` TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 42
    const-string v0, "CREATE TABLE IF NOT EXISTS `apps_info` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT, `appName` TEXT, `pkg` TEXT, `webApp` INTEGER, `iconFilePath` TEXT, `url` TEXT, `file_name` TEXT, `version` TEXT, `download_id` INTEGER)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "CREATE TABLE IF NOT EXISTS `mobile_app` (`uid` INTEGER PRIMARY KEY AUTOINCREMENT, `version` TEXT, `filename` TEXT, `url` TEXT, `pkg` TEXT, `appName` TEXT, `downloadId` INTEGER)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"6a42c8020cd3e03c0f18fcb0ebd49d6a\")"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 49
    const-string v0, "DROP TABLE IF EXISTS `city`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "DROP TABLE IF EXISTS `weather`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    const-string v0, "DROP TABLE IF EXISTS `apps_info`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 52
    const-string v0, "DROP TABLE IF EXISTS `mobile_app`"

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl$1;->this$0:Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->access$002(Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 57
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl$1;->this$0:Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;->access$100(Lcom/autonavi/cvc/app/da/db/DaDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 58
    return-void
.end method

.method protected validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 23
    .param p1, "_db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 61
    new-instance v3, Ljava/util/HashMap;

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 62
    .local v3, "_columnsCity":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    const-string v18, "uid"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "uid"

    const-string v21, "INTEGER"

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v18, "cityName"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "cityName"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v18, "cityCode"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "cityCode"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v18, "py"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "py"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v18, "nameSort"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "nameSort"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v11, Ljava/util/HashSet;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 68
    .local v11, "_foreignKeysCity":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v15, Landroid/arch/persistence/room/util/TableInfo;

    const-string v18, "city"

    move-object/from16 v0, v18

    invoke-direct {v15, v0, v3, v11}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    .line 69
    .local v15, "_infoCity":Landroid/arch/persistence/room/util/TableInfo;
    const-string v18, "city"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v7

    .line 70
    .local v7, "_existingCity":Landroid/arch/persistence/room/util/TableInfo;
    invoke-virtual {v15, v7}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 71
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Migration didn\'t properly handle city(com.autonavi.cvc.app.da.weather.model.CityModel).\n Expected:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n Found:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 75
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    const/16 v18, 0xf

    move/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 76
    .local v5, "_columnsWeather":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    const-string v18, "uid"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "uid"

    const-string v21, "INTEGER"

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v18, "publishDate"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "publishDate"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v18, "forecast"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "forecast"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v18, "admincode"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "admincode"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v18, "adminname"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "adminname"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v18, "windPower"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "windPower"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v18, "weather"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "weather"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v18, "windDirection"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "windDirection"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v18, "temperature"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "temperature"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v18, "indices"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "indices"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v18, "publicTime"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "publicTime"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v18, "aqi"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "aqi"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v18, "pm25"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "pm25"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v18, "detail"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "detail"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v18, "desc"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "desc"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance v13, Ljava/util/HashSet;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 92
    .local v13, "_foreignKeysWeather":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v17, Landroid/arch/persistence/room/util/TableInfo;

    const-string v18, "weather"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5, v13}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    .line 93
    .local v17, "_infoWeather":Landroid/arch/persistence/room/util/TableInfo;
    const-string v18, "weather"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v9

    .line 94
    .local v9, "_existingWeather":Landroid/arch/persistence/room/util/TableInfo;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 95
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Migration didn\'t properly handle weather(com.autonavi.cvc.app.da.weather.model.Weather).\n Expected:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n Found:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 99
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 100
    .local v2, "_columnsAppsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    const-string v18, "uid"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "uid"

    const-string v21, "INTEGER"

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v18, "appName"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "appName"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v18, "pkg"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "pkg"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v18, "webApp"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "webApp"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v18, "iconFilePath"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "iconFilePath"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v18, "url"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "url"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v18, "file_name"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "file_name"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v18, "version"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "version"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v18, "download_id"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "download_id"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v10, Ljava/util/HashSet;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 110
    .local v10, "_foreignKeysAppsInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v14, Landroid/arch/persistence/room/util/TableInfo;

    const-string v18, "apps_info"

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v2, v10}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    .line 111
    .local v14, "_infoAppsInfo":Landroid/arch/persistence/room/util/TableInfo;
    const-string v18, "apps_info"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v6

    .line 112
    .local v6, "_existingAppsInfo":Landroid/arch/persistence/room/util/TableInfo;
    invoke-virtual {v14, v6}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 113
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Migration didn\'t properly handle apps_info(com.autonavi.cvc.app.da.thirdpartyappmanager.LinkedAppBean).\n Expected:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n Found:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 117
    :cond_2
    new-instance v4, Ljava/util/HashMap;

    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    .local v4, "_columnsMobileApp":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    const-string v18, "uid"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "uid"

    const-string v21, "INTEGER"

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v18, "version"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "version"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v18, "filename"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "filename"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v18, "url"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "url"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v18, "pkg"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "pkg"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v18, "appName"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "appName"

    const-string v21, "TEXT"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v18, "downloadId"

    new-instance v19, Landroid/arch/persistence/room/util/TableInfo$Column;

    const-string v20, "downloadId"

    const-string v21, "INTEGER"

    const/16 v22, 0x0

    invoke-direct/range {v19 .. v22}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v12, Ljava/util/HashSet;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 126
    .local v12, "_foreignKeysMobileApp":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v16, Landroid/arch/persistence/room/util/TableInfo;

    const-string v18, "mobile_app"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v12}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    .line 127
    .local v16, "_infoMobileApp":Landroid/arch/persistence/room/util/TableInfo;
    const-string v18, "mobile_app"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/arch/persistence/room/util/TableInfo;->read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;

    move-result-object v8

    .line 128
    .local v8, "_existingMobileApp":Landroid/arch/persistence/room/util/TableInfo;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/arch/persistence/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 129
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Migration didn\'t properly handle mobile_app(com.autonavi.cvc.app.da.db.MobileApp).\n Expected:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n Found:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 133
    :cond_3
    return-void
.end method
