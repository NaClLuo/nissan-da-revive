.class Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel$1;
.super Ljava/lang/Object;
.source "CityActivityViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->getCitymodelsLiveData()Landroid/arch/lifecycle/MutableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->cityDao()Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/cvc/app/da/db/dao/CityDao;->getAllCity()Ljava/util/List;

    move-result-object v0

    .line 39
    .local v0, "cityModels":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->access$000(Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;Landroid/content/Context;)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->access$100(Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->cityDao()Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/cvc/app/da/db/dao/CityDao;->getAllCity()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0
.end method
