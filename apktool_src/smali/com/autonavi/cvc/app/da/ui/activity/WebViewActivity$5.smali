.class Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$5;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$5;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

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
    .line 419
    packed-switch p2, :pswitch_data_0

    .line 428
    :goto_0
    return-void

    .line 421
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$5;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->telUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$5;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method

.method public onClickCancel(Landroid/app/AlertDialog$Builder;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog$Builder;
    .param p2, "whichPopup"    # I

    .prologue
    .line 407
    packed-switch p2, :pswitch_data_0

    .line 414
    :pswitch_0
    return-void

    .line 407
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
    .end packed-switch
.end method
