.class Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field alpha:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;


# direct methods
.method private constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;->this$1:Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;
    .param p2, "x1"    # Lcom/autonavi/cvc/app/da/weather/CityListActivity$1;

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter$ViewHolder;-><init>(Lcom/autonavi/cvc/app/da/weather/CityListActivity$ListAdapter;)V

    return-void
.end method
