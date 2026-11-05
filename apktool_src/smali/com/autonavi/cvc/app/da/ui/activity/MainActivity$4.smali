.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$4;
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
        "Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;",
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
    .line 193
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;)V
    .locals 2
    .param p1, "s"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 196
    if-eqz p1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$300(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$4;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$400(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p1, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
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
    .line 193
    check-cast p1, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$4;->onChanged(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;)V

    return-void
.end method
