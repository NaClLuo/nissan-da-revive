.class public interface abstract Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;
.super Ljava/lang/Object;
.source "WeatherDao.java"


# annotations
.annotation build Landroid/arch/persistence/room/Dao;
.end annotation


# virtual methods
.method public abstract getWeather(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/weather/model/Weather;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "select * from weather where admincode = :cityCode order by uid desc limit 1"
    .end annotation
.end method

.method public abstract insertWeather(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .annotation build Landroid/arch/persistence/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
