.class Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;
.super Landroid/webkit/WebViewClient;
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
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private loadVideoBlocker(Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    .line 311
    const-string v0, "javascript:function func() {var video = document.getElementsByTagName(\'video\');for(var i = 0; i < video.length; ++i) {video[i].setAttribute(\'src\', \'about:blank\');video[i].setAttribute(\'preload\', \'none\');window.alert(\'\u6c7d\u8f66\u884c\u9a76\u671f\u95f4\uff0c\u89c6\u9891\u65e0\u6cd5\u64ad\u653e\u3002\u5982\u679c\u8981\u5728\u624b\u673a\u4e0a\u89c2\u770b\uff0c\u8bf7\u65ad\u5f00\u4e0e\u6c7d\u8f66\u8fde\u63a5\u3002\');window.history.back();}}func();"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 325
    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isReload"    # Z

    .prologue
    .line 376
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "dontResend"    # Landroid/os/Message;
    .param p3, "resend"    # Landroid/os/Message;

    .prologue
    .line 382
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 383
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$300(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "\\?"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "s":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 280
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 282
    const-string v1, "mp4"

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->loadVideoBlocker(Landroid/webkit/WebView;)V

    .line 288
    .end local v0    # "s":[Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$300(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->loadVideoBlocker(Landroid/webkit/WebView;)V

    .line 299
    :cond_0
    const-string v0, "xw.qq.com/m/news/index.htm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const-string v0, "javascript:var appbar = document.getElementById(\'app-bar\');appbar.parentNode.removeChild(appbar)"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    const-string v0, "m.tuniu.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const-string v0, "javascript:document.getElementById(\'J_appDownloadRenderBox\').remove()"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 306
    const-string v0, "javascript:document.getElementsByClassName(\'new-user-coupon-pop\')[0].remove();"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 338
    const-string v0, "=====\u300b"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url\u521d\u6b21\u52a0\u8f7d========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 340
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 345
    const/16 v1, -0xa

    if-ne v1, p2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 348
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    const-class v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 351
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->removeAllViews()V

    .line 352
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 353
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearView()V

    .line 354
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string v0, "frank"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 363
    const-string v0, "frank"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 370
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    .line 371
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    .line 389
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 272
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x12c

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 201
    const-string v0, "===chu===\u52a0\u8f7d\u65b0\u8fde\u63a5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v0, "imeituan:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v8

    .line 205
    :cond_1
    const-string v0, "tuniuapp:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$300(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 209
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$400(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctrip.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    const-string v0, "ctrip.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$500(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    goto :goto_0

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$400(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    const-string v0, "elong.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 217
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$500(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    goto :goto_0

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$400(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    const-string v0, "toutiao.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pstatp.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->access$500(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    goto/16 :goto_0

    .line 230
    :cond_4
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->loadVideoBlocker(Landroid/webkit/WebView;)V

    .line 231
    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iput-object p2, v0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->telUrl:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u62e8\u6253\u7535\u8bdd\u4f1a\u65ad\u5f00\u4e0e\u8f66\u673a\u7684\u8fde\u63a5"

    const-string v3, "\u7ee7\u7eed\u62e8\u6253"

    const-string v4, "\u53d6\u6d88"

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v5, v5, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    .line 234
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 233
    invoke-static/range {v0 .. v7}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 236
    :cond_5
    const-string v0, "youku"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "tudou"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ent.sina"

    .line 237
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "edu.sina"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "video.weibo"

    .line 238
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "v.qq"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "m.56"

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "v.ku6"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "tv.sohu"

    .line 240
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "m.iqiyi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "video.sina"

    .line 241
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    :cond_6
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8fde\u63a5\u4e2d\u65e0\u6cd5\u64ad\u653e\u89c6\u9891\uff0c\u8bf7\u65ad\u5f00\u8fde\u63a5\u91cd\u8bd5"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 245
    :cond_7
    const-string v0, "sinaweibo://splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 246
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    const-string v1, "\u6b64\u529f\u80fd\u65e0\u6cd5\u63d0\u4f9b"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 249
    :cond_8
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_9
    const-string v0, "sinaweibo://splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 255
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    const-string v1, "\u6b64\u529f\u80fd\u65e0\u6cd5\u63d0\u4f9b"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 257
    :cond_a
    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iput-object p2, v0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->telUrl:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u62e8\u6253\u7535\u8bdd\uff1f"

    const-string v3, "\u62e8\u6253"

    const-string v4, "\u53d6\u6d88"

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v5, v5, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    .line 260
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 259
    invoke-static/range {v0 .. v7}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 262
    :cond_b
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
