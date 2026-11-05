.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$1;
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
        "Lcom/autonavi/cvc/app/da/location/LocationInfo;",
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
    .line 171
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V
    .locals 2
    .param p1, "locationInfo"    # Lcom/autonavi/cvc/app/da/location/LocationInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/location/LocationInfo;->getCityName()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "cityName":Ljava/lang/String;
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$1;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v1, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$000(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;)V

    .line 178
    .end local v0    # "cityName":Ljava/lang/String;
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
    .line 171
    check-cast p1, Lcom/autonavi/cvc/app/da/location/LocationInfo;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$1;->onChanged(Lcom/autonavi/cvc/app/da/location/LocationInfo;)V

    return-void
.end method
