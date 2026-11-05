.class public Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$JsInterface;
.super Ljava/lang/Object;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$JsInterface;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toastMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$JsInterface;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    return-void
.end method
