.class Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$2;
.super Ljava/util/TimerTask;
.source "MainViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->initLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$2;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getInstance()Lcom/autonavi/cvc/app/da/location/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/location/LocationHelper;->getLocationInfo()Lcom/autonavi/cvc/app/da/location/LocationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 154
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 155
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$2;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    const-string v1, "\u65e0\u6cd5\u83b7\u53d6\u60a8\u7684\u4f4d\u7f6e\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u662f\u5426\u53ef\u7528"

    invoke-static {v0, v1}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->access$100(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 158
    :cond_0
    return-void
.end method
