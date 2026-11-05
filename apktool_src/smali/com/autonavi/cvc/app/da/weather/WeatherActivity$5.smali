.class Lcom/autonavi/cvc/app/da/weather/WeatherActivity$5;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$5;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$5;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->weatherViewModel:Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$5;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/weather/viewmodel/WeatherViewModel;->refreshWeatherInfo(Landroid/content/Context;)V

    .line 178
    return-void
.end method
