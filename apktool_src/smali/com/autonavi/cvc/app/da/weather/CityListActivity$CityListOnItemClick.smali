.class Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityListOnItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;


# direct methods
.method private constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;
    .param p2, "x1"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$400(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    .line 88
    .local v0, "cityModel":Lcom/autonavi/cvc/app/da/weather/model/CityModel;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    const-class v3, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "city"

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v2, "cityCode"

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$500()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v2}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$700(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$600(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$CityListOnItemClick;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-virtual {v2}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->finish()V

    .line 94
    return-void
.end method
