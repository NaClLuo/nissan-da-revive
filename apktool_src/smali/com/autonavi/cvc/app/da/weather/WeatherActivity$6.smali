.class Lcom/autonavi/cvc/app/da/weather/WeatherActivity$6;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherActivity;
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
    .line 181
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$6;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$6;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->finish()V

    .line 187
    return-void
.end method
