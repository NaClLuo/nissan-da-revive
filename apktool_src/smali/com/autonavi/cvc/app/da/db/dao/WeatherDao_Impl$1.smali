.class Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "WeatherDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter",
        "<",
        "Lcom/autonavi/cvc/app/da/weather/model/Weather;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;
    .param p2, "x0"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl$1;->this$0:Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 10
    .param p1, "stmt"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;

    .prologue
    .line 28
    const/4 v6, 0x1

    iget v7, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->uid:I

    int-to-long v8, v7

    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 29
    iget-object v6, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->publishDate:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 30
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 35
    :goto_0
    iget-object v6, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-static {v6}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter;->forecastListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "_tmp":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 37
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 41
    :goto_1
    iget-object v3, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->location:Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;

    .line 42
    .local v3, "_tmpLocation":Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    if-eqz v3, :cond_4

    .line 43
    iget-object v6, v3, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;->admincode:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 44
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 48
    :goto_2
    iget-object v6, v3, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;->adminname:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 49
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 57
    :goto_3
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    .line 58
    .local v1, "_tmpCurrentWeather":Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    if-eqz v1, :cond_5

    .line 59
    const/4 v6, 0x6

    iget v7, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->windPower:I

    int-to-long v8, v7

    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 60
    const/4 v6, 0x7

    iget v7, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->weather:I

    int-to-long v8, v7

    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 61
    const/16 v6, 0x8

    iget v7, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->windDirection:I

    int-to-long v8, v7

    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 62
    const/16 v6, 0x9

    iget v7, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->temperature:I

    int-to-long v8, v7

    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 69
    :goto_4
    iget-object v2, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->index:Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

    .line 70
    .local v2, "_tmpIndex":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    if-eqz v2, :cond_7

    .line 72
    iget-object v6, v2, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;->indices:Ljava/util/List;

    invoke-static {v6}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter;->indicesListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "_tmp_1":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 74
    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 81
    .end local v5    # "_tmp_1":Ljava/lang/String;
    :goto_5
    iget-object v4, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;

    .line 82
    .local v4, "_tmpWeatherAir":Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    if-eqz v4, :cond_b

    .line 83
    iget-object v6, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->publicTime:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 84
    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 88
    :goto_6
    const/16 v6, 0xc

    iget v7, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->aqi:I

    int-to-long v8, v7

    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 89
    const/16 v6, 0xd

    iget v7, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->pm25:I

    int-to-long v8, v7

    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 90
    iget-object v6, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->detail:Ljava/lang/String;

    if-nez v6, :cond_9

    .line 91
    const/16 v6, 0xe

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 95
    :goto_7
    iget-object v6, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->desc:Ljava/lang/String;

    if-nez v6, :cond_a

    .line 96
    const/16 v6, 0xf

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 107
    :goto_8
    return-void

    .line 32
    .end local v0    # "_tmp":Ljava/lang/String;
    .end local v1    # "_tmpCurrentWeather":Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    .end local v2    # "_tmpIndex":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    .end local v3    # "_tmpLocation":Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    .end local v4    # "_tmpWeatherAir":Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    :cond_0
    const/4 v6, 0x2

    iget-object v7, p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;->publishDate:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 39
    .restart local v0    # "_tmp":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x3

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 46
    .restart local v3    # "_tmpLocation":Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    :cond_2
    const/4 v6, 0x4

    iget-object v7, v3, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;->admincode:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2

    .line 51
    :cond_3
    const/4 v6, 0x5

    iget-object v7, v3, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;->adminname:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 54
    :cond_4
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 55
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto/16 :goto_3

    .line 64
    .restart local v1    # "_tmpCurrentWeather":Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    :cond_5
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 65
    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 66
    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 67
    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 76
    .restart local v2    # "_tmpIndex":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    .restart local v5    # "_tmp_1":Ljava/lang/String;
    :cond_6
    const/16 v6, 0xa

    invoke-interface {p1, v6, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5

    .line 79
    .end local v5    # "_tmp_1":Ljava/lang/String;
    :cond_7
    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 86
    .restart local v4    # "_tmpWeatherAir":Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    :cond_8
    const/16 v6, 0xb

    iget-object v7, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->publicTime:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_6

    .line 93
    :cond_9
    const/16 v6, 0xe

    iget-object v7, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->detail:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_7

    .line 98
    :cond_a
    const/16 v6, 0xf

    iget-object v7, v4, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->desc:Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_8

    .line 101
    :cond_b
    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 102
    const/16 v6, 0xc

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 103
    const/16 v6, 0xd

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 104
    const/16 v6, 0xe

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 105
    const/16 v6, 0xf

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p2, Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "INSERT OR REPLACE INTO `weather`(`uid`,`publishDate`,`forecast`,`admincode`,`adminname`,`windPower`,`weather`,`windDirection`,`temperature`,`indices`,`publicTime`,`aqi`,`pm25`,`detail`,`desc`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
