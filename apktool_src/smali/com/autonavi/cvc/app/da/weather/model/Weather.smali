.class public Lcom/autonavi/cvc/app/da/weather/model/Weather;
.super Ljava/lang/Object;
.source "Weather.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/weather/model/IWeather;


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    tableName = "weather"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;,
        Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;,
        Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;,
        Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;,
        Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    }
.end annotation


# static fields
.field private static WEEK:[Ljava/lang/String; = null

.field private static final WEEKDAYS:I = 0x7


# instance fields
.field public currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
    .annotation build Landroid/arch/persistence/room/Embedded;
    .end annotation
.end field

.field public forecast:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;",
            ">;"
        }
    .end annotation
.end field

.field public index:Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
    .annotation build Landroid/arch/persistence/room/Embedded;
    .end annotation
.end field

.field public location:Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;
    .annotation build Landroid/arch/persistence/room/Embedded;
    .end annotation
.end field

.field public publishDate:Ljava/lang/String;

.field temp:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/Ignore;
    .end annotation
.end field

.field public uid:I
    .annotation build Landroid/arch/persistence/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
    .annotation build Landroid/arch/persistence/room/Embedded;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u661f\u671f\u65e5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u661f\u671f\u4e00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u661f\u671f\u4e8c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u661f\u671f\u4e09"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u661f\u671f\u56db"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u661f\u671f\u4e94"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u661f\u671f\u516d"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->WEEK:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const-string v0, "\u2103"

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->temp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAQI()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;

    iget v0, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->aqi:I

    goto :goto_0
.end method

.method public getAirQuality()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;

    if-nez v0, :cond_0

    .line 200
    const-string v0, " "

    .line 203
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7a7a\u6c14\u8d28\u91cf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->weatherAir:Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;

    iget v1, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;->aqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->location:Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->location:Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Location;->adminname:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentTemperature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "0"

    .line 127
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    iget v1, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->temperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDate(I)Ljava/lang/String;
    .locals 9
    .param p1, "day"    # I

    .prologue
    const/4 v6, 0x0

    .line 132
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    if-nez v7, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v6

    .line 136
    :cond_1
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge p1, v7, :cond_0

    .line 140
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;

    .line 141
    .local v1, "dayForecast":Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    iget-object v7, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->time:Ljava/lang/String;

    const-string v8, "T"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v5, v7, v8

    .line 144
    .local v5, "time":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 145
    .local v0, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 147
    .local v6, "weatherDate":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "weatherDate":Ljava/lang/String;
    .restart local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/text/ParseException;
    :goto_1
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 148
    .end local v2    # "e":Ljava/text/ParseException;
    .end local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v4    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    goto :goto_1
.end method

.method public getPublishTime()Ljava/util/Date;
    .locals 6

    .prologue
    .line 263
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 266
    .local v1, "df":Ljava/text/DateFormat;
    :try_start_0
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->publishDate:Ljava/lang/String;

    const-string v4, "T"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 272
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public getTemp(I)Ljava/lang/String;
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v1, 0x0

    .line 180
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    if-nez v2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-object v1

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 188
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;

    .line 189
    .local v0, "dayForecast":Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
    if-eqz v0, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->nightTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->dayTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->temp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWashCarInfo()Ljava/lang/String;
    .locals 6

    .prologue
    # DA-REVIVE PATCH: open-meteo has no car-wash index. Return "" so
    # CommonConstant.carwashIndex resolves to 1 star instead of NPE on null.
    const-string v2, ""

    .line 218
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->index:Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

    if-nez v3, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object v2

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->index:Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

    iget-object v1, v3, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;->indices:Ljava/util/List;

    .line 223
    .local v1, "indices":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;>;"
    if-eqz v1, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;

    .line 228
    .local v0, "i":Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;
    iget v4, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;->type:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    .line 230
    iget-object v2, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;->desc:Ljava/lang/String;

    # DA-REVIVE PATCH: a null desc would still crash the detail page.
    if-eqz v2, :desc_ok
    const-string v2, ""
    :desc_ok

    goto :goto_0
.end method

.method public getWeather(I)Ljava/lang/String;
    .locals 2
    .param p1, "day"    # I

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "\u65e0"

    .line 117
    :goto_0
    return-object v1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    iget v1, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->weather:I

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWeatherText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 110
    const-string v1, "\u65e0"

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;

    .line 113
    .local v0, "dayForecast":Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
    if-nez v0, :cond_3

    .line 115
    const-string v1, "\u65e0"

    goto :goto_0

    .line 117
    :cond_3
    iget v1, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->dayWeather:I

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWeatherText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWeatherImgId(I)I
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "weatherCode":I
    if-nez p1, :cond_1

    .line 241
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    iget v1, v2, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->weather:I

    .line 257
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWeatherImgId(I)I

    move-result v2

    return v2

    .line 249
    :cond_1
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;

    .line 252
    .local v0, "dayForecast":Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
    if-eqz v0, :cond_0

    .line 253
    iget v1, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->dayWeather:I

    goto :goto_0
.end method

.method public getWeek(I)Ljava/lang/String;
    .locals 11
    .param p1, "day"    # I

    .prologue
    const/4 v10, 0x7

    const/4 v7, 0x0

    .line 310
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    if-nez v8, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-object v7

    .line 314
    :cond_1
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge p1, v8, :cond_0

    .line 318
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;

    .line 319
    .local v2, "dayForecast":Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 320
    .local v5, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    iget-object v8, v2, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->time:Ljava/lang/String;

    const-string v9, "T"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 322
    .local v6, "time":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 323
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 324
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 325
    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 326
    .local v3, "dayIndex":I
    const/4 v8, 0x1

    if-lt v3, v8, :cond_0

    if-gt v3, v10, :cond_0

    .line 330
    sget-object v8, Lcom/autonavi/cvc/app/da/weather/model/Weather;->WEEK:[Ljava/lang/String;

    add-int/lit8 v9, v3, -0x1

    aget-object v7, v8, v9
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local v3    # "dayIndex":I
    :catch_0
    move-exception v4

    .line 332
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWindDirection(I)Ljava/lang/String;
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v1, 0x0

    .line 277
    if-nez p1, :cond_2

    .line 278
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    if-nez v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object v1

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    iget v1, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->windDirection:I

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWindDirectionText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;

    .line 290
    .local v0, "dayForecast":Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
    if-eqz v0, :cond_0

    .line 294
    iget v1, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->dayWindDirection:I

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWindDirectionText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getWindPower(I)Ljava/lang/String;
    .locals 3
    .param p1, "day"    # I

    .prologue
    const/4 v1, 0x0

    .line 156
    if-nez p1, :cond_2

    .line 157
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    if-nez v2, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v1

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->currentWeather:Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;

    iget v1, v1, Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;->windPower:I

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWindText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 164
    :cond_2
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather;->forecast:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;

    .line 169
    .local v0, "dayForecast":Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
    if-eqz v0, :cond_0

    .line 173
    iget v1, v0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->dayWindPower:I

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWindText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
