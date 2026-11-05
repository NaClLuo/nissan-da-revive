.class public Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;
.super Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;
.source "GuideAnim.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_QUIT:I = 0xca


# instance fields
.field btn_no:Landroid/widget/Button;

.field btn_yes:Landroid/widget/Button;

.field dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

.field disclaimer_text:Landroid/widget/TextView;

.field guidBgId:[I

.field guideViewPager:Landroid/support/v4/view/ViewPager;

.field intent:Landroid/content/Intent;

.field mAdapter:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;

.field pagingImg:[Landroid/widget/ImageView;

.field paging_layout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;-><init>()V

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guidBgId:[I

    .line 183
    new-instance v0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$2;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->intent:Landroid/content/Intent;

    return-void

    .line 43
    :array_0
    .array-data 4
        0x7f02001d
        0x7f02001e
        0x7f02001f
        0x7f020020
        0x7f020022
        0x7f020021
    .end array-data
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    const v0, 0x7f060011

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guideViewPager:Landroid/support/v4/view/ViewPager;

    .line 81
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guideViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setFocusableInTouchMode(Z)V

    .line 82
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guideViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 102
    new-instance v0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guidBgId:[I

    invoke-direct {v0, p0, p0, v1}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;Landroid/content/Context;[I)V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->mAdapter:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;

    .line 103
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guideViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->mAdapter:Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$MyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guideViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim$1;-><init>(Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->intent:Landroid/content/Intent;

    const-string v1, "agree"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->setResult(ILandroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->finish()V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->intent:Landroid/content/Intent;

    const-string v1, "agree"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->setResult(ILandroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->finish()V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x7f06001b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->initView()V

    .line 54
    const v0, 0x7f060012

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->paging_layout:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->guidBgId:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 57
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 58
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f060015

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 59
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 60
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 61
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onDestroy()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 206
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 208
    const-string v1, "\u63d0\u793a"

    const-string v2, "\u662f\u5426\u8981\u5173\u95ed\u4e92\u8054\u5e94\u7528\u7a0b\u5e8f\uff1f"

    const-string v3, "\u662f"

    const-string v4, "\u5426"

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v0, 0xca

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 208
    invoke-static/range {v0 .. v7}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    .line 210
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/cvc/app/da/ui/base/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPagingImg(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 65
    if-ne p1, v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 64
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/GuideAnim;->pagingImg:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 73
    :cond_1
    return-void
.end method
