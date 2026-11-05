.class public interface abstract Lcom/autonavi/cvc/app/da/db/dao/AppDao;
.super Ljava/lang/Object;
.source "AppDao.java"


# annotations
.annotation build Landroid/arch/persistence/room/Dao;
.end annotation


# virtual methods
.method public abstract getAllApps()Ljava/util/List;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "select * from apps_info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppByPkgName(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "select * from apps_info where pkg = :pkg limit 1"
    .end annotation
.end method

.method public abstract getAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/Query;
        value = "select version from apps_info where pkg = :pkg limit 1"
    .end annotation
.end method

.method public abstract getDownloadId(Ljava/lang/String;)J
    .annotation build Landroid/arch/persistence/room/Query;
        value = "select download_id from apps_info where pkg = :packageName"
    .end annotation
.end method

.method public abstract insertApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V
    .annotation build Landroid/arch/persistence/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insertApps(Ljava/util/List;)V
    .annotation build Landroid/arch/persistence/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;)V"
        }
    .end annotation
.end method
