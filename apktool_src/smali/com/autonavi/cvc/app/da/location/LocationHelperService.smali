.class public Lcom/autonavi/cvc/app/da/location/LocationHelperService;
.super Landroid/app/Service;
.source "LocationHelperService.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;


# instance fields
.field locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

.field locationListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;-><init>(Lcom/autonavi/cvc/app/da/location/LocationHelperService;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->mBinder:Landroid/os/Binder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    const-string v0, "onBind"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCityChange(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 0
    .param p1, "locationInfo"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 133
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "onCreate"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-static {}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInstance()Lcom/autonavi/cvc/app/da/location/LocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .line 73
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->init(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v0, p0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->addListener(Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;)V

    .line 75
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->start()V

    .line 77
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->stop()V

    .line 86
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    :cond_0
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    .line 89
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .line 90
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 94
    const-string v2, "onLocationChanged"

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 109
    :cond_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/location/LocationListener;

    .line 101
    .local v1, "l":Lcom/autonavi/cvc/app/da/location/LocationListener;
    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    invoke-interface {v1, p1}, Lcom/autonavi/cvc/app/da/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onLocationInfoChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 4
    .param p1, "locationInfo"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 113
    const-string v2, "onLocationInfoChanged"

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 128
    :cond_0
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/location/LocationListener;

    .line 120
    .local v1, "l":Lcom/autonavi/cvc/app/da/location/LocationListener;
    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v1, p1}, Lcom/autonavi/cvc/app/da/location/LocationListener;->onLocationInfoChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
