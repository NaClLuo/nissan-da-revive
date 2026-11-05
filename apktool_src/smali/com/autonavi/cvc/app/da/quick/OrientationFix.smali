.class public final Lcom/autonavi/cvc/app/da/quick/OrientationFix;
.super Ljava/lang/Object;
.source "OrientationFix.java"


# static fields
.field private static volatile sCurrent:Landroid/app/Activity;

.field private static sInstalled:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .registers 1

    .line 31
    sget-object v0, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .registers 1

    .line 31
    sput-object p0, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .registers 1

    .line 31
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->apply(Landroid/app/Activity;)V

    return-void
.end method

.method private static apply(Landroid/app/Activity;)V
    .registers 3

    if-eqz p0, :cond_1e

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    .line 115
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->isLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 116
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->lockedOrientation(Landroid/app/Activity;)I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x6

    .line 120
    :goto_15
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq v1, v0, :cond_1e

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_1e

    :catchall_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .registers 5

    .line 40
    sget-boolean v0, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sInstalled:Z

    if-nez v0, :cond_3a

    if-nez p0, :cond_7

    goto :goto_3a

    :cond_7
    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sInstalled:Z

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 46
    instance-of v0, p0, Landroid/app/Application;

    if-nez v0, :cond_13

    return-void

    .line 51
    :cond_13
    :try_start_13
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    new-instance v1, Lcom/autonavi/cvc/app/da/quick/OrientationFix$1;

    invoke-direct {v1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1e

    .line 92
    :catchall_1e
    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 93
    const-string v0, "accelerometer_rotation"

    .line 94
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/autonavi/cvc/app/da/quick/OrientationFix$2;

    new-instance v2, Landroid/os/Handler;

    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/autonavi/cvc/app/da/quick/OrientationFix$2;-><init>(Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 93
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_3a

    :catchall_3a
    :cond_3a
    :goto_3a
    return-void
.end method

.method private static isLocked(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    if-nez p0, :cond_f

    const/4 v0, 0x1

    :catchall_f
    :cond_f
    return v0
.end method

.method private static lockedOrientation(Landroid/app/Activity;)I
    .registers 2

    .line 139
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 140
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_16

    const/4 v0, 0x3

    if-ne p0, v0, :cond_16

    const/16 p0, 0x8

    return p0

    :catchall_16
    :cond_16
    const/4 p0, 0x0

    return p0
.end method
