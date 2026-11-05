.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;
.super Ljava/lang/Object;
.source "ThirdPartyAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;
    }
.end annotation


# static fields
.field private static mThirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;


# instance fields
.field private appBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;"
        }
    .end annotation
.end field

.field private downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->mThirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->updateApps(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->saveAppsInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;Ljava/lang/String;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;
    .param p1, "x1"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->downloadImage(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;Ljava/lang/String;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private compareVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "oldVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    const-string v4, "."

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 91
    const-string v4, "."

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 93
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 94
    .local v2, "oldv":J
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 95
    .local v0, "newv":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private downloadImage(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;Ljava/lang/String;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    .locals 3
    .param p1, "linkedAppBean"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "upDateAppsListener"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    .prologue
    .line 273
    if-eqz p2, :cond_0

    .line 274
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "splitBySlash":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 276
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 277
    new-instance v2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;

    invoke-direct {v2, p0, p1, p3}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;-><init>(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V

    invoke-static {v0, p2, v2}, Lcom/autonavi/cvc/app/da/http/HttpConnect;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;)V

    .line 288
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "splitBySlash":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->mThirdPartyAppManager:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    return-object v0
.end method

.method private judgeAppInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 81
    :try_start_0
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 85
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 82
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0
.end method

.method private loadAppsFromAsserts(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "appBeans":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "WebAppsResult":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;
    sget-object v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->AssertsFile:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/autonavi/cvc/app/da/util/FileUtil;->readStringFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "data":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 103
    :try_start_0
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .local v4, "gson":Lcom/google/gson/Gson;
    :try_start_1
    const-class v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :goto_0
    if-eqz v1, :cond_0

    .line 110
    :try_start_2
    iget-object v5, v1, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;->data:Ljava/util/List;

    invoke-direct {p0, p2, v5}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->updateApps(Ljava/util/List;Ljava/util/List;)V

    .line 118
    .end local v4    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_1
    return-void

    .line 106
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    :catch_1
    move-exception v3

    .line 116
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadAppsFromLocal(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "appBeans":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    sget-object v7, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->appInfoFileName:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v3, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 123
    .local v5, "webAppsResult":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 124
    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FileUtil;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 126
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 128
    .local v4, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    invoke-virtual {v4, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    if-eqz v5, :cond_0

    .line 134
    iget-object v6, v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;->data:Ljava/util/List;

    invoke-direct {p0, p2, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->updateApps(Ljava/util/List;Ljava/util/List;)V

    .line 140
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_1
    return-void

    .line 129
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v4    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->loadAppsFromAsserts(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 138
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "gson":Lcom/google/gson/Gson;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->loadAppsFromAsserts(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1
.end method

.method private saveAppsInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->insertApps(Ljava/util/List;)V

    .line 248
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v3

    invoke-interface {v3}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getAllApps()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    .line 249
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    sget-object v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 251
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 252
    .local v1, "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    if-eqz v1, :cond_0

    .line 253
    sget-object v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_ICON:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setAppIconID(I)V

    .line 249
    .end local v1    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_NAME:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 258
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_NAME:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v2

    if-le v3, v4, :cond_2

    .line 259
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    sget-object v4, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_NAME:[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 260
    .restart local v1    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    if-eqz v1, :cond_2

    .line 261
    sget-object v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_ICON:[I

    aget v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setAppIconID(I)V

    .line 257
    .end local v1    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 265
    :cond_3
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 267
    .local v0, "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->judgeAppInstalled(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setInstalled(Z)V

    goto :goto_2

    .line 270
    .end local v0    # "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    :cond_4
    return-void
.end method

.method private updateApps(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "appBeans":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .local p2, "webAppsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 227
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 228
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 229
    .local v0, "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;

    .line 230
    .local v5, "webAppInfo":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;
    iget-object v4, v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->url:Ljava/lang/String;

    .line 231
    .local v4, "url":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 232
    invoke-virtual {v0, v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setUrl(Ljava/lang/String;)V

    .line 233
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v3, v6, 0x1

    .line 234
    .local v3, "lastIndex":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setFileName(Ljava/lang/String;)V

    .line 237
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    :cond_0
    iget-object v6, v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->filenamechinese:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setAppName(Ljava/lang/String;)V

    .line 238
    iget-object v6, v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setPkg(Ljava/lang/String;)V

    .line 239
    const-string v6, "webapp"

    iget-object v7, v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->apptype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setWebApp(Z)V

    .line 241
    iget-object v6, v5, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setVersion(Ljava/lang/String;)V

    .line 226
    .end local v0    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "webAppInfo":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_2
    return-void
.end method


# virtual methods
.method public getAppByFileName(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 161
    .local v0, "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    iget-object v2, v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->fileName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    .end local v0    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppCount()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 314
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 315
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 319
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getThirdPartApp(I)Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    if-eqz v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 299
    .restart local v0    # "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    :cond_0
    return-object v0
.end method

.method public getThirdPartApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getAllApps()Ljava/util/List;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    return-void
.end method

.method public loadApps(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v6

    invoke-interface {v6}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->getAllApps()Ljava/util/List;

    move-result-object v1

    .line 44
    .local v1, "appBeans":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "appBeans":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .restart local v1    # "appBeans":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_NAME:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 47
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;-><init>()V

    .line 48
    .local v0, "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_ICON:[I

    aget v6, v6, v3

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setAppIconID(I)V

    .line 49
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_NAME:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setAppName(Ljava/lang/String;)V

    .line 50
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_PKG:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setPkg(Ljava/lang/String;)V

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_ICON_FILE_NAME:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setIconFilePath(Ljava/lang/String;)V

    .line 52
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_URL:[Ljava/lang/String;

    aget-object v5, v6, v3

    .line 53
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setUrl(Ljava/lang/String;)V

    .line 54
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 55
    .local v4, "lastIndex":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setFileName(Ljava/lang/String;)V

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v4    # "lastIndex":I
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_NAME:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 60
    new-instance v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;-><init>()V

    .line 61
    .restart local v0    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_ICON:[I

    aget v6, v6, v3

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setAppIconID(I)V

    .line 62
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_NAME:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setAppName(Ljava/lang/String;)V

    .line 63
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_PKG:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setPkg(Ljava/lang/String;)V

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_ICON_FILE_NAME:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setIconFilePath(Ljava/lang/String;)V

    .line 65
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setWebApp(Z)V

    .line 66
    sget-object v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_URL:[Ljava/lang/String;

    aget-object v5, v6, v3

    .line 67
    .restart local v5    # "url":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setUrl(Ljava/lang/String;)V

    .line 68
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 69
    .restart local v4    # "lastIndex":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 70
    .restart local v2    # "fileName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setFileName(Ljava/lang/String;)V

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v4    # "lastIndex":I
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->loadAppsFromLocal(Landroid/content/Context;Ljava/util/List;)V

    .line 75
    invoke-direct {p0, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->saveAppsInfo(Ljava/util/List;)V

    .line 76
    return-void
.end method

.method public notifyChanges()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->appBeans:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;->onUpdateSuccess(Ljava/util/List;)V

    .line 152
    :cond_0
    return-void
.end method

.method public registerAppsChangeListener(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    .locals 0
    .param p1, "upDateAppsListener"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    .line 144
    return-void
.end method

.method public removeAppsChangeListener(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    .locals 1
    .param p1, "upDateAppsListener"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    .prologue
    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    .line 156
    return-void
.end method

.method public saveApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V
    .locals 1
    .param p1, "appBean"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .prologue
    .line 171
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->insertApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V

    .line 172
    return-void
.end method

.method public updateApps(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    .locals 4
    .param p1, "upDateAppsListener"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    .prologue
    .line 180
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    sget-object v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->appInfoFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 184
    :cond_0
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;->getAppUpgradeUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;-><init>(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/io/File;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V

    invoke-static {v2, v3}, Lcom/autonavi/cvc/app/da/http/HttpConnect;->post(Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
