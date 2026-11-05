.class public Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "MainViewModel.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;
.implements Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;
.implements Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;
    }
.end annotation


# instance fields
.field private appsLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private connected:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

.field private locationInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Lcom/autonavi/cvc/app/da/location/LocationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onlineVersion:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field timer:Ljava/util/Timer;

.field private weatherInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/Weather;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 47
    return-void
.end method

.method private ToastUtil(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timeLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->ToastUtil(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->weatherInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->onlineVersion:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private appsInit()V
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->registerAppsChangeListener(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V

    .line 68
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->loadApps(Landroid/content/Context;)V

    .line 69
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getThirdPartApps()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<+Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;>;"
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method private checkAppVersionOnline()V
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;->getDaUrl()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "daUrl":Ljava/lang/String;
    new-instance v1, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$5;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$5;-><init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V

    invoke-static {v0, v1}, Lcom/autonavi/cvc/app/da/http/HttpConnect;->post(Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    .line 239
    return-void
.end method

.method private timeThread()V
    .locals 6

    .prologue
    .line 102
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timer:Ljava/util/Timer;

    .line 103
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$1;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$1;-><init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 117
    return-void
.end method


# virtual methods
.method public checkAppVersion()V
    .locals 3

    .prologue
    .line 242
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/cvc/app/da/db/dao/DaDao;->getApp()Lcom/autonavi/cvc/app/da/db/MobileApp;

    move-result-object v0

    .line 243
    .local v0, "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->onlineVersion:Landroid/arch/lifecycle/MutableLiveData;

    iget-object v2, v0, Lcom/autonavi/cvc/app/da/db/MobileApp;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->checkAppVersionOnline()V

    .line 249
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v1

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$6;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$6;-><init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V

    invoke-virtual {v1, v2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->updateApps(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V

    .line 255
    return-void
.end method

.method public getAppsLiveData()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 61
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsInit()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getConnectState()Landroid/arch/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->connected:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->connected:Landroid/arch/lifecycle/MutableLiveData;

    .line 52
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->connected:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 53
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->setOnConnectListener(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->connected:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLocationInfo()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Lcom/autonavi/cvc/app/da/location/LocationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getOnlineVersion()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->onlineVersion:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->onlineVersion:Landroid/arch/lifecycle/MutableLiveData;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->onlineVersion:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTimeLiveData()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timeLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timeLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 94
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timeThread()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timeLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWeatherInfo()Landroid/arch/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/Weather;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->weatherInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->weatherInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->weatherInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public initLocation()V
    .locals 4

    .prologue
    .line 145
    invoke-static {}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInstance()Lcom/autonavi/cvc/app/da/location/LocationHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    .line 146
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->init(Landroid/content/Context;)V

    .line 147
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v1, p0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->addListener(Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;)V

    .line 148
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->start()V

    .line 149
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 150
    .local v0, "timer":Ljava/util/Timer;
    new-instance v1, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$2;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$2;-><init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 160
    return-void
.end method

.method public onCityChange(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 3
    .param p1, "locationInfo"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 175
    if-eqz p1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$3;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$3;-><init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->getWeather(Ljava/lang/String;Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;Z)V

    .line 188
    :cond_1
    return-void
.end method

.method protected onCleared()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-super {p0}, Landroid/arch/lifecycle/AndroidViewModel;->onCleared()V

    .line 261
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 263
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timer:Ljava/util/Timer;

    .line 265
    :cond_0
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->connected:Landroid/arch/lifecycle/MutableLiveData;

    .line 266
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 267
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->weatherInfoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 268
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 269
    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timeLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 270
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->removeOnConnectListener(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;)V

    .line 271
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->removeAppsChangeListener(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V

    .line 272
    invoke-static {}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInstance()Lcom/autonavi/cvc/app/da/location/LocationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->removeListener(Lcom/autonavi/cvc/app/da/location/LocationHelper$LocationListener;)V

    .line 273
    return-void
.end method

.method public onConnect(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .prologue
    .line 82
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->connected:Landroid/arch/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->connected:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 165
    return-void
.end method

.method public onLocationInfoChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 0
    .param p1, "locationInfo"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;

    .prologue
    .line 170
    return-void
.end method

.method public onUpdateSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "linkedAppBeen":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->appsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 78
    :cond_0
    return-void
.end method

.method public queryWeatherInfo()V
    .locals 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->locationHelper:Lcom/autonavi/cvc/app/da/location/LocationHelper;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getLocationInfo()Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v0

    .line 192
    .local v0, "locationInfo":Lcom/autonavi/cvc/app/da/location/LocationInfo;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityCode()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$4;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$4;-><init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->getWeather(Ljava/lang/String;Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;Z)V

    .line 200
    :cond_0
    return-void
.end method
