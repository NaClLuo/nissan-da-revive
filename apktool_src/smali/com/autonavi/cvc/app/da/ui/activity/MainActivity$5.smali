.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$5;
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
        "Ljava/util/List",
        "<+",
        "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$5;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 202
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$5;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "iThirdPartyApps":Ljava/util/List;, "Ljava/util/List<+Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;>;"
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$5;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$5;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$500(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$600(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/util/List;I)V

    .line 206
    return-void
.end method
