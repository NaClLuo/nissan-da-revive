.class public Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;
.super Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.source "WebViewErrorActivity.java"


# instance fields
.field back:Landroid/widget/Button;

.field code:Ljava/lang/String;

.field relativeLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;-><init>()V

    return-void
.end method

.method private appChanged()V
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    move-result-object v0

    const-string v1, "com.webview.error"

    invoke-virtual {v0, p0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->appChange(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 31
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->code:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->appChanged()V

    .line 33
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->code:Ljava/lang/String;

    const-string v1, "-10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->relativeLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 36
    :cond_0
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->back:Landroid/widget/Button;

    .line 37
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->back:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity$1;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity$1;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
