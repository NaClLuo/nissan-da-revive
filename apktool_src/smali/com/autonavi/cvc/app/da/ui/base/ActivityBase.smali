.class public abstract Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.super Landroid/arch/lifecycle/LifecycleActivity;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;
    }
.end annotation


# instance fields
.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field receiver:Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/arch/lifecycle/LifecycleActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x80

    .line 23
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 25
    sget-object v1, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->createFile(Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;-><init>(Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;)V

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->receiver:Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;

    .line 27
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->receiver:Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.navinfo.panasonic.launcherGone"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 28
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 29
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 31
    invoke-super {p0, p1}, Landroid/arch/lifecycle/LifecycleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "Activity onDestroy"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 42
    invoke-super {p0}, Landroid/arch/lifecycle/LifecycleActivity;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->receiver:Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 47
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/arch/lifecycle/LifecycleActivity;->onStop()V

    .line 37
    return-void
.end method
