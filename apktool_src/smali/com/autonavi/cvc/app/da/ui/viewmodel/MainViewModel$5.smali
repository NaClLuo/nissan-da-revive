.class Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$5;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->checkAppVersionOnline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$5;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 209
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 211
    if-eqz v3, :cond_1

    .line 212
    const-string v7, "version"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    .local v6, "version":Ljava/lang/String;
    const-string v7, "filename"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "fileName":Ljava/lang/String;
    const-string v7, "url"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$5;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v7}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "pkg":Ljava/lang/String;
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    move-result-object v7

    invoke-interface {v7}, Lcom/autonavi/cvc/app/da/db/dao/DaDao;->getApp()Lcom/autonavi/cvc/app/da/db/MobileApp;

    move-result-object v4

    .line 217
    .local v4, "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    if-nez v4, :cond_0

    .line 218
    new-instance v4, Lcom/autonavi/cvc/app/da/db/MobileApp;

    .end local v4    # "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    invoke-direct {v4}, Lcom/autonavi/cvc/app/da/db/MobileApp;-><init>()V

    .line 220
    .restart local v4    # "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    :cond_0
    iput-object v2, v4, Lcom/autonavi/cvc/app/da/db/MobileApp;->appName:Ljava/lang/String;

    .line 221
    iput-object v2, v4, Lcom/autonavi/cvc/app/da/db/MobileApp;->filename:Ljava/lang/String;

    .line 222
    iput-object v0, v4, Lcom/autonavi/cvc/app/da/db/MobileApp;->url:Ljava/lang/String;

    .line 223
    iput-object v6, v4, Lcom/autonavi/cvc/app/da/db/MobileApp;->version:Ljava/lang/String;

    .line 224
    iput-object v5, v4, Lcom/autonavi/cvc/app/da/db/MobileApp;->pkg:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    move-result-object v7

    invoke-interface {v7, v4}, Lcom/autonavi/cvc/app/da/db/dao/DaDao;->insertApp(Lcom/autonavi/cvc/app/da/db/MobileApp;)V

    .line 226
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$5;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->access$300(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
