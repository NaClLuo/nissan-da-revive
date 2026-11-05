.class Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;


# direct methods
.method private constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity;
    .param p2, "x1"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$OverlayThread;->this$0:Lcom/autonavi/cvc/app/da/weather/CityListActivity;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/weather/CityListActivity;->access$600(Lcom/autonavi/cvc/app/da/weather/CityListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    return-void
.end method
