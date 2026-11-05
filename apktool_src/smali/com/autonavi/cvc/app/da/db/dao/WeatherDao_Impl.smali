.class public Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;
.super Ljava/lang/Object;
.source "WeatherDao_Impl.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;


# instance fields
.field private final __db:Landroid/arch/persistence/room/RoomDatabase;

.field private final __insertionAdapterOfWeather:Landroid/arch/persistence/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    .line 20
    new-instance v0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl$1;-><init>(Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__insertionAdapterOfWeather:Landroid/arch/persistence/room/EntityInsertionAdapter;

    .line 109
    return-void
.end method


# virtual methods
.method public getWeather(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/weather/model/Weather;
    .locals 30
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v20, "select * from weather where admincode = ? order by uid desc limit 1"

    .line 125
    .local v20, "_sql":Ljava/lang/String;
    const-string v28, "select * from weather where admincode = ? order by uid desc limit 1"

    const/16 v29, 0x1

    invoke-static/range {v28 .. v29}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v21

    .line 126
    .local v21, "_statement":Landroid/arch/persistence/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 127
    .local v2, "_argIndex":I
    if-nez p1, :cond_3

    .line 128
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindNull(I)V

    .line 132
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 134
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v28, "uid"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 135
    .local v15, "_cursorIndexOfUid":I
    const-string v28, "publishDate"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 136
    .local v13, "_cursorIndexOfPublishDate":I
    const-string v28, "forecast"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 137
    .local v9, "_cursorIndexOfForecast":I
    const-string v28, "admincode"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 138
    .local v4, "_cursorIndexOfAdmincode":I
    const-string v28, "adminname"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 139
    .local v5, "_cursorIndexOfAdminname":I
    const-string v28, "windPower"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 140
    .local v18, "_cursorIndexOfWindPower":I
    const-string v28, "weather"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 141
    .local v16, "_cursorIndexOfWeather":I
    const-string v28, "windDirection"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 142
    .local v17, "_cursorIndexOfWindDirection":I
    const-string v28, "temperature"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 143
    .local v14, "_cursorIndexOfTemperature":I
    const-string v28, "indices"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 144
    .local v10, "_cursorIndexOfIndices":I
    const-string v28, "publicTime"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 145
    .local v12, "_cursorIndexOfPublicTime":I
    const-string v28, "aqi"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 146
    .local v6, "_cursorIndexOfAqi":I
    const-string v28, "pm25"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 147
    .local v11, "_cursorIndexOfPm25":I
    const-string v28, "detail"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 148
    .local v8, "_cursorIndexOfDetail":I
    const-string v28, "desc"

    move-object/from16 v0, v28

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 150
    .local v7, "_cursorIndexOfDesc":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 152
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_4

    .line 153
    :cond_0
    new-instance v25, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;

    invoke-direct/range {v25 .. v25}, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;-><init>()V

    .line 154
    .local v25, "_tmpLocation":Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;->admincode:Ljava/lang/String;

    .line 155
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;->adminname:Ljava/lang/String;

    .line 160
    :goto_1
    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1

    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_5

    .line 161
    :cond_1
    new-instance v23, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    invoke-direct/range {v23 .. v23}, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;-><init>()V

    .line 162
    .local v23, "_tmpCurrentWeather":Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->windPower:I

    .line 163
    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->weather:I

    .line 164
    move/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->windDirection:I

    .line 165
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->temperature:I

    .line 170
    :goto_2
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_6

    .line 171
    new-instance v24, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

    invoke-direct/range {v24 .. v24}, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;-><init>()V

    .line 173
    .local v24, "_tmpIndex":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 174
    .local v22, "_tmp":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter;->stringToIndicesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;->indices:Ljava/util/List;

    .line 179
    .end local v22    # "_tmp":Ljava/lang/String;
    :goto_3
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_7

    .line 180
    :cond_2
    new-instance v26, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;

    invoke-direct/range {v26 .. v26}, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;-><init>()V

    .line 181
    .local v26, "_tmpWeatherAir":Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->publicTime:Ljava/lang/String;

    .line 182
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->aqi:I

    .line 183
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v26

    iput v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->pm25:I

    .line 184
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->detail:Ljava/lang/String;

    .line 185
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->desc:Ljava/lang/String;

    .line 189
    :goto_4
    new-instance v19, Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-direct/range {v19 .. v19}, Lcom/autonavi/cvc/app/da/weather/model/Weather;-><init>()V

    .line 190
    .local v19, "_result":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, v19

    iput v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather;->uid:I

    .line 191
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather;->publishDate:Ljava/lang/String;

    .line 193
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 194
    .local v27, "_tmp_1":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter;->stringToForecastList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    .line 195
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather;->location:Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;

    .line 196
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    .line 197
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather;->index:Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

    .line 198
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather;->weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v23    # "_tmpCurrentWeather":Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    .end local v24    # "_tmpIndex":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    .end local v25    # "_tmpLocation":Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    .end local v26    # "_tmpWeatherAir":Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    .end local v27    # "_tmp_1":Ljava/lang/String;
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 205
    invoke-virtual/range {v21 .. v21}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    .line 202
    return-object v19

    .line 130
    .end local v3    # "_cursor":Landroid/database/Cursor;
    .end local v4    # "_cursorIndexOfAdmincode":I
    .end local v5    # "_cursorIndexOfAdminname":I
    .end local v6    # "_cursorIndexOfAqi":I
    .end local v7    # "_cursorIndexOfDesc":I
    .end local v8    # "_cursorIndexOfDetail":I
    .end local v9    # "_cursorIndexOfForecast":I
    .end local v10    # "_cursorIndexOfIndices":I
    .end local v11    # "_cursorIndexOfPm25":I
    .end local v12    # "_cursorIndexOfPublicTime":I
    .end local v13    # "_cursorIndexOfPublishDate":I
    .end local v14    # "_cursorIndexOfTemperature":I
    .end local v15    # "_cursorIndexOfUid":I
    .end local v16    # "_cursorIndexOfWeather":I
    .end local v17    # "_cursorIndexOfWindDirection":I
    .end local v18    # "_cursorIndexOfWindPower":I
    .end local v19    # "_result":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    :cond_3
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 157
    .restart local v3    # "_cursor":Landroid/database/Cursor;
    .restart local v4    # "_cursorIndexOfAdmincode":I
    .restart local v5    # "_cursorIndexOfAdminname":I
    .restart local v6    # "_cursorIndexOfAqi":I
    .restart local v7    # "_cursorIndexOfDesc":I
    .restart local v8    # "_cursorIndexOfDetail":I
    .restart local v9    # "_cursorIndexOfForecast":I
    .restart local v10    # "_cursorIndexOfIndices":I
    .restart local v11    # "_cursorIndexOfPm25":I
    .restart local v12    # "_cursorIndexOfPublicTime":I
    .restart local v13    # "_cursorIndexOfPublishDate":I
    .restart local v14    # "_cursorIndexOfTemperature":I
    .restart local v15    # "_cursorIndexOfUid":I
    .restart local v16    # "_cursorIndexOfWeather":I
    .restart local v17    # "_cursorIndexOfWindDirection":I
    .restart local v18    # "_cursorIndexOfWindPower":I
    :cond_4
    const/16 v25, 0x0

    .restart local v25    # "_tmpLocation":Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    goto/16 :goto_1

    .line 167
    :cond_5
    const/16 v23, 0x0

    .restart local v23    # "_tmpCurrentWeather":Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    goto/16 :goto_2

    .line 176
    :cond_6
    const/16 v24, 0x0

    .restart local v24    # "_tmpIndex":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    goto/16 :goto_3

    .line 187
    :cond_7
    const/16 v26, 0x0

    .restart local v26    # "_tmpWeatherAir":Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    goto :goto_4

    .line 200
    .end local v23    # "_tmpCurrentWeather":Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    .end local v24    # "_tmpIndex":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    .end local v25    # "_tmpLocation":Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    .end local v26    # "_tmpWeatherAir":Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    :cond_8
    const/16 v19, 0x0

    .restart local v19    # "_result":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    goto :goto_5

    .line 204
    .end local v4    # "_cursorIndexOfAdmincode":I
    .end local v5    # "_cursorIndexOfAdminname":I
    .end local v6    # "_cursorIndexOfAqi":I
    .end local v7    # "_cursorIndexOfDesc":I
    .end local v8    # "_cursorIndexOfDetail":I
    .end local v9    # "_cursorIndexOfForecast":I
    .end local v10    # "_cursorIndexOfIndices":I
    .end local v11    # "_cursorIndexOfPm25":I
    .end local v12    # "_cursorIndexOfPublicTime":I
    .end local v13    # "_cursorIndexOfPublishDate":I
    .end local v14    # "_cursorIndexOfTemperature":I
    .end local v15    # "_cursorIndexOfUid":I
    .end local v16    # "_cursorIndexOfWeather":I
    .end local v17    # "_cursorIndexOfWindDirection":I
    .end local v18    # "_cursorIndexOfWindPower":I
    .end local v19    # "_result":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    :catchall_0
    move-exception v28

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 205
    invoke-virtual/range {v21 .. v21}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v28
.end method

.method public insertWeather(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 2
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__insertionAdapterOfWeather:Landroid/arch/persistence/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao_Impl;->__db:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
