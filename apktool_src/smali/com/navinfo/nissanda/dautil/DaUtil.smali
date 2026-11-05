.class public Lcom/navinfo/nissanda/dautil/DaUtil;
.super Ljava/lang/Object;
.source "DaUtil.java"


# static fields
.field private static daUtil:Lcom/navinfo/nissanda/dautil/DaUtil;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/navinfo/nissanda/dautil/DaUtil;

    invoke-direct {v0}, Lcom/navinfo/nissanda/dautil/DaUtil;-><init>()V

    sput-object v0, Lcom/navinfo/nissanda/dautil/DaUtil;->daUtil:Lcom/navinfo/nissanda/dautil/DaUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/navinfo/nissanda/dautil/DaUtil;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/navinfo/nissanda/dautil/DaUtil;->daUtil:Lcom/navinfo/nissanda/dautil/DaUtil;

    return-object v0
.end method

.method private initDB(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "initDB"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/db/DBHelper;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private static judgeAppPkg(Landroid/content/Context;Ljava/lang/String;)B
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 56
    :cond_0
    const-string v0, "com.navinfo.vuinavigation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static pkgName2Bytes(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 43
    .local v2, "pkgBytes":[B
    array-length v4, v2

    add-int/lit8 v4, v4, 0x2

    new-array v1, v4, [B

    .line 44
    .local v1, "buf":[B
    new-array v3, v5, [B

    array-length v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v6

    .line 45
    .local v3, "pkgLength":[B
    new-array v0, v5, [B

    invoke-static {p0, p1}, Lcom/navinfo/nissanda/dautil/DaUtil;->judgeAppPkg(Landroid/content/Context;Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v0, v6

    .line 46
    .local v0, "appType":[B
    invoke-static {v0, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    invoke-static {v3, v6, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    const/4 v4, 0x2

    array-length v5, v2

    invoke-static {v2, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-object v1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sput-object p1, Lcom/navinfo/nissanda/dautil/DaUtil;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/navinfo/nissanda/dautil/DaUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/navinfo/nissanda/dautil/DaUtil;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/navinfo/nissanda/dautil/DaUtil;->initDB(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->getInstace()Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;

    move-result-object v0

    sget-object v1, Lcom/navinfo/nissanda/dautil/DaUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->init(Landroid/content/Context;)V

    .line 27
    sget-object v0, Lcom/navinfo/nissanda/dautil/DaUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/http/HttpConnect;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v0

    sget-object v1, Lcom/navinfo/nissanda/dautil/DaUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method
