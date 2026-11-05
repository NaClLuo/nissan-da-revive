.class Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuitReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;->this$0:Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.navinfo.panasonic.launcherGone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase$QuitReceiver;->this$0:Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->finish()V

    .line 56
    :cond_0
    return-void
.end method
