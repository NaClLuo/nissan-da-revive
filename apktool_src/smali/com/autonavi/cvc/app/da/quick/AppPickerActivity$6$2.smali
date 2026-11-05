.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

.field final synthetic val$loaded:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;->this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;->val$loaded:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;->this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->allItems:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$700(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 247
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;->this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->allItems:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$700(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;->val$loaded:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;->this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6$2;->this$1:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

    iget-object v1, v1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->query:Ljava/lang/String;
    invoke-static {v1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$800(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->applyFilter(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$000(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;Ljava/lang/String;)V

    return-void
.end method
