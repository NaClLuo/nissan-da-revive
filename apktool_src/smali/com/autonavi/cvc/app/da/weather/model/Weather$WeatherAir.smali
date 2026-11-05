.class public Lcom/autonavi/cvc/app/da/weather/model/Weather$WeatherAir;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherAir"
.end annotation


# instance fields
.field public aqi:I

.field public desc:Ljava/lang/String;

.field public detail:Ljava/lang/String;

.field public pm25:I

.field public publicTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
