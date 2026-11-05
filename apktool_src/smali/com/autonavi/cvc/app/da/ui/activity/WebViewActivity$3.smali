.class Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$3;
.super Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$TestWebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;Landroid/webkit/WebChromeClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;
    .param p2, "wrappedClient"    # Landroid/webkit/WebChromeClient;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$3;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-direct {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$TestWebChromeClient;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    .line 185
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 186
    invoke-super {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$TestWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 187
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "uploadFile":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$3;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$102(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 194
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$3;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$3;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$200(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Image Browser"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x12d

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method
