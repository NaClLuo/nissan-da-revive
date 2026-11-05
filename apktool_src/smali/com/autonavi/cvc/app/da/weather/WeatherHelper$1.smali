.class final Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherHelper;->getWeather(Ljava/lang/String;Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;

.field final synthetic val$save:Z


# direct methods
.method constructor <init>(ZLcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;)V
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;->val$save:Z

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;->val$listener:Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/weather/model/WeatherParser;->getWeatherInfoResult(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/weather/model/Weather;

    move-result-object v0

    .line 27
    .local v0, "weather":Lcom/autonavi/cvc/app/da/weather/model/Weather;
    iget-boolean v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;->val$save:Z

    if-eqz v1, :cond_0

    .line 28
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1$1;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1$1;-><init>(Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;->val$listener:Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;

    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;->val$listener:Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;

    invoke-interface {v1, v0}, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$Listener;->OnResult(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    .line 40
    :cond_1
    return-void
.end method
