.class public Lcom/autonavi/cvc/app/da/App;
.super Landroid/support/multidex/MultiDexApplication;
.source "App.java"


# static fields
.field public static screenHeight:I

.field public static screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput v0, Lcom/autonavi/cvc/app/da/App;->screenWidth:I

    .line 19
    sput v0, Lcom/autonavi/cvc/app/da/App;->screenHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method private InitApp()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/navinfo/nissanda/dautil/DaUtil;->getInstance()Lcom/navinfo/nissanda/dautil/DaUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/navinfo/nissanda/dautil/DaUtil;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 23
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "900059388"

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 24
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v2

    sput v0, Lcom/autonavi/cvc/app/da/App;->screenWidth:I

    .line 25
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    sput v0, Lcom/autonavi/cvc/app/da/App;->screenHeight:I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenWidth==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/autonavi/cvc/app/da/App;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenHeight==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/autonavi/cvc/app/da/App;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/App;->InitApp()V

    .line 29
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 34
    return-void
.end method
