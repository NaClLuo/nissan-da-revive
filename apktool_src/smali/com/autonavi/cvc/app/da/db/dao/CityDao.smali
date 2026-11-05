.class public interface abstract Lcom/autonavi/cvc/app/da/db/dao/CityDao;
.super Ljava/lang/Object;
.source "CityDao.java"


# annotations
.annotation build Landroid/arch/persistence/room/Dao;
.end annotation


# virtual methods
.method public abstract getAllCity()Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "select * from city order by py"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertCitys(Ljava/util/List;)V
    .annotation build Landroid/arch/persistence/room/Insert;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;)V"
        }
    .end annotation
.end method
