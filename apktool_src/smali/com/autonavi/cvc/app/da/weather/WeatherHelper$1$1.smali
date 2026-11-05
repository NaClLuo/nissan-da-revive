.class Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1$1;
.super Ljava/lang/Object;
.source "WeatherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;->OnSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;

.field final synthetic val$weather:Lcom/autonavi/cvc/app/da/weather/model/Weather;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1$1;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1$1;->val$weather:Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->weatherDao()Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherHelper$1$1;->val$weather:Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-interface {v0, v1}, Lcom/autonavi/cvc/app/da/db/dao/WeatherDao;->insertWeather(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    .line 32
    return-void
.end method
