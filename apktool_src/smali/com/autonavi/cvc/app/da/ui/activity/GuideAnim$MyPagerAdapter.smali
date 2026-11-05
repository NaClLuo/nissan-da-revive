.class public Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "GuideAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPagerAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field guidBgIds:[I

.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;


# direct methods
.method public constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;Landroid/content/Context;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "guidBgId"    # [I

    .prologue
    .line 134
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->context:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->guidBgIds:[I

    .line 137
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->guidBgIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 179
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 159
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v2, v2, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guidBgId:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guidBgId:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_0

    .line 162
    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    const v1, 0x7f06001a

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->disclaimer_text:Landroid/widget/TextView;

    .line 166
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->disclaimer_text:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    const v1, 0x7f06001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->btn_no:Landroid/widget/Button;

    .line 168
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->btn_yes:Landroid/widget/Button;

    .line 169
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->btn_no:Landroid/widget/Button;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->btn_yes:Landroid/widget/Button;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_0
    invoke-virtual {p1, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 173
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 148
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
