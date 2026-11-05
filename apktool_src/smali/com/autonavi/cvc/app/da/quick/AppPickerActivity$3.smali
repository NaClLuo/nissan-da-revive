.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$3;
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

    .line 154
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$3;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 157
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$3;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 158
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$3;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->adapter:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$400(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->notifyDataSetChanged()V

    .line 159
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$3;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # invokes: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->updateCounter()V
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$500(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    return-void
.end method
