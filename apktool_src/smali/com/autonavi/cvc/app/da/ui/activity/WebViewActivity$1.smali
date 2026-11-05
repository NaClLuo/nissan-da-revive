.class Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 128
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 136
    .local v1, "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    if-lez v2, :cond_3

    .line 138
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 137
    invoke-virtual {v1, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "historyUrl":Ljava/lang/String;
    const-string v2, "http://m.toutiao.com/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    .line 145
    :cond_0
    const-string v2, "xui.ptlogin2.qq.com"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    .line 149
    :cond_1
    const-string v2, "graph.qq.com/oauth2.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 150
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 152
    const-string v2, "http://m.ctrip.com/webapp/favorite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "https://secure.ctrip.com/webapp/wallet/"

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http://m.ctrip.com/webapp/you/lifejourney/"

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    :cond_2
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 157
    invoke-virtual {v1, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 170
    .end local v0    # "historyUrl":Ljava/lang/String;
    .end local v1    # "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    :cond_3
    :goto_0
    return-void

    .line 163
    .restart local v0    # "historyUrl":Ljava/lang/String;
    .restart local v1    # "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    :cond_4
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "http://m.weibo.cn"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v0    # "historyUrl":Ljava/lang/String;
    .end local v1    # "mWebBackForwardList":Landroid/webkit/WebBackForwardList;
    :cond_5
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;->finish()V

    goto :goto_0
.end method
