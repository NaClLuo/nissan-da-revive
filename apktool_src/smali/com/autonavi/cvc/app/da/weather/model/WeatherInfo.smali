.class public Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherInfo.java"


# static fields
.field public static final FIVE:I = 0x4

.field public static final FOUR:I = 0x3

.field public static final SeCond:I = 0x1

.field public static final THIRD:I = 0x2

.field public static final TODAY:I


# instance fields
.field private city:Ljava/lang/String;

.field private day:I

.field private pm2_5:Z

.field private temp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->temp:Z

    .line 17
    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->pm2_5:Z

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->day:I

    return v0
.end method

.method public isPm2_5()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->pm2_5:Z

    return v0
.end method

.method public isTemp()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->temp:Z

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->city:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setDay(I)V
    .locals 0
    .param p1, "day"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->day:I

    .line 33
    return-void
.end method

.method public setPm2_5(Z)V
    .locals 0
    .param p1, "pm2_5"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->pm2_5:Z

    .line 49
    return-void
.end method

.method public setTemp(Z)V
    .locals 0
    .param p1, "temp"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/autonavi/cvc/app/da/weather/model/WeatherInfo;->temp:Z

    .line 41
    return-void
.end method
