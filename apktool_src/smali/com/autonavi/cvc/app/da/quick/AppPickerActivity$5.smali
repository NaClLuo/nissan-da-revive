.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 183
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {v0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 184
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->save(Landroid/content/Context;Ljava/util/List;)V

    .line 185
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    const-string v0, "\u5df2\u4fdd\u5b58"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 186
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->finish()V

    return-void
.end method
