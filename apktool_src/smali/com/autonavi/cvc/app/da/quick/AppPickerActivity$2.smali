.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 127
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$200(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;

    .line 131
    iget-object p2, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {p2}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object p2

    iget-object p3, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 132
    iget-object p2, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {p2}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object p2

    iget-object p1, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 134
    :cond_26
    iget-object p2, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {p2}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/16 p3, 0xc

    if-lt p2, p3, :cond_41

    .line 135
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    const-string p2, "\u6700\u591a\u53ea\u80fd\u9009 12 \u4e2a"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 138
    :cond_41
    iget-object p2, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {p2}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object p2

    iget-object p1, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_4c
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->adapter:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$400(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->notifyDataSetChanged()V

    .line 141
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # invokes: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->updateCounter()V
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$500(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    return-void
.end method
