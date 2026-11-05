.class public Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;
.super Ljava/lang/Object;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Indices"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public detail:Ljava/lang/String;

.field public level:I

.field final synthetic this$0:Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/weather/model/Weather$Index$Indices;->this$0:Lcom/autonavi/cvc/app/da/weather/model/Weather$Index;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
