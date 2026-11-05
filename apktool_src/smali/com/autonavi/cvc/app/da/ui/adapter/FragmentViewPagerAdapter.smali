.class public Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "FragmentViewPagerAdapter.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;
    }
.end annotation


# instance fields
.field private currentPageIndex:I

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/view/ViewPager;Ljava/util/List;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "viewPager"    # Landroid/support/v4/view/ViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Landroid/support/v4/view/ViewPager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->currentPageIndex:I

    .line 26
    iput-object p3, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragments:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 28
    iput-object p2, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 29
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 30
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentPageIndex()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->currentPageIndex:I

    return v0
.end method

.method public getOnExtraPageChangeListener()Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 50
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 51
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 53
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 54
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 61
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 64
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 65
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 40
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    invoke-virtual {v0, p1}, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;->onExtraPageScrollStateChanged(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;->onExtraPageScrolled(IFI)V

    .line 96
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragments:Ljava/util/List;

    iget v1, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->currentPageIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->fragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 106
    :cond_0
    iput p1, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->currentPageIndex:I

    .line 108
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    invoke-virtual {v0, p1}, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;->onExtraPageSelected(I)V

    .line 112
    :cond_1
    return-void
.end method

.method public setOnExtraPageChangeListener(Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;)V
    .locals 0
    .param p1, "onExtraPageChangeListener"    # Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter;->onExtraPageChangeListener:Lcom/autonavi/cvc/app/da/ui/adapter/FragmentViewPagerAdapter$OnExtraPageChangeListener;

    .line 89
    return-void
.end method
