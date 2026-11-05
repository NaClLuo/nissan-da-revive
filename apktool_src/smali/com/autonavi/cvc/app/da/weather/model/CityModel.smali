.class public Lcom/autonavi/cvc/app/da/weather/model/CityModel;
.super Ljava/lang/Object;
.source "CityModel.java"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    tableName = "city"
.end annotation


# instance fields
.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public nameSort:Ljava/lang/String;

.field public py:Ljava/lang/String;

.field public uid:I
    .annotation build Landroid/arch/persistence/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameSort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->nameSort:Ljava/lang/String;

    return-object v0
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityCode"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityCode:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setNameSort(Ljava/lang/String;)V
    .locals 0
    .param p1, "nameSort"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->nameSort:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setPy(Ljava/lang/String;)V
    .locals 2
    .param p1, "py"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->py:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->nameSort:Ljava/lang/String;

    .line 50
    return-void
.end method
