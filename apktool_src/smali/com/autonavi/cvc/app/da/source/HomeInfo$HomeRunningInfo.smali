.class public Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;
.super Ljava/lang/Object;
.source "HomeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/source/HomeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HomeRunningInfo"
.end annotation


# instance fields
.field public MemoryUsed:I

.field public PID:I

.field public isRunning:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;->isRunning:Z

    .line 41
    return-void
.end method

.method public static getHomeRunningInfo(Ljava/lang/String;Landroid/app/ActivityManager;)Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;
    .locals 9
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, "rInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v0, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;-><init>()V

    .line 47
    .local v0, "hrInfo":Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 48
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 49
    :cond_1
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v2, v6, v4

    .line 50
    .local v2, "pn":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v3, v1

    .line 49
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "pn":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    .line 55
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;->isRunning:Z

    .line 56
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v4, v0, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;->PID:I

    .line 57
    invoke-virtual {v0, p1}, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;->getMemoryUsed(Landroid/app/ActivityManager;)I

    move-result v4

    iput v4, v0, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;->MemoryUsed:I

    .line 59
    :cond_4
    return-object v0
.end method


# virtual methods
.method public getMemoryUsed(Landroid/app/ActivityManager;)I
    .locals 4
    .param p1, "am"    # Landroid/app/ActivityManager;

    .prologue
    const/4 v3, 0x0

    .line 63
    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;->PID:I

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    aget-object v0, v1, v3

    .line 64
    .local v0, "mInfo":Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    return v1
.end method
