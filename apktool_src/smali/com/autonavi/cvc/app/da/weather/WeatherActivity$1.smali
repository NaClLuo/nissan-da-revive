.class Lcom/autonavi/cvc/app/da/weather/WeatherActivity$1;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<",
        "Lcom/autonavi/cvc/app/da/weather/model/Weather;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$1;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 1
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$1;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->access$000(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;Lcom/autonavi/cvc/app/da/weather/model/IWeather;)V

    .line 67
    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialogDismiss()V

    .line 68
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    check-cast p1, Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$1;->onChanged(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    return-void
.end method
