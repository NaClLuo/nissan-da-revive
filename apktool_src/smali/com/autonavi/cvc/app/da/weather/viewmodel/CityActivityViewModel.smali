.class public Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;
.super Landroid/arch/lifecycle/AndroidViewModel;
.source "CityActivityViewModel.java"


# instance fields
.field private citymodelsLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/arch/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->cityXmlParse(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;)Landroid/arch/lifecycle/MutableLiveData;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->citymodelsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private cityXmlParse(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "city.xml"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 58
    .local v1, "mInputStream":Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->initCityInfo(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "mInputStream":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initCityInfo(Ljava/io/InputStream;)V
    .locals 17
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 66
    new-instance v12, Lorg/dom4j/io/SAXReader;

    invoke-direct {v12}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 70
    .local v12, "reader":Lorg/dom4j/io/SAXReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v5, "cityModels":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object v8

    .line 73
    .local v8, "document":Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    .line 74
    .local v13, "root":Lorg/dom4j/Element;
    const-string v14, "province"

    invoke-interface {v13, v14}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 75
    .local v11, "provinceElements":Ljava/util/List;, "Ljava/util/List<Lorg/dom4j/Element;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/dom4j/Element;

    .line 76
    .local v10, "provinceElement":Lorg/dom4j/Element;
    const-string v15, "city"

    invoke-interface {v10, v15}, Lorg/dom4j/Element;->elements(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "cityElements":Ljava/util/List;, "Ljava/util/List<Lorg/dom4j/Element;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 78
    .local v2, "cityElement":Lorg/dom4j/Element;
    const-string v16, "code"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "cityCode":Ljava/lang/String;
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "cityName":Ljava/lang/String;
    const-string v16, "py"

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "cityPy":Ljava/lang/String;
    new-instance v4, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-direct {v4}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;-><init>()V

    .line 82
    .local v4, "cityModel":Lcom/autonavi/cvc/app/da/weather/model/CityModel;
    invoke-virtual {v4, v1}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->setCityCode(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v4, v6}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->setCityName(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v4, v7}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->setPy(Ljava/lang/String;)V

    .line 85
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/dom4j/DocumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    .end local v1    # "cityCode":Ljava/lang/String;
    .end local v2    # "cityElement":Lorg/dom4j/Element;
    .end local v3    # "cityElements":Ljava/util/List;, "Ljava/util/List<Lorg/dom4j/Element;>;"
    .end local v4    # "cityModel":Lcom/autonavi/cvc/app/da/weather/model/CityModel;
    .end local v6    # "cityName":Ljava/lang/String;
    .end local v7    # "cityPy":Ljava/lang/String;
    .end local v8    # "document":Lorg/dom4j/Document;
    .end local v10    # "provinceElement":Lorg/dom4j/Element;
    .end local v11    # "provinceElements":Ljava/util/List;, "Ljava/util/List<Lorg/dom4j/Element;>;"
    .end local v13    # "root":Lorg/dom4j/Element;
    :catch_0
    move-exception v9

    .line 94
    .local v9, "e":Lorg/dom4j/DocumentException;
    invoke-virtual {v9}, Lorg/dom4j/DocumentException;->printStackTrace()V

    .line 100
    .end local v9    # "e":Lorg/dom4j/DocumentException;
    :cond_1
    :goto_1
    return-void

    .line 88
    .restart local v8    # "document":Lorg/dom4j/Document;
    .restart local v11    # "provinceElements":Ljava/util/List;, "Ljava/util/List<Lorg/dom4j/Element;>;"
    .restart local v13    # "root":Lorg/dom4j/Element;
    :cond_2
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 89
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->cityDao()Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    move-result-object v14

    invoke-interface {v14, v5}, Lcom/autonavi/cvc/app/da/db/dao/CityDao;->insertCitys(Ljava/util/List;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->citymodelsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v15

    invoke-virtual {v15}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->cityDao()Lcom/autonavi/cvc/app/da/db/dao/CityDao;

    move-result-object v15

    invoke-interface {v15}, Lcom/autonavi/cvc/app/da/db/dao/CityDao;->getAllCity()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/dom4j/DocumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 95
    .end local v8    # "document":Lorg/dom4j/Document;
    .end local v11    # "provinceElements":Ljava/util/List;, "Ljava/util/List<Lorg/dom4j/Element;>;"
    .end local v13    # "root":Lorg/dom4j/Element;
    :catch_1
    move-exception v9

    .line 97
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getCitymodelsLiveData()Landroid/arch/lifecycle/MutableLiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/MutableLiveData",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->citymodelsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->citymodelsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel$1;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel$1;-><init>(Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/viewmodel/CityActivityViewModel;->citymodelsLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object v0
.end method
