.class Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;
.super Ljava/lang/Object;
.source "QuickDesk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/QuickDesk;->cell(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 220
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;->val$pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_17

    .line 222
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;->val$act:Landroid/app/Activity;

    const-string v0, "\u5e94\u7528\u672a\u5b89\u88c5"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_17
    const/high16 v0, 0x10000000

    .line 225
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    :try_start_1c
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;->val$act:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_21

    :catchall_21
    return-void
.end method
