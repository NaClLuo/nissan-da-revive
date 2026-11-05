.class Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;
.super Lcom/autonavi/cvc/app/da/location/LocationService$Stub;
.source "LocationHelperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/location/LocationHelperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/location/LocationHelperService;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/location/LocationHelperService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/location/LocationHelperService;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelperService;

    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/location/LocationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/autonavi/cvc/app/da/location/LocationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/autonavi/cvc/app/da/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 41
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelperService;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getLocationInfo()Lcom/autonavi/cvc/app/da/location/LocationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelperService;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelperService;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getLocationInfo()Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(Lcom/autonavi/cvc/app/da/location/LocationListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/autonavi/cvc/app/da/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 51
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/location/LocationHelperService$1;->this$0:Lcom/autonavi/cvc/app/da/location/LocationHelperService;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/location/LocationHelperService;->locationListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
