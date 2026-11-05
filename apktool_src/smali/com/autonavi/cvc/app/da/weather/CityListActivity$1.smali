.class Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/CityListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "<",
        "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

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
    .line 73
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "cityModels":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/weather/model/CityModel;>;"
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$200(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Ljava/util/List;)V

    .line 77
    return-void
.end method
