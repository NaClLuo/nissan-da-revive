.class public Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;
.super Ljava/lang/Object;
.source "WeatherParser.java"


# static fields
.field private static weather_codes:[Ljava/lang/String;

.field private static weather_imgs:[I

.field private static windDirection:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static windPowers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .prologue
    .line 18
    const v19, 0x7f020011

    .line 19
    .local v19, "sunny":I
    const v13, 0x7f02000b

    .line 20
    .local v13, "rain":I
    const v11, 0x7f020009

    .line 21
    .local v11, "moderateRain":I
    const v6, 0x7f020005

    .line 22
    .local v6, "heavyRain":I
    const v14, 0x7f02000c

    .line 23
    .local v14, "rainstorm":I
    const v1, 0x7f020001

    .line 24
    .local v1, "bigrainstorm":I
    const v8, 0x7f020006

    .line 25
    .local v8, "heavyrainstorm":I
    const v10, 0x7f020008

    .line 26
    .local v10, "littleSnow":I
    const v17, 0x7f02000f

    .line 27
    .local v17, "snow":I
    const v7, 0x7f020007

    .line 28
    .local v7, "heavySnow":I
    const v20, 0x7f020012

    .line 29
    .local v20, "thunder":I
    const v21, 0x7f020013

    .line 30
    .local v21, "thunderwithhail":I
    const v16, 0x7f02000e

    .line 31
    .local v16, "sleet":I
    const v15, 0x7f02000d

    .line 32
    .local v15, "sandstorm":I
    const v3, 0x7f020002

    .line 33
    .local v3, "floatingdust":I
    const v18, 0x7f020010

    .line 34
    .local v18, "strongsandstorm":I
    const v5, 0x7f020004

    .line 35
    .local v5, "freezingrain":I
    const v2, 0x7f02000a

    .line 36
    .local v2, "cloudy":I
    const v4, 0x7f020003

    .line 37
    .local v4, "fog":I
    const v12, 0x7f02000a

    .line 38
    .local v12, "overcast":I
    const v22, 0x7f020014

    .line 39
    .local v22, "unknown":I
    const/16 v23, 0x2a

    move/from16 v0, v23

    new-array v9, v0, [I

    const/16 v23, 0x0

    aput v19, v9, v23

    const/16 v23, 0x1

    aput v2, v9, v23

    const/16 v23, 0x2

    aput v12, v9, v23

    const/16 v23, 0x3

    aput v13, v9, v23

    const/16 v23, 0x4

    aput v20, v9, v23

    const/16 v23, 0x5

    aput v21, v9, v23

    const/16 v23, 0x6

    aput v16, v9, v23

    const/16 v23, 0x7

    aput v13, v9, v23

    const/16 v23, 0x8

    aput v11, v9, v23

    const/16 v23, 0x9

    aput v6, v9, v23

    const/16 v23, 0xa

    aput v14, v9, v23

    const/16 v23, 0xb

    aput v1, v9, v23

    const/16 v23, 0xc

    aput v8, v9, v23

    const/16 v23, 0xd

    aput v10, v9, v23

    const/16 v23, 0xe

    aput v10, v9, v23

    const/16 v23, 0xf

    aput v17, v9, v23

    const/16 v23, 0x10

    aput v7, v9, v23

    const/16 v23, 0x11

    aput v7, v9, v23

    const/16 v23, 0x12

    aput v4, v9, v23

    const/16 v23, 0x13

    aput v5, v9, v23

    const/16 v23, 0x14

    aput v15, v9, v23

    const/16 v23, 0x15

    aput v13, v9, v23

    const/16 v23, 0x16

    aput v11, v9, v23

    const/16 v23, 0x17

    aput v14, v9, v23

    const/16 v23, 0x18

    aput v1, v9, v23

    const/16 v23, 0x19

    aput v1, v9, v23

    const/16 v23, 0x1a

    aput v17, v9, v23

    const/16 v23, 0x1b

    aput v7, v9, v23

    const/16 v23, 0x1c

    aput v7, v9, v23

    const/16 v23, 0x1d

    aput v3, v9, v23

    const/16 v23, 0x1e

    aput v3, v9, v23

    const/16 v23, 0x1f

    aput v18, v9, v23

    const/16 v23, 0x20

    aput v4, v9, v23

    const/16 v23, 0x21

    aput v17, v9, v23

    const/16 v23, 0x22

    aput v4, v9, v23

    const/16 v23, 0x23

    aput v3, v9, v23

    const/16 v23, 0x24

    aput v3, v9, v23

    const/16 v23, 0x25

    aput v3, v9, v23

    const/16 v23, 0x26

    aput v3, v9, v23

    const/16 v23, 0x27

    aput v4, v9, v23

    const/16 v23, 0x28

    aput v4, v9, v23

    const/16 v23, 0x29

    aput v22, v9, v23

    .line 52
    .local v9, "imgs":[I
    sput-object v9, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->weather_imgs:[I

    .line 54
    const/16 v23, 0x2a

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "\u6674"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "\u591a\u4e91"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string v25, "\u9634"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    const-string v25, "\u9635\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const-string v25, "\u96f7\u9635\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    const-string v25, "\u96f7\u9635\u96e8\u4f34\u6709\u51b0\u96f9"

    aput-object v25, v23, v24

    const/16 v24, 0x6

    const-string v25, "\u96e8\u5939\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x7

    const-string v25, "\u5c0f\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x8

    const-string v25, "\u4e2d\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x9

    const-string v25, "\u5927\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0xa

    const-string v25, "\u66b4\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0xb

    const-string v25, "\u5927\u66b4\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0xc

    const-string v25, "\u7279\u5927\u66b4\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0xd

    const-string v25, "\u9635\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0xe

    const-string v25, "\u5c0f\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0xf

    const-string v25, "\u4e2d\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x10

    const-string v25, "\u5927\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x11

    const-string v25, "\u66b4\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x12

    const-string v25, "\u96fe"

    aput-object v25, v23, v24

    const/16 v24, 0x13

    const-string v25, "\u51bb\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x14

    const-string v25, "\u6c99\u5c18\u66b4"

    aput-object v25, v23, v24

    const/16 v24, 0x15

    const-string v25, "\u5c0f\u96e8-\u4e2d\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x16

    const-string v25, "\u4e2d\u96e8-\u5927\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x17

    const-string v25, "\u5927\u96e8-\u66b4\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x18

    const-string v25, "\u66b4\u96e8-\u5927\u66b4\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x19

    const-string v25, "\u5927\u66b4\u96e8-\u7279\u5927\u66b4\u96e8"

    aput-object v25, v23, v24

    const/16 v24, 0x1a

    const-string v25, "\u5c0f\u5230\u4e2d\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x1b

    const-string v25, "\u4e2d\u5230\u5927\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x1c

    const-string v25, "\u5927\u5230\u66b4\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x1d

    const-string v25, "\u6d6e\u5c18"

    aput-object v25, v23, v24

    const/16 v24, 0x1e

    const-string v25, "\u626c\u6c99"

    aput-object v25, v23, v24

    const/16 v24, 0x1f

    const-string v25, "\u5f3a\u6c99\u5c18\u66b4"

    aput-object v25, v23, v24

    const/16 v24, 0x20

    const-string v25, "\u6d53\u96fe"

    aput-object v25, v23, v24

    const/16 v24, 0x21

    const-string v25, "\u96ea"

    aput-object v25, v23, v24

    const/16 v24, 0x22

    const-string v25, "\u5f3a\u6d53\u96fe"

    aput-object v25, v23, v24

    const/16 v24, 0x23

    const-string v25, "\u973e"

    aput-object v25, v23, v24

    const/16 v24, 0x24

    const-string v25, "\u4e2d\u5ea6\u973e"

    aput-object v25, v23, v24

    const/16 v24, 0x25

    const-string v25, "\u91cd\u5ea6\u973e"

    aput-object v25, v23, v24

    const/16 v24, 0x26

    const-string v25, "\u4e25\u91cd\u973e"

    aput-object v25, v23, v24

    const/16 v24, 0x27

    const-string v25, "\u5927\u96fe"

    aput-object v25, v23, v24

    const/16 v24, 0x28

    const-string v25, "\u7279\u5f3a\u6d53\u96fe"

    aput-object v25, v23, v24

    const/16 v24, 0x29

    const-string v25, "\u65e0"

    aput-object v25, v23, v24

    sput-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->weather_codes:[Ljava/lang/String;

    .line 67
    const/16 v23, 0xa

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "\u5fae\u98ce"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "3-4\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x2

    const-string v25, "4-5\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x3

    const-string v25, "5-6\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x4

    const-string v25, "6-7\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x5

    const-string v25, "7-8\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x6

    const-string v25, "8-9\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x7

    const-string v25, "9-10\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x8

    const-string v25, "10-11\u7ea7"

    aput-object v25, v23, v24

    const/16 v24, 0x9

    const-string v25, "11-12\u7ea7"

    aput-object v25, v23, v24

    sput-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windPowers:[Ljava/lang/String;

    .line 70
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    sput-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    .line 71
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x0

    const-string v25, "\u9759\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x7

    const-string v25, "\u5317\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x8

    const-string v25, "\u4e1c\u5317\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x1

    const-string v25, "\u4e1c\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x2

    const-string v25, "\u4e1c\u5357\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x3

    const-string v25, "\u5357\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x4

    const-string v25, "\u897f\u5357\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x5

    const-string v25, "\u897f\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, 0x6

    const-string v25, "\u897f\u5317\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v23, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    const/16 v24, -0x1

    const-string v25, "\u65cb\u8f6c\u98ce"

    invoke-virtual/range {v23 .. v25}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeatherImgId(I)I
    .locals 2
    .param p0, "weatherCode"    # I

    .prologue
    .line 112
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->weather_convert(I)I

    move-result v0

    .line 113
    .local v0, "code":I
    sget-object v1, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->weather_imgs:[I

    aget v1, v1, v0

    return v1
.end method

.method public static getWeatherInfoResult(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/weather/model/Weather;
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 118
    if-nez p0, :cond_0

    move-object v3, v6

    .line 131
    :goto_0
    return-object v3

    .line 123
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "jsonData":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 125
    .local v4, "weatherList":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 126
    .local v5, "weatherListResult":Lorg/json/JSONObject;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 127
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-virtual {v1, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/cvc/app/da/weather/model/Weather;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v3, "weather":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    goto :goto_0

    .line 129
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "jsonData":Lorg/json/JSONObject;
    .end local v3    # "weather":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    .end local v4    # "weatherList":Lorg/json/JSONArray;
    .end local v5    # "weatherListResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v3, v6

    .line 131
    goto :goto_0
.end method

.method static getWeatherText(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 89
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->weather_convert(I)I

    move-result v0

    .line 90
    .local v0, "weatherCode":I
    sget-object v1, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->weather_codes:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method static getWindDirectionText(I)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windDirection:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getWindText(I)Ljava/lang/String;
    .locals 1
    .param p0, "windPower"    # I

    .prologue
    .line 107
    sget-object v0, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->windPowers:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private static weather_convert(I)I
    .locals 1
    .param p0, "weather_code"    # I

    .prologue
    .line 94
    const/16 v0, 0x21

    if-le p0, v0, :cond_0

    .line 95
    const/16 v0, 0x31

    if-ne p0, v0, :cond_1

    .line 96
    const/16 p0, 0x22

    .line 103
    :cond_0
    :goto_0
    return p0

    .line 97
    :cond_1
    const/16 v0, 0x35

    if-lt p0, v0, :cond_2

    const/16 v0, 0x3a

    if-gt p0, v0, :cond_2

    .line 98
    add-int/lit8 p0, p0, -0x12

    goto :goto_0

    .line 100
    :cond_2
    const/16 p0, 0x29

    goto :goto_0
.end method
