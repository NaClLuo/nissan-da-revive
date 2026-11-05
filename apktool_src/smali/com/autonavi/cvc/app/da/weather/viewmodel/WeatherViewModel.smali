.class public Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "WeatherViewModel.java"


# instance fields
.field cityCode:Ljava/lang/String;

.field private infoLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private weatherLiveDate:Landroid/arch/lifecycle/MutableLiveData;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->weatherLiveDate:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method


# virtual methods
.method public getCurrentLocationWeatherInfo(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInstance()Lcom/autonavi/cvc/app/da/location/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getLocationInfo()Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v0

    .line 45
    .local v0, "currentLocationInfo":Lcom/autonavi/cvc/app/da/location/LocationInfo;
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->cityCode:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->isNetworkVailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;-><init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;Lcom/autonavi/cvc/app/da/location/LocationInfo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->infoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    const-string v2, "\u5f53\u524d\u7f51\u7edc\u72b6\u6001\u4e0d\u53ef\u4ee5\u7528\u6216\u5b9a\u4f4d\u670d\u52a1\u6ca1\u6709\u5f00\u542f"

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getInfo()Landroid/arch/lifecycle/LiveData;
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
    .line 35
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->infoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->infoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->infoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWeather()Landroid/arch/lifecycle/LiveData;
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
    .line 26
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->weatherLiveDate:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->weatherLiveDate:Landroid/arch/lifecycle/MutableLiveData;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->weatherLiveDate:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWeatherInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p2, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->cityCode:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->isNetworkVailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    move-object v0, p2

    .line 90
    .local v0, "cityCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 91
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    new-instance v1, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$2;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$2;-><init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->getWeather(Ljava/lang/String;Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;Z)V

    .line 107
    .end local v0    # "cityCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 101
    .restart local v0    # "cityCode":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->infoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    const-string v2, "\u57ce\u5e02\u4fe1\u606f\u52a0\u8f7d\u51fa\u9519"

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 105
    .end local v0    # "cityCode":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->infoLiveData:Landroid/arch/lifecycle/MutableLiveData;

    const-string v2, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u540e\u91cd\u8bd5!"

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public refreshWeatherInfo(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->cityCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->cityCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->getWeatherInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
