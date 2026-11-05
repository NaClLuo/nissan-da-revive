.class public interface abstract Lcom/autonavi/cvc/app/da/location/LocationListener;
.super Ljava/lang/Object;
.source "LocationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/location/LocationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLocationChanged(Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLocationInfoChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
