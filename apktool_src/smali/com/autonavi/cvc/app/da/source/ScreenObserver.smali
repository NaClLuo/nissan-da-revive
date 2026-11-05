.class public Lcom/autonavi/cvc/app/da/source/ScreenObserver;
.super Ljava/lang/Object;
.source "ScreenObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;,
        Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenBroadcastReceiver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mReflectScreenState:Ljava/lang/reflect/Method;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mScreenReceiver:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenBroadcastReceiver;

.field private mScreenStateListener:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ScreenObserver"

    sput-object v0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mContext:Landroid/content/Context;

    .line 32
    new-instance v1, Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenBroadcastReceiver;-><init>(Lcom/autonavi/cvc/app/da/source/ScreenObserver;Lcom/autonavi/cvc/app/da/source/ScreenObserver$1;)V

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenReceiver:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenBroadcastReceiver;

    .line 34
    :try_start_0
    const-class v1, Landroid/os/PowerManager;

    const-string v2, "isScreenOn"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mReflectScreenState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    sget-object v1, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "API < 7,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/autonavi/cvc/app/da/source/ScreenObserver;)Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/autonavi/cvc/app/da/source/ScreenObserver;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenStateListener:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;

    return-object v0
.end method

.method private firstGetScreenState()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 63
    .local v0, "manager":Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->isScreenOn(Landroid/os/PowerManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenStateListener:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenStateListener:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;

    invoke-interface {v1}, Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;->onScreenOn()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenStateListener:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenStateListener:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;

    invoke-interface {v1}, Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;->onScreenOff()V

    goto :goto_0
.end method

.method private static isScreenOn(Landroid/os/PowerManager;)Z
    .locals 4
    .param p0, "pm"    # Landroid/os/PowerManager;

    .prologue
    .line 88
    :try_start_0
    sget-object v2, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mReflectScreenState:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 92
    .local v1, "screenState":Z
    :goto_0
    return v1

    .line 89
    .end local v1    # "screenState":Z
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "screenState":Z
    goto :goto_0
.end method

.method private startScreenBroadcastReceiver()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenReceiver:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method


# virtual methods
.method public requestScreenStateUpdate(Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenStateListener:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenStateListener;

    .line 56
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->startScreenBroadcastReceiver()V

    .line 58
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->firstGetScreenState()V

    .line 59
    return-void
.end method

.method public stopScreenStateUpdate()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/ScreenObserver;->mScreenReceiver:Lcom/autonavi/cvc/app/da/source/ScreenObserver$ScreenBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method
