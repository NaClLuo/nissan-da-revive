.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$3;
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
        "Ljava/lang/String;",
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
    .line 186
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$3;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

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
    .line 186
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$3;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 189
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$3;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$3;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$200(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    return-void
.end method
