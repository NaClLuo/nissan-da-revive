.class public Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Forecast"
.end annotation


# instance fields
.field public dayTemperature:I

.field public dayWeather:I

.field public dayWindDirection:I

.field public dayWindPower:I

.field public indices:Ljava/lang/String;

.field public nightTemperature:I

.field public nightWeather:I

.field public nightWindDirection:I

.field public nightWindPower:I

.field public sunRiseTime:Ljava/lang/String;

.field public sunSetTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/model/Weather;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Forecast;->this$0:Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
