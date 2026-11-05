.class public Lcom/autonavi/cvc/app/da/weather/WeatherHelper;
.super Ljava/lang/Object;
.source "WeatherHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;
    }
.end annotation


# static fields
.field private static searchByCode:Ljava/lang/String;

.field private static searchByLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "http://wdapi.navinfo.com:8200/cardService/weather/forecastByAdminCode?cata=json&adminCode="

    sput-object v0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->searchByCode:Ljava/lang/String;

    .line 14
    const-string v0, "http://wdapi.navinfo.com:8200/cardService/weather/forecastByLocation?cata=json&"

    sput-object v0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->searchByLocation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWeather(Ljava/lang/String;Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;Z)V
    .locals 2
    .param p0, "cityCode"    # Ljava/lang/String;
    .param p1, "l"    # Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;
    .param p2, "save"    # Z

    # DA-REVIVE PATCH: wdapi.navinfo.com:8200 is offline.
    # WeatherFix resolves the city, calls open-meteo and rebuilds the legacy JSON.
    invoke-static {p0, p1, p2}, Lcom/autonavi/cvc/app/da/weather/WeatherFix;->getWeather(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static getWeatherFromDataBase(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/weather/model/Weather;
    .locals 2
    .param p0, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->weatherDao()Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;->getWeather(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/weather/model/Weather;

    move-result-object v0

    .line 53
    .local v0, "weather":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    return-object v0
.end method
