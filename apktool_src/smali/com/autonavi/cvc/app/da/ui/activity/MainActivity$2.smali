.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$2;
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
        "Lcom/autonavi/cvc/app/da/weather/model/Weather;",
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
    .line 180
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$2;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V
    .locals 1
    .param p1, "weather"    # Lcom/autonavi/cvc/app/da/weather/model/Weather;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$2;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$100(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    .line 184
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 180
    check-cast p1, Lcom/autonavi/cvc/app/da/weather/model/Weather;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$2;->onChanged(Lcom/autonavi/cvc/app/da/weather/model/Weather;)V

    return-void
.end method
