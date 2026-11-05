.class Lcom/autonavi/cvc/app/da/weather/WeatherActivity$2;
.super Ljava/lang/Object;
.source "WeatherActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/weather/WeatherActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/weather/WeatherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$2;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

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
    .line 70
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$2;->onChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 73
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/WeatherActivity$2;->this$0:Lcom/autonavi/cvc/app/da/weather/WeatherActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialogDismiss()V

    .line 75
    return-void
.end method
