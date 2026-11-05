.class Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;
.super Ljava/lang/Object;
.source "GuideAnim.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickAscertain(Landroid/app/AlertDialog$Builder;ILjava/lang/Object;)V
    .locals 3
    .param p1, "adb"    # Landroid/app/AlertDialog$Builder;
    .param p2, "whichPopup"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 193
    packed-switch p2, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->intent:Landroid/content/Intent;

    const-string v1, "agree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->finish()V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_0
    .end packed-switch
.end method

.method public onClickCancel(Landroid/app/AlertDialog$Builder;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog$Builder;
    .param p2, "whichPopup"    # I

    .prologue
    .line 189
    return-void
.end method
