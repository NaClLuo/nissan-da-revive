.class Lcom/autonavi/cvc/app/da/quick/OrientationFix$2;
.super Landroid/database/ContentObserver;
.source "OrientationFix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/OrientationFix;->install(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 99
    # getter for: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->sCurrent:Landroid/app/Activity;
    invoke-static {}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$000()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 101
    # invokes: Lcom/autonavi/cvc/app/da/quick/OrientationFix;->apply(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/OrientationFix;->access$100(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method
