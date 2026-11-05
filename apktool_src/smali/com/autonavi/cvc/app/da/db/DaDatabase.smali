.class public abstract Lcom/autonavi/cvc/app/da/db/DaDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "DaDatabase.java"


# annotations
.annotation build Landroid/arch/persistence/room/Database;
    entities = {
        Lcom/autonavi/cvc/app/da/weather/model/CityModel;,
        Lcom/autonavi/cvc/app/da/weather/model/Weather;,
        Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;,
        Lcom/autonavi/cvc/app/da/db/MobileApp;
    }
    version = 0x1
.end annotation

.annotation build Landroid/arch/persistence/room/TypeConverters;
    value = {
        Lcom/autonavi/cvc/app/da/db/convertors/WeatherConverter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;
.end method

.method public abstract cityDao()Lcom/autonavi/cvc/app/da/db/dao/CityDao;
.end method

.method public abstract daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;
.end method

.method public abstract weatherDao()Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;
.end method
