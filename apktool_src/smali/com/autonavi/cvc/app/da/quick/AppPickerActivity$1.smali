.class Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 106
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 113
    iget-object p2, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    if-nez p1, :cond_7

    const-string p1, ""

    goto :goto_b

    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    # invokes: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->applyFilter(Ljava/lang/String;)V
    invoke-static {p2, p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$000(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;Ljava/lang/String;)V

    return-void
.end method
