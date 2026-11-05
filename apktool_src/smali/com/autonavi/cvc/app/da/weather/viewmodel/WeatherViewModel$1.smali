.class Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;
.super Ljava/lang/Object;
.source "WeatherViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->getCurrentLocationWeatherInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

.field final synthetic val$currentLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->val$currentLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 55
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->val$currentLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v5}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->getWeatherFromDataBase(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/weather/model/Weather;

    move-result-object v4

    .line 56
    .local v4, "weather":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    if-eqz v4, :cond_0

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 59
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/weather/model/Weather;->getPublishTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 60
    .local v2, "timeLong":J
    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/weather/model/Weather;->getCity()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->val$currentLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v6}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "k":I
    const-wide/32 v6, 0x6ddd00

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    const/4 v5, -0x1

    if-le v1, v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->access$000(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 74
    .end local v0    # "curDate":Ljava/util/Date;
    .end local v1    # "k":I
    .end local v2    # "timeLong":J
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->val$currentLocationInfo:Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {v5}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityCode()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1$1;

    invoke-direct {v6, p0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1$1;-><init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;)V

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->getWeather(Ljava/lang/String;Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;Z)V

    goto :goto_0
.end method
