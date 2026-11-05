.class Lcom/autonavi/cvc/app/da/quick/QuickDesk$5;
.super Ljava/lang/Object;
.source "QuickDesk.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/QuickDesk;->cell(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
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

    .line 232
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$5;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    .line 235
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$5;->val$act:Landroid/app/Activity;

    # invokes: Lcom/autonavi/cvc/app/da/quick/QuickDesk;->openPicker(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->access$200(Landroid/app/Activity;)V

    const/4 p1, 0x1

    return p1
.end method
