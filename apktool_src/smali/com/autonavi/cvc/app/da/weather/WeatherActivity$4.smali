.class Lcom/autonavi/cvc/app/da/weather/WeatherActivity$4;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$4;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$4;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    const-class v2, Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$4;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-static {}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->access$100()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 106
    return-void
.end method
