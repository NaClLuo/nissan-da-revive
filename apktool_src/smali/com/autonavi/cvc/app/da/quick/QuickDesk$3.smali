.class Lcom/autonavi/cvc/app/da/quick/QuickDesk$3;
.super Ljava/lang/Object;
.source "QuickDesk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 197
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$3;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 200
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$3;->val$act:Landroid/app/Activity;

    # invokes: Lcom/autonavi/cvc/app/da/quick/QuickDesk;->openPicker(Landroid/app/Activity;)V
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->access$200(Landroid/app/Activity;)V

    return-void
.end method
