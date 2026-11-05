.class public interface abstract Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/location/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationListener"
.end annotation


# virtual methods
.method public abstract onCityChange(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
.end method

.method public abstract onLocationChanged(Landroid/location/Location;)V
.end method

.method public abstract onLocationInfoChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
.end method
