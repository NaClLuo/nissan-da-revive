.class public interface abstract Lcom/autonavi/cvc/app/da/location/LocationService;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/location/LocationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/autonavi/cvc/app/da/location/LocationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLocationInfo()Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/autonavi/cvc/app/da/location/LocationListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
