.class Lcom/autonavi/cvc/app/da/quick/QuickDesk$2;
.super Ljava/lang/Object;
.source "QuickDesk.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/QuickDesk;->overlay(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$2;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    .line 113
    # setter for: Lcom/autonavi/cvc/app/da/quick/QuickDesk;->sPage:I
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->access$002(I)I

    .line 114
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$2;->val$act:Landroid/app/Activity;

    # invokes: Lcom/autonavi/cvc/app/da/quick/QuickDesk;->bindDots(Landroid/app/Activity;I)V
    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->access$100(Landroid/app/Activity;I)V

    return-void
.end method
