.class public Lcom/autonavi/cvc/app/da/location/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/autonavi/cvc/app/da/location/LocationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cityCode:Ljava/lang/String;

.field private cityName:Ljava/lang/String;

.field private currentAddress:Ljava/lang/String;

.field private lat:D

.field private lng:D

.field private provCode:Ljava/lang/String;

.field private provName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/autonavi/cvc/app/da/location/LocationInfo$1;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/location/LocationInfo$1;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, v6, [D

    .line 25
    .local v0, "as":[D
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 26
    aget-wide v2, v0, v4

    iput-wide v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lat:D

    .line 27
    aget-wide v2, v0, v5

    iput-wide v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lng:D

    .line 28
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    .line 29
    .local v1, "strings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 30
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityName:Ljava/lang/String;

    .line 31
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provName:Ljava/lang/String;

    .line 32
    aget-object v2, v1, v6

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->currentAddress:Ljava/lang/String;

    .line 33
    const/4 v2, 0x3

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityCode:Ljava/lang/String;

    .line 34
    const/4 v2, 0x4

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provCode:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->currentAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lat:D

    return-wide v0
.end method

.method public getLng()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lng:D

    return-wide v0
.end method

.method public getProvCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provCode:Ljava/lang/String;

    return-object v0
.end method

.method public getProvname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provName:Ljava/lang/String;

    return-object v0
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityCode:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCurrentAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentAddress"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->currentAddress:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setLat(D)V
    .locals 1
    .param p1, "lat"    # D

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lat:D

    .line 55
    return-void
.end method

.method public setLng(D)V
    .locals 1
    .param p1, "lng"    # D

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lng:D

    .line 63
    return-void
.end method

.method public setProvCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "provCode"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provCode:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setProvname(Ljava/lang/String;)V
    .locals 0
    .param p1, "provname"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    new-array v0, v6, [D

    iget-wide v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lat:D

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->lng:D

    aput-wide v2, v0, v5

    .line 115
    .local v0, "as":[D
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    .line 118
    const/4 v2, 0x5

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityName:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provName:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->currentAddress:Ljava/lang/String;

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->cityCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/location/LocationInfo;->provCode:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 119
    .local v1, "strings":[Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 125
    return-void
.end method
