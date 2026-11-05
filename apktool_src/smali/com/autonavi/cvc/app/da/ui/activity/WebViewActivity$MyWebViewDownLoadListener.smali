.class Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$MyWebViewDownLoadListener;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$MyWebViewDownLoadListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;
    .param p2, "x1"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$1;

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$MyWebViewDownLoadListener;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 874
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity$MyWebViewDownLoadListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewActivity;

    const-string v1, "\u6b64\u529f\u80fd\u65e0\u6cd5\u63d0\u4f9b"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 875
    return-void
.end method
