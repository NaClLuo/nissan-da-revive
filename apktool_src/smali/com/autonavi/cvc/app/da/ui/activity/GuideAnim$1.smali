.class Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;
.super Ljava/lang/Object;
.source "GuideAnim.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->initView()V
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
    .line 104
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 120
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guidBgId:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->paging_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->paging_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-virtual {v0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->setPagingImg(I)V

    goto :goto_0
.end method
