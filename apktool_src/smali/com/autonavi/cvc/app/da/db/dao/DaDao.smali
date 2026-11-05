.class public interface abstract Lcom/autonavi/cvc/app/da/db/dao/DaDao;
.super Ljava/lang/Object;
.source "DaDao.java"


# annotations
.annotation build Landroid/arch/persistence/room/Dao;
.end annotation


# virtual methods
.method public abstract getApp()Lcom/autonavi/cvc/app/da/db/MobileApp;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "select * from mobile_app limit 1"
    .end annotation
.end method

.method public abstract insertApp(Lcom/autonavi/cvc/app/da/db/MobileApp;)V
    .annotation build Landroid/arch/persistence/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
