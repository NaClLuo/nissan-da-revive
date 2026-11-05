.class Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1$1;
.super Ljava/lang/Object;
.source "WeatherViewModel.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1$1;->this$1:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnResult(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 1
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1$1;->this$1:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->access$000(Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 72
    :cond_0
    return-void
.end method
