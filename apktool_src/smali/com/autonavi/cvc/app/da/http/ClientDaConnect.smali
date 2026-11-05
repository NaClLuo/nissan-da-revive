.class public Lcom/autonavi/cvc/app/da/http/ClientDaConnect;
.super Ljava/lang/Object;
.source "ClientDaConnect.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3ae2d8692366ff6cL


# instance fields
.field private CarName:Ljava/lang/String;

.field private City:Ljava/lang/String;

.field private ClientCarrier:Ljava/lang/String;

.field private ClientNetworktype:Ljava/lang/String;

.field private ClientResolution:Ljava/lang/String;

.field private ConnectDateTime:Ljava/lang/String;

.field private ConnectType:Ljava/lang/String;

.field private DaWifiMac:Ljava/lang/String;

.field private District:Ljava/lang/String;

.field private GpsX:Ljava/lang/String;

.field private GpsY:Ljava/lang/String;

.field private LifeSpan:Ljava/lang/String;

.field private Province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->CarName:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->City:Ljava/lang/String;

    return-object v0
.end method

.method public getClientCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ClientCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getClientNetworktype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ClientNetworktype:Ljava/lang/String;

    return-object v0
.end method

.method public getClientResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ClientResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ConnectDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ConnectType:Ljava/lang/String;

    return-object v0
.end method

.method public getDaWifiMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->DaWifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->District:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->GpsX:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->GpsY:Ljava/lang/String;

    return-object v0
.end method

.method public getLifeSpan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->LifeSpan:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->Province:Ljava/lang/String;

    return-object v0
.end method

.method public setCarName(Ljava/lang/String;)V
    .locals 0
    .param p1, "carName"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->CarName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->City:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setClientCarrier(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientCarrier"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ClientCarrier:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setClientNetworktype(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientNetworktype"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ClientNetworktype:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setClientResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientResolution"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ClientResolution:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setConnectDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectDateTime"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ConnectDateTime:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setConnectType(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectType"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->ConnectType:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDaWifiMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "daWifiMac"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->DaWifiMac:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "district"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->District:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setGpsX(Ljava/lang/String;)V
    .locals 0
    .param p1, "gpsX"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->GpsX:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setGpsY(Ljava/lang/String;)V
    .locals 0
    .param p1, "gpsY"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->GpsY:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setLifeSpan(Ljava/lang/String;)V
    .locals 0
    .param p1, "lifeSpan"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->LifeSpan:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnect;->Province:Ljava/lang/String;

    .line 51
    return-void
.end method
