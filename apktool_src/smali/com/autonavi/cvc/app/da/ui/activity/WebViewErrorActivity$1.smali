.class Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity$1;
.super Ljava/lang/Object;
.source "WebViewErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/ui/activity/WebViewErrorActivity;->finish()V

    .line 42
    return-void
.end method
