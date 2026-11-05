.class public Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
.super Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.source "MainActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;,
        Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$AppViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final Log_file_name:Ljava/lang/String; = "screenDPI.txt"

.field private static final REQUEST_CODE_ASK_PERMISSIONS:I = 0x1

.field private static final REQUEST_CODE_OVERPLAY_PERMISSION:I = 0x3039

.field private static final TAG:Ljava/lang/String; = "navinfo"


# instance fields
.field public final GUIDE_REQUEST_CODE:I

.field public final LOGIN_KEY:Ljava/lang/String;

.field private appLinkViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field appNames:[[Ljava/lang/String;

.field broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private currentPageIndex:I

.field dialog:Landroid/app/AlertDialog;

.field dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

.field private dots:[I

.field downloadManager:Landroid/app/DownloadManager;

.field private failLayout:Landroid/widget/RelativeLayout;

.field private failText:Landroid/widget/TextView;

.field private home:Landroid/widget/Button;

.field imageViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private isBlueSettingStart:Z

.field isLogin:Z

.field private location:Landroid/widget/TextView;

.field private mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

.field mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

.field permissions:[Ljava/lang/String;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private tempText2:Landroid/widget/TextView;

.field private thirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

.field private txDate:Landroid/widget/TextView;

.field private txTime:Landroid/widget/TextView;

.field view:Landroid/widget/ImageView;

.field private viewPager:Landroid/support/v4/view/ViewPager;

.field private weatherBar:Landroid/widget/ProgressBar;

.field private weatherImage:Landroid/widget/ImageView;

.field private weatherTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->appLinkViews:Ljava/util/List;

    .line 140
    iput v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->currentPageIndex:I

    .line 144
    iput-boolean v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isBlueSettingStart:Z

    .line 147
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->GUIDE_REQUEST_CODE:I

    .line 150
    const-string v0, "login_key"

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->LOGIN_KEY:Ljava/lang/String;

    .line 152
    iput-boolean v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isLogin:Z

    .line 421
    # DA-REVIVE PATCH: drop legacy storage permissions from the fatal runtime request.
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->permissions:[Ljava/lang/String;

    .line 612
    new-instance v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    .line 714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->imageViewMap:Ljava/util/Map;

    .line 718
    new-array v0, v6, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "navigation"

    aput-object v2, v1, v4

    const-string v2, "music"

    aput-object v2, v1, v5

    const-string v2, "news"

    aput-object v2, v1, v6

    const-string v2, "weather"

    aput-object v2, v1, v7

    const-string v2, "kuwo"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "ximalaya"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ctrip"

    aput-object v2, v1, v4

    const-string v2, "elong"

    aput-object v2, v1, v5

    const-string v2, "tuniu"

    aput-object v2, v1, v6

    const-string v2, "toutiao"

    aput-object v2, v1, v7

    const-string v2, "qqnews"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "meituan"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->appNames:[[Ljava/lang/String;

    .line 964
    new-instance v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private ToastUtil(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 962
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->setLocationText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->setWeatherInfo(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainfinish()V

    return-void
.end method

.method static synthetic access$1300(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->downLoadApk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isBlueSettingStart:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dots:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->checkUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->txDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->txTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    iget v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->currentPageIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->currentPageIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initDeskViewPager(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Lcom/autonavi/cvc/app/da/source/HomeManager;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->openWeatherActivity()V

    return-void
.end method

.method private carConnected()Z
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected()Z

    move-result v0

    return v0
.end method

.method private checkAppDownloadState(Ljava/lang/String;)Z
    .locals 28
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getAppByPkgName(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    move-result-object v9

    .line 260
    .local v9, "downloadable":Lcom/autonavi/cvc/app/da/interfaces/AppInfo;
    if-nez v9, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 320
    :goto_0
    return v2

    .line 263
    :cond_0
    invoke-interface {v9}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 264
    .local v18, "apkFileName":Ljava/lang/String;
    invoke-interface {v9}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v19

    .line 265
    .local v19, "appName":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 266
    const/4 v2, 0x0

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getDownloadId(Ljava/lang/String;)J

    move-result-wide v22

    .line 269
    .local v22, "downloadId":J
    new-instance v25, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v25 .. v25}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 270
    .local v25, "query":Landroid/app/DownloadManager$Query;
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v22, v2, v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "download"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/DownloadManager;

    .line 272
    .local v21, "downloadManager":Landroid/app/DownloadManager;
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v20

    .line 273
    .local v20, "cursor":Landroid/database/Cursor;
    if-eqz v20, :cond_8

    .line 274
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 275
    const-string v2, "title"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 276
    .local v24, "downloadName":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 277
    const-string v2, "status"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 278
    .local v26, "status":I
    sparse-switch v26, :sswitch_data_0

    .line 313
    .end local v26    # "status":I
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 320
    .end local v24    # "downloadName":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 282
    .restart local v24    # "downloadName":Ljava/lang/String;
    .restart local v26    # "status":I
    :sswitch_0
    const-string v2, ""

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    const-string v2, "\u5f53\u524d\u7f51\u7edc\u72b6\u6001\u4e0d\u53ef\u4ee5\u7528\uff0c\u8bf7\u91cd\u8bd5"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_2
    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_1

    .line 289
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->apkExists(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 290
    .local v17, "file":Ljava/io/File;
    if-eqz v17, :cond_5

    .line 291
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 292
    .local v27, "version":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApkVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 296
    :cond_3
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6709\u65b0\u7248\u672c\uff0c\u662f\u5426\u4e0b\u8f7d\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 299
    :cond_4
    const-string v11, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6700\u65b0\u5e94\u7528\u5df2\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u662f\u5426\u5b89\u88c5\uff1f \u5b89\u88c5\u65f6\u4f1a\u65ad\u5f00\u4e0e\u8f66\u673a\u7684\u8fde\u643a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u786e\u5b9a"

    const-string v14, "\u53d6\u6d88"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v17}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 303
    .end local v27    # "version":Ljava/lang/String;
    :cond_5
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6709\u65b0\u7248\u672c\uff0c\u662f\u5426\u4e0b\u8f7d\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 307
    .end local v17    # "file":Ljava/io/File;
    :sswitch_2
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6709\u65b0\u7248\u672c\uff0c\u662f\u5426\u4e0b\u8f7d\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 311
    .end local v26    # "status":I
    :cond_6
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6709\u65b0\u7248\u672c\uff0c\u662f\u5426\u4e0b\u8f7d\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 315
    .end local v24    # "downloadName":Ljava/lang/String;
    :cond_7
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6709\u65b0\u7248\u672c\uff0c\u662f\u5426\u4e0b\u8f7d\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 318
    :cond_8
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6709\u65b0\u7248\u672c\uff0c\u662f\u5426\u4e0b\u8f7d\u66f4\u65b0\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private checkAppUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "onlineVersion"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-virtual {p0, p2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, p2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->checkAppDownloadState(Ljava/lang/String;)Z

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDownloadState(Ljava/lang/String;)Z
    .locals 28
    .param p1, "onlineVersion"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/cvc/app/da/db/dao/DaDao;->getApp()Lcom/autonavi/cvc/app/da/db/MobileApp;

    move-result-object v9

    .line 325
    .local v9, "downloadable":Lcom/autonavi/cvc/app/da/interfaces/AppInfo;
    if-nez v9, :cond_0

    .line 326
    const/4 v2, 0x0

    .line 390
    :goto_0
    return v2

    .line 328
    :cond_0
    invoke-interface {v9}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getFileName()Ljava/lang/String;

    move-result-object v18

    .line 329
    .local v18, "apkFileName":Ljava/lang/String;
    invoke-interface {v9}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v19

    .line 330
    .local v19, "appName":Ljava/lang/String;
    if-nez v18, :cond_1

    .line 331
    const/4 v2, 0x0

    goto :goto_0

    .line 334
    :cond_1
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/autonavi/cvc/app/da/db/dao/DaDao;->getApp()Lcom/autonavi/cvc/app/da/db/MobileApp;

    move-result-object v25

    .line 335
    .local v25, "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    if-nez v25, :cond_2

    .line 336
    const/4 v2, 0x0

    goto :goto_0

    .line 338
    :cond_2
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/autonavi/cvc/app/da/db/MobileApp;->downloadId:J

    move-wide/from16 v22, v0

    .line 339
    .local v22, "downloadId":J
    new-instance v26, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v26 .. v26}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 340
    .local v26, "query":Landroid/app/DownloadManager$Query;
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v22, v2, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "download"

    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/DownloadManager;

    .line 342
    .local v21, "downloadManager":Landroid/app/DownloadManager;
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v20

    .line 343
    .local v20, "cursor":Landroid/database/Cursor;
    if-eqz v20, :cond_9

    .line 344
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 345
    const-string v2, "title"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 346
    .local v24, "downloadName":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 347
    const-string v2, "status"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 348
    .local v27, "status":I
    sparse-switch v27, :sswitch_data_0

    .line 386
    .end local v24    # "downloadName":Ljava/lang/String;
    .end local v27    # "status":I
    :goto_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 390
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 352
    .restart local v24    # "downloadName":Ljava/lang/String;
    .restart local v27    # "status":I
    :sswitch_0
    const-string v2, ""

    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 353
    const-string v2, "\u5f53\u524d\u7f51\u7edc\u72b6\u6001\u4e0d\u53ef\u4ee5\u7528\uff0c\u8bf7\u91cd\u8bd5"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_1

    .line 355
    :cond_3
    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->apkExists(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 360
    .local v17, "file":Ljava/io/File;
    if-eqz v17, :cond_6

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApkVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 362
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 363
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 365
    :cond_4
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff01"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    const-string v6, "\u9000\u51fa"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto :goto_1

    .line 368
    :cond_5
    const-string v11, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6700\u65b0\u5e94\u7528\u5df2\u4e0b\u8f7d\u5b8c\u6bd5\uff0c\u662f\u5426\u5b89\u88c5\uff1f \u5b89\u88c5\u65f6\u4f1a\u65ad\u5f00\u4e0e\u8f66\u673a\u7684\u8fde\u643a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u786e\u5b9a"

    const-string v14, "\u53d6\u6d88"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v10, p0

    invoke-static/range {v10 .. v17}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 372
    :cond_6
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff01"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    const-string v6, "\u9000\u51fa"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 376
    .end local v17    # "file":Ljava/io/File;
    :sswitch_2
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff01"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    const-string v6, "\u9000\u51fa"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 380
    .end local v27    # "status":I
    :cond_7
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff01"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    const-string v6, "\u9000\u51fa"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 384
    .end local v24    # "downloadName":Ljava/lang/String;
    :cond_8
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff01"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    const-string v6, "\u9000\u51fa"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 388
    :cond_9
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u68c0\u6d4b\u5230\u65b0\u7248\u672c\uff01"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u7acb\u5373\u66f4\u65b0"

    const-string v6, "\u9000\u51fa"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xcf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private checkUpdate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "onlineVersion"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0, p2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->checkDownloadState(Ljava/lang/String;)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "newVer"    # Ljava/lang/String;
    .param p2, "localVer"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 508
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "newVers":[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 510
    .local v2, "localVers":[Ljava/lang/String;
    array-length v6, v3

    array-length v7, v2

    if-ge v6, v7, :cond_1

    array-length v1, v3

    .line 511
    .local v1, "length":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 512
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v6, v7, :cond_2

    .line 518
    :cond_0
    :goto_2
    return v4

    .line 510
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    array-length v1, v2

    goto :goto_0

    .line 514
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_2
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v2, v0

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v6, v7, :cond_3

    move v4, v5

    .line 515
    goto :goto_2

    .line 511
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    :cond_4
    array-length v6, v3

    array-length v7, v2

    if-gt v6, v7, :cond_0

    move v4, v5

    goto :goto_2
.end method

.method private downLoadApk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1151
    const-string v8, "\u65e0\u6cd5\u4e0b\u8f7d\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5\uff01"

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1185
    :goto_0
    return-void

    .line 1154
    :cond_0
    invoke-static {p0, p2}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->deleteApkFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 1155
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1156
    .local v3, "down":Landroid/app/DownloadManager$Request;
    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1157
    .local v0, "apkmessage":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 1158
    .local v1, "apkname":Ljava/lang/String;
    array-length v8, v0

    if-lez v8, :cond_1

    .line 1159
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    aget-object v1, v0, v8

    .line 1163
    :cond_1
    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 1164
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1165
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 1166
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 1167
    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v3, v8}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1168
    const/4 v8, 0x0

    invoke-virtual {v3, p0, v8, v1}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1169
    iget-object v8, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v8, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v4

    .line 1170
    .local v4, "downloadId":J
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    move-result-object v8

    invoke-interface {v8}, Lcom/autonavi/cvc/app/da/db/dao/DaDao;->getApp()Lcom/autonavi/cvc/app/da/db/MobileApp;

    move-result-object v7

    .line 1171
    .local v7, "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    if-eqz v7, :cond_2

    iget-object v8, v7, Lcom/autonavi/cvc/app/da/db/MobileApp;->filename:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1172
    iput-wide v4, v7, Lcom/autonavi/cvc/app/da/db/MobileApp;->downloadId:J

    .line 1173
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->daDao()Lcom/autonavi/cvc/app/da/db/dao/DaDao;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/autonavi/cvc/app/da/db/dao/DaDao;->insertApp(Lcom/autonavi/cvc/app/da/db/MobileApp;)V

    .line 1179
    :goto_1
    const-string v8, "\u4e0b\u8f7d\u4e2d..."

    invoke-direct {p0, v8}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1181
    .end local v4    # "downloadId":J
    .end local v7    # "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    :catch_0
    move-exception v6

    .line 1182
    .local v6, "e":Ljava/lang/Exception;
    const-string v8, "\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u6253\u5f00\u4e0b\u8f7d\u7ba1\u7406\u5668"

    invoke-direct {p0, v8}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "downloadId":J
    .restart local v7    # "mobileApp":Lcom/autonavi/cvc/app/da/db/MobileApp;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getAppByFileName(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    move-result-object v2

    .line 1176
    .local v2, "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    iput-wide v4, v2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->downloadId:J

    .line 1177
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->saveApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getApkVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "apkFileName"    # Ljava/lang/String;

    .prologue
    .line 1256
    const-string v4, "0.0.0"

    .line 1257
    .local v4, "version":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1259
    .local v1, "archiveFilePath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1260
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x1

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1261
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 1262
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1264
    :cond_0
    return-object v4
.end method

.method private getCurrentApp(I)V
    .locals 9
    .param p1, "pageIndex"    # I

    .prologue
    .line 901
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    mul-int/lit8 v6, v6, 0x6

    add-int v1, v6, p1

    .line 902
    .local v1, "index":I
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->thirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-virtual {v6, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getThirdPartApp(I)Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    move-result-object v4

    .line 903
    .local v4, "linkedAppBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->isInstalled()Z

    move-result v3

    .line 904
    .local v3, "isInstalled":Z
    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getPkg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    const-string v8, "_"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "MobclickAgentId":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 906
    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->isWebApp()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 907
    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 908
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 909
    .local v2, "intent":Landroid/content/Intent;
    const-class v6, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 910
    const-string v6, "url"

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v6, "pkg"

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v6, "name"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 914
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v6

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getPkg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->appChange(Landroid/content/Context;Ljava/lang/String;)V

    .line 929
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    if-eqz v3, :cond_3

    .line 918
    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getPkg()Ljava/lang/String;

    move-result-object v5

    .line 919
    .local v5, "pkg":Ljava/lang/String;
    const-string v6, "com.navinfo.vuinavigation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 920
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->gpsIsOPen(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 921
    const-string v6, "\u8fdb\u5165\u5bfc\u822a\u524d\u8bf7\u5148\u4ece\u624b\u673a\u7aef\u5f00\u542fGPS"

    invoke-direct {p0, v6}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_2
    invoke-direct {p0, v4}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->openApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;)V

    goto :goto_0

    .line 926
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v4}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->installing(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;)V

    goto :goto_0
.end method

.method private getDisplayMetrics()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1052
    const-string v5, "screenDPI.txt"

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1053
    const-string v5, "screenDPI.txt"

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->readSDFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "dpi":Ljava/lang/String;
    :try_start_0
    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "y"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1056
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1055
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1057
    .local v4, "width":I
    const-string v5, "y"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1058
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1057
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1059
    .local v2, "height":I
    if-lez v4, :cond_0

    if-lez v2, :cond_0

    .line 1079
    .end local v0    # "dpi":Ljava/lang/String;
    .end local v2    # "height":I
    .end local v4    # "width":I
    :goto_0
    return-void

    .line 1062
    .restart local v0    # "dpi":Ljava/lang/String;
    .restart local v2    # "height":I
    .restart local v4    # "width":I
    :cond_0
    const-string v5, "screenDPI.txt"

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->fileDel(Ljava/lang/String;)V

    .line 1063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1064
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1065
    .local v3, "logdata":Ljava/lang/String;
    const-string v5, "screenDPI.txt"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1067
    .end local v2    # "height":I
    .end local v3    # "logdata":Ljava/lang/String;
    .end local v4    # "width":I
    :catch_0
    move-exception v1

    .line 1068
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "screenDPI.txt"

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->fileDel(Ljava/lang/String;)V

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v6

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1070
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v6

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1071
    .restart local v3    # "logdata":Ljava/lang/String;
    const-string v5, "screenDPI.txt"

    invoke-static {v3, v5, v8}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1076
    .end local v0    # "dpi":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "logdata":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v6

    aget v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v6

    aget v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1077
    .restart local v3    # "logdata":Ljava/lang/String;
    const-string v5, "screenDPI.txt"

    invoke-static {v3, v5, v8}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private initAll()V
    .locals 2

    .prologue
    .line 405
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->startConnecting(Landroid/content/Context;)V

    .line 406
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoUtils;->getDeviceInfo(Landroid/content/Context;)Lcom/autonavi/cvc/app/da/deviceinfo/DeviceInfoBean;

    .line 407
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDisplayMetrics(Landroid/content/Context;)V

    .line 408
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initAppStatus()V

    .line 409
    invoke-static {}, Lcom/autonavi/cvc/app/da/data/DataStatics;->getInstance()Lcom/autonavi/cvc/app/da/data/DataStatics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/data/DataStatics;->firstTimeStatics(Landroid/content/Context;)V

    .line 410
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->loadApps()V

    .line 412
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initView()V

    .line 414
    invoke-static {}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->getInstace()Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;

    move-result-object v0

    const-string v1, "login_key"

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isLogin:Z

    .line 416
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isLogin:Z

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 419
    :cond_0
    return-void
.end method

.method private initAmap()V
    .locals 2

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/cvc/app/da/location/LocationHelperService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 474
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->initLocation()V

    .line 475
    return-void
.end method

.method private initAppLinkVersion()V
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->checkAppVersion()V

    .line 1285
    return-void
.end method

.method private initAppStatus()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getDisplayMetrics()V

    .line 536
    const-string v0, "download"

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->downloadManager:Landroid/app/DownloadManager;

    .line 537
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initAmap()V

    .line 539
    return-void
.end method

.method private initDeskViewPager(Ljava/util/List;I)V
    .locals 24
    .param p2, "currentPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 725
    .local p1, "iThirdPartyApps":Ljava/util/List;, "Ljava/util/List<+Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;>;"
    const v21, 0x7f060021

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 726
    const v21, 0x7f060023

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 727
    .local v8, "bottomLayout":Landroid/widget/RelativeLayout;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->appLinkViews:Ljava/util/List;

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 730
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/16 v19, 0x6

    .line 732
    .local v19, "perPageCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->thirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getAppCount()I

    move-result v7

    .line 733
    .local v7, "appNum":I
    add-int v21, v7, v19

    add-int/lit8 v21, v21, -0x1

    div-int v18, v21, v19

    .line 734
    .local v18, "pageNum":I
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 738
    .local v3, "appIconID":[I
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v6, v0, [I

    fill-array-data v6, :array_1

    .line 742
    .local v6, "appNameID":[I
    const/16 v21, 0x6

    move/from16 v0, v21

    new-array v5, v0, [I

    fill-array-data v5, :array_2

    .line 747
    .local v5, "appLayoutID":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 748
    const v21, 0x7f030007

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 749
    .local v20, "view":Landroid/view/View;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_0

    .line 751
    mul-int v21, v9, v19

    add-int v4, v21, v13

    .line 752
    .local v4, "appIndex":I
    if-lt v4, v7, :cond_1

    .line 768
    .end local v4    # "appIndex":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->appLinkViews:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 755
    .restart local v4    # "appIndex":I
    :cond_1
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;

    .line 756
    .local v16, "linkedAppBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;
    aget v21, v5, v13

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 758
    .local v14, "layout":Landroid/widget/RelativeLayout;
    aget v21, v3, v13

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 759
    .local v11, "img":Landroid/widget/ImageView;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->imageViewMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->appNames:[[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v9

    aget-object v22, v22, v13

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    aget v21, v6, v13

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 763
    .local v17, "name":Landroid/widget/TextView;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->setAppIcon(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;Landroid/widget/ImageView;)V

    .line 765
    invoke-interface/range {v16 .. v16}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    const-string v21, "#FFFFFF"

    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 749
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 770
    .end local v4    # "appIndex":I
    .end local v11    # "img":Landroid/widget/ImageView;
    .end local v13    # "j":I
    .end local v14    # "layout":Landroid/widget/RelativeLayout;
    .end local v16    # "linkedAppBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;
    .end local v17    # "name":Landroid/widget/TextView;
    .end local v20    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    new-instance v22, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$AppViewPagerAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->appLinkViews:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$AppViewPagerAdapter;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/util/List;)V

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v21, v0

    new-instance v22, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 773
    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 774
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dots:[I

    .line 775
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_2
    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    .line 776
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 777
    .local v10, "imageView":Landroid/widget/ImageView;
    add-int/lit8 v21, p2, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_3

    .line 779
    const v21, 0x7f020032

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 784
    :goto_3
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 786
    .local v15, "layoutIndexParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dots:[I

    move-object/from16 v21, v0

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v22

    aput v22, v21, v13

    .line 789
    if-eqz v13, :cond_4

    .line 790
    const/16 v21, 0x28

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 791
    const/16 v21, 0x1

    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 792
    invoke-virtual {v8, v10, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 782
    .end local v15    # "layoutIndexParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const v21, 0x7f020031

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 794
    .restart local v15    # "layoutIndexParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {v8, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 795
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 798
    .end local v10    # "imageView":Landroid/widget/ImageView;
    .end local v15    # "layoutIndexParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    # DA-REVIVE PATCH: replace the hard-coded 6 shortcuts with the user's own set.
    invoke-static/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->overlay(Landroid/app/Activity;)V
    return-void

    .line 734
    :array_0
    .array-data 4
        0x7f060026
        0x7f060029
        0x7f06002c
        0x7f06002f
        0x7f060032
        0x7f060035
    .end array-data

    .line 738
    :array_1
    .array-data 4
        0x7f060027
        0x7f06002a
        0x7f06002d
        0x7f060030
        0x7f060033
        0x7f060036
    .end array-data

    .line 742
    :array_2
    .array-data 4
        0x7f060025
        0x7f060028
        0x7f06002b
        0x7f06002e
        0x7f060031
        0x7f060034
    .end array-data
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 706
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 707
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getInstance()Lcom/autonavi/cvc/app/da/source/HomeManager;

    move-result-object v4

    iput-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    .line 708
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mHManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    invoke-virtual {v4, v2, v0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->init(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V

    .line 709
    const v4, 0x7f060024

    invoke-virtual {p0, v4}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 710
    .local v3, "version":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "appVersion":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    return-void
.end method

.method private initWidgetView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 543
    const v1, 0x7f060020

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/ui/view/DaTouchableRelativeLayout;

    .line 544
    .local v0, "touchableRelativeLayout":Lcom/autonavi/cvc/app/da/ui/view/DaTouchableRelativeLayout;
    new-instance v1, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$8;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$8;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/ui/view/DaTouchableRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 551
    const v1, 0x7f060002

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->txTime:Landroid/widget/TextView;

    .line 552
    const v1, 0x7f060003

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->txDate:Landroid/widget/TextView;

    .line 553
    const v1, 0x7f06000b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->home:Landroid/widget/Button;

    .line 554
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->home:Landroid/widget/Button;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    const v1, 0x7f060006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->tempText2:Landroid/widget/TextView;

    .line 565
    const v1, 0x7f060001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->location:Landroid/widget/TextView;

    .line 566
    const v1, 0x7f060005

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherImage:Landroid/widget/ImageView;

    .line 567
    const v1, 0x7f060009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherBar:Landroid/widget/ProgressBar;

    .line 568
    const v1, 0x7f060007

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherTxt:Landroid/widget/TextView;

    .line 569
    const v1, 0x7f060004

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 570
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$10;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$10;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 576
    const v1, 0x7f060008

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failLayout:Landroid/widget/RelativeLayout;

    .line 577
    const-string v1, ""

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 580
    :cond_0
    const v1, 0x7f06000a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failText:Landroid/widget/TextView;

    .line 581
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failText:Landroid/widget/TextView;

    new-instance v2, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$11;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$11;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->isNetworkVailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 594
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private installing(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;)V
    .locals 20
    .param p1, "app"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;

    .prologue
    .line 1188
    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getFileName()Ljava/lang/String;

    move-result-object v10

    .line 1189
    .local v10, "apkFileName":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getPkg()Ljava/lang/String;

    move-result-object v16

    .line 1190
    .local v16, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->apkExists(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 1191
    .local v15, "file":Ljava/io/File;
    if-eqz v15, :cond_7

    .line 1192
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getDownloadId(Ljava/lang/String;)J

    move-result-wide v12

    .line 1193
    .local v12, "downloadId":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 1194
    new-instance v17, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v17 .. v17}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 1195
    .local v17, "query":Landroid/app/DownloadManager$Query;
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v12, v2, v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->downloadManager:Landroid/app/DownloadManager;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v11

    .line 1197
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 1198
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1200
    const-string v2, "title"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1201
    .local v14, "downloadName":Ljava/lang/String;
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1202
    const-string v2, "status"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1203
    .local v18, "status":I
    packed-switch v18, :pswitch_data_0

    .line 1234
    :pswitch_0
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6ca1\u6709\u5b89\u88c5\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    .line 1244
    .end local v14    # "downloadName":Ljava/lang/String;
    .end local v18    # "status":I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1253
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "downloadId":J
    .end local v17    # "query":Landroid/app/DownloadManager$Query;
    :goto_1
    return-void

    .line 1207
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "downloadId":J
    .restart local v14    # "downloadName":Ljava/lang/String;
    .restart local v17    # "query":Landroid/app/DownloadManager$Query;
    .restart local v18    # "status":I
    :pswitch_1
    const-string v2, ""

    invoke-static/range {p0 .. p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1208
    const-string v2, "\u5f53\u524d\u7f51\u7edc\u72b6\u6001\u4e0d\u53ef\u4ee5\u7528\uff0c\u8bf7\u91cd\u8bd5"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_1

    .line 1211
    :cond_0
    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_0

    .line 1214
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->apkExists(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 1215
    if-eqz v15, :cond_3

    .line 1216
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1217
    .local v19, "ver":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApkVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1220
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 1222
    :cond_1
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6ca1\u6709\u5b89\u88c5\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 1225
    :cond_2
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6700\u65b0\u7248\u672c\u5df2\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u5b89\u88c5\uff1f \u5b89\u88c5\u65f6\u4f1a\u65ad\u5f00\u4e0e\u8f66\u673a\u7684\u8fde\u643a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u786e\u5b9a"

    const-string v6, "\u53d6\u6d88"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object v9, v15

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1229
    .end local v19    # "ver":Ljava/lang/String;
    :cond_3
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6ca1\u6709\u5b89\u88c5\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1238
    .end local v18    # "status":I
    :cond_4
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6ca1\u6709\u5b89\u88c5\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1242
    .end local v14    # "downloadName":Ljava/lang/String;
    :cond_5
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6ca1\u6709\u5b89\u88c5\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1246
    :cond_6
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6ca1\u6709\u5b89\u88c5\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1250
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "downloadId":J
    .end local v17    # "query":Landroid/app/DownloadManager$Query;
    :cond_7
    const-string v3, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u6ca1\u6709\u5b89\u88c5\uff0c\u662f\u5426\u4e0b\u8f7d\uff1f"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u662f"

    const-string v6, "\u5426"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 1203
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private loadApps()V
    .locals 3

    .prologue
    .line 700
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 701
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    return-void
.end method

.method private mainfinish()V
    .locals 1

    .prologue
    .line 1139
    const-string v0, "mainfinish"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->finish()V

    .line 1141
    return-void
.end method

.method private openApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;)V
    .locals 4
    .param p1, "app"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;

    .prologue
    .line 1268
    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getPkg()Ljava/lang/String;

    move-result-object v1

    .line 1270
    .local v1, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 1271
    .local v2, "ver":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1272
    invoke-direct {p0, v2, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->checkAppUpdate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1273
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 1281
    .end local v2    # "ver":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1276
    .restart local v2    # "ver":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1278
    .end local v2    # "ver":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openWeatherActivity()V
    .locals 2

    .prologue
    .line 1291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1292
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1293
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1294
    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1295
    return-void
.end method

.method private permissionInit(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "ret":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 430
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->permissions:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 431
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    or-int/lit8 v0, v0, 0x1

    .line 430
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 436
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->permissions:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 443
    :goto_1
    return-void

    .line 438
    :cond_2
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initAll()V

    goto :goto_1

    .line 441
    :cond_3
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initAll()V

    goto :goto_1
.end method

.method private requestDrawOverPlays()V
    .locals 4

    .prologue
    .line 394
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 395
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 397
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 398
    const/16 v1, 0x3039

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 402
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setAppIcon(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "linkedAppBean"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;
    .param p2, "img"    # Landroid/widget/ImageView;

    .prologue
    const/4 v9, 0x0

    .line 801
    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppName()Ljava/lang/String;

    move-result-object v5

    .line 802
    .local v5, "name":Ljava/lang/String;
    invoke-static {v5}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 803
    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getImgPath()Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    .local v2, "file":Ljava/io/File;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 808
    .local v6, "opt":Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 810
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 811
    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/FileUtil;->FileToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 812
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppIconID()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 814
    .local v4, "inputStream":Ljava/io/InputStream;
    invoke-static {v4, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 821
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->isWebApp()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 822
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 832
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 833
    return-void

    .line 817
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getAppIconID()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 818
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    invoke-static {v4, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 823
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_3
    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 825
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->thirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-interface {p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getPkg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 826
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 827
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 830
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/BitmapUtil;->getBitGray(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1
.end method

.method private setLocationText(Ljava/lang/String;)V
    .locals 4
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->location:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1135
    return-void
.end method

.method private setWeatherInfo(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 4
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 221
    if-eqz p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->tempText2:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/weather/model/Weather;->getCurrentTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherTxt:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Lcom/autonavi/cvc/app/da/weather/model/Weather;->getWeather(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Lcom/autonavi/cvc/app/da/weather/model/Weather;->getWeatherImgId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 228
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->weatherBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failText:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 238
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->failText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :cond_4
    const-string v0, "\u8bf7\u6c42\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1082
    const/4 v4, 0x0

    .line 1084
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1088
    :goto_0
    if-nez v4, :cond_1

    .line 1110
    :cond_0
    :goto_1
    return-void

    .line 1085
    :catch_0
    move-exception v2

    .line 1086
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1091
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1092
    .local v6, "resolveIntent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1093
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1095
    .local v7, "resolveinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1096
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_0

    .line 1097
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1098
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v3, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1100
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1102
    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1103
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1107
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v8

    invoke-virtual {v8, p0, p2}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->appChange(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public app_link_01(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getCurrentApp(I)V

    .line 873
    return-void
.end method

.method public app_link_02(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 876
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getCurrentApp(I)V

    .line 877
    return-void
.end method

.method public app_link_03(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 880
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getCurrentApp(I)V

    .line 881
    return-void
.end method

.method public app_link_04(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 884
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getCurrentApp(I)V

    .line 885
    return-void
.end method

.method public app_link_05(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 888
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getCurrentApp(I)V

    .line 889
    return-void
.end method

.method public app_link_06(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 892
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getCurrentApp(I)V

    .line 893
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 604
    :try_start_0
    invoke-super {p0, p1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 605
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAppVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packname"    # Ljava/lang/String;

    .prologue
    .line 1113
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1115
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1116
    .local v1, "packinfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    .end local v1    # "packinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 480
    packed-switch p2, :pswitch_data_0

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 482
    :pswitch_0
    if-eqz p3, :cond_0

    .line 483
    const-string v1, "agree"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isLogin:Z

    .line 484
    iget-boolean v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isLogin:Z

    if-eqz v1, :cond_1

    .line 486
    invoke-static {}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->getInstace()Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;

    move-result-object v1

    const-string v2, "login_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->putBooleanValue(Ljava/lang/String;Z)V

    goto :goto_0

    .line 490
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.navinfo.panasonic.quitsmartphonestate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 493
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainfinish()V

    goto :goto_0

    .line 480
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    const-string v2, "onCreate"

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 160
    invoke-super {p0, p1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "da_intent_download_install"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "com.autonavi.umengCartype"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 165
    const v2, 0x7f030006

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "mainView":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->setContentView(Landroid/view/View;)V

    .line 167
    invoke-direct {p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initWidgetView(Landroid/view/View;)V

    .line 168
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v2

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->thirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    .line 169
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->requestDrawOverPlays()V

    .line 170
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v2

    const-class v3, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v2, v3}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    iput-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .line 171
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getLocationInfo()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$1;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v2, p0, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 180
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getWeatherInfo()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$2;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v2, p0, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 186
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getOnlineVersion()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$3;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v2, p0, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 193
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getTimeLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$4;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v2, p0, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 202
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getAppsLiveData()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$5;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$5;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v2, p0, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 208
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->mainViewModel:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->getConnectState()Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    invoke-virtual {v2, p0, v3}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 217
    invoke-direct {p0, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->permissionInit(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1031
    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->clearAlertDialog()V

    .line 1032
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1033
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onDestroy()V

    .line 1034
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1124
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1125
    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u8981\u5173\u95ed\u4e92\u8054\u5e94\u7528\u7a0b\u5e8f\uff1f"

    const-string v3, "\u662f"

    const-string v4, "\u5426"

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v0, 0xca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    .line 1126
    const/4 v0, 0x1

    .line 1129
    :goto_0
    return v0

    .line 1127
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 1129
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 1038
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onPause()V

    .line 1040
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 1041
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 447
    invoke-super {p0, p1, p2, p3}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 448
    array-length v1, p2

    if-nez v1, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 452
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_3

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 454
    aget v1, p3, v0

    if-eqz v1, :cond_2

    .line 455
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u7cfb\u7edf\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u6ca1\u6709\u5f00\u542f\u6743\u9650\uff0c\u70b9\u51fb\u786e\u8ba4\u9000\u51fa\u7a0b\u5e8f"

    .line 456
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$7;

    invoke-direct {v3, p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$7;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    .line 457
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 452
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_3
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initAll()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 990
    const-string v0, "navinfo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onResume()V

    # DA-REVIVE PATCH: rebuild the shortcut bar after returning from the picker.
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->overlay(Landroid/app/Activity;)V

    .line 996
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 997
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initAppLinkVersion()V

    .line 998
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isLogin:Z

    if-eqz v0, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->carConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1002
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isBlueSettingStart:Z

    if-eqz v0, :cond_1

    .line 1004
    const/4 v9, 0x1

    .line 1006
    .local v9, "flag":I
    :try_start_0
    invoke-static {p0}, Lnmsed/shortcatmiracast/ShortcutMiracast;->startMiracastDeviceList(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1010
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->isBlueSettingStart:Z

    .line 1011
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    .line 1012
    const-string v0, "\u5982\u679c\u624b\u673a\u4e0d\u652f\u6301\u7b80\u6613\u8fde\u63a5\u529f\u80fd\uff0c\u8bf7\u5c1d\u8bd5\u8fdb\u5165\u624b\u673a\u3010\u8bbe\u7f6e\u3011\u8fde\u63a5\u5c4f\u5e55\u5171\u4eab"

    invoke-direct {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->ToastUtil(Ljava/lang/String;)V

    .line 1026
    .end local v9    # "flag":I
    :cond_0
    :goto_1
    return-void

    .line 1007
    .restart local v9    # "flag":I
    :catch_0
    move-exception v8

    .line 1008
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1015
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "flag":I
    :cond_1
    const-string v1, "\u63d0\u793a"

    const-string v2, "\u667a\u80fd\u624b\u673a\u4e92\u8054\u9700\u8981\u5148\u8fde\u63a5\u84dd\u7259\u548cmiracast"

    const-string v3, "OK"

    const-string v4, "\u53d6\u6d88"

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v0, 0x6b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1020
    iput-object v7, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 1045
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onStop()V

    .line 1046
    return-void
.end method
