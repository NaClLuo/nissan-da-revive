.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isConnected"    # Ljava/lang/Boolean;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 213
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialog:Landroid/app/AlertDialog;

    .line 215
    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$6;->onChanged(Ljava/lang/Boolean;)V

    return-void
.end method
