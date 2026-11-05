.class Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$2;
.super Ljava/lang/Object;
.source "WeatherViewModel.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->getWeatherInfo(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$2;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnResult(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 1
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$2;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->access$000(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 98
    :cond_0
    return-void
.end method
