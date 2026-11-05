.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->initWidgetView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$800(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Lcom/autonavi/cvc/app/da/source/HomeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->queryDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$800(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Lcom/autonavi/cvc/app/da/source/HomeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/cvc/app/da/source/HomeManager;->removeDefaultHome(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$800(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Lcom/autonavi/cvc/app/da/source/HomeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$9;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/source/HomeManager;->switchHome(Landroid/content/Context;)V

    .line 562
    return-void
.end method
