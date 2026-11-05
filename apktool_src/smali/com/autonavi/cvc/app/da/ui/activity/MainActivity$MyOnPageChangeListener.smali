.class public Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;


# direct methods
.method public constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 933
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 937
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 941
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 945
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v1, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$502(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;I)I

    .line 946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1500(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 947
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1500(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->view:Landroid/widget/ImageView;

    .line 948
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1500(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)[I

    move-result-object v1

    aget v1, v1, v0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    .line 949
    const-string v1, "frank"

    const-string v2, "onPageSelected page01_select"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->view:Landroid/widget/ImageView;

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 946
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_0
    const-string v1, "frank"

    const-string v2, "onPageSelected page01"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$MyOnPageChangeListener;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->view:Landroid/widget/ImageView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 956
    :cond_1
    return-void
.end method
