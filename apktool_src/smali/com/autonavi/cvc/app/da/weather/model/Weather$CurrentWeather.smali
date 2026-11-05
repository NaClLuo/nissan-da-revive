.class public Lcom/autonavi/cvc/app/da/weather/model/Weather$CurrentWeather;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/model/Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentWeather"
.end annotation


# instance fields
.field public humidity:I
    .annotation build Landroid/arch/persistence/room/Ignore;
    .end annotation
.end field

.field public temperature:I

.field public time:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/Ignore;
    .end annotation
.end field

.field public weather:I

.field public windDirection:I

.field public windPower:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
