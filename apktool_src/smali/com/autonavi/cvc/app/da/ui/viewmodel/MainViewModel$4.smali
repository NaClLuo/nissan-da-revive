.class Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$4;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->queryWeatherInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$4;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnResult(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 1
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$4;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->access$200(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 197
    return-void
.end method
