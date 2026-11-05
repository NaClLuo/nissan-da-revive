.class public Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;
.super Ljava/lang/Object;
.source "ClientDaConnectReq.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22c69abf5ddf6da4L


# instance fields
.field private Channel:Ljava/lang/String;

.field private ClientBluetoothMac:Ljava/lang/String;

.field private ClientBrand:Ljava/lang/String;

.field private ClientDaConnects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/http/ClientDaConnect;",
            ">;"
        }
    .end annotation
.end field

.field private ClientModel:Ljava/lang/String;

.field private ClientSoftVersion:Ljava/lang/String;

.field private ClientSystem:Ljava/lang/String;

.field private ClientSystemVersion:Ljava/lang/String;

.field private ClientWifiMac:Ljava/lang/String;

.field private IMEI:Ljava/lang/String;

.field private ProjectId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addClientDaConnects(Lcom/autonavi/cvc/app/da/http/ClientDaConnect;)V
    .locals 1
    .param p1, "clientDaConnect"    # Lcom/autonavi/cvc/app/da/http/ClientDaConnect;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientDaConnects:Ljava/util/List;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientDaConnects:Ljava/util/List;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientDaConnects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->Channel:Ljava/lang/String;

    return-object v0
.end method

.method public getClientBluetoothMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientBluetoothMac:Ljava/lang/String;

    return-object v0
.end method

.method public getClientBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getClientDaConnects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/http/ClientDaConnect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientDaConnects:Ljava/util/List;

    return-object v0
.end method

.method public getClientModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientModel:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSoftVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientSoftVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSystem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientSystemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getClientWifiMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientWifiMac:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->Channel:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setClientBluetoothMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientBluetoothMac"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientBluetoothMac:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setClientBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientBrand"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientBrand:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setClientDaConnects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/http/ClientDaConnect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "clientDaConnects":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/http/ClientDaConnect;>;"
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientDaConnects:Ljava/util/List;

    .line 34
    return-void
.end method

.method public setClientModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientModel"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientModel:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setClientSoftVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSoftVersion"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientSoftVersion:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setClientSystem(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSystem"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientSystem:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setClientSystemVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientSystemVersion"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientSystemVersion:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setClientWifiMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientWifiMac"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ClientWifiMac:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setIMEI(Ljava/lang/String;)V
    .locals 0
    .param p1, "iMEI"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->IMEI:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .locals 0
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaConnectReq;->ProjectId:Ljava/lang/String;

    .line 40
    return-void
.end method
