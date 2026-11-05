.class Lcom/autonavi/cvc/app/da/quick/OrientationFix$1;
.super Ljava/lang/Object;
.source "OrientationFix.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/OrientationFix;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 54
    # setter for: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 55
    # invokes: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->apply(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$100(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 83
    # getter for: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;
    invoke-static {}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    .line 84
    # setter for: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    :cond_a
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 65
    # setter for: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 66
    # invokes: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->apply(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$100(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 60
    # setter for: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
