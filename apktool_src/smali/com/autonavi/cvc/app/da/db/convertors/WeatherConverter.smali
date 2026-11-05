.class public Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter;
.super Ljava/lang/Object;
.source "WeatherConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forecastListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static indicesListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;>;"
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringToForecastList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter$1;

    invoke-direct {v1}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter$1;-><init>()V

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static stringToIndicesList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/TypeConverter;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    .local v0, "gson":Lcom/google/gson/Gson;
    new-instance v1, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter$2;

    invoke-direct {v1}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter$2;-><init>()V

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method
