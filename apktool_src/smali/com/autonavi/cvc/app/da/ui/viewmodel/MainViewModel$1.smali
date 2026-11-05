.class Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$1;
.super Ljava/util/TimerTask;
.source "MainViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->timeThread()V
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
    .line 103
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 106
    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "time":Ljava/lang/String;
    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getCurrentDate()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "date":Ljava/lang/String;
    invoke-static {}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getCurrentWeek()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "week":Ljava/lang/String;
    new-instance v2, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;

    invoke-direct {v2}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;-><init>()V

    .line 110
    .local v2, "timeInfo":Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;
    iput-object v1, v2, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;->time:Ljava/lang/String;

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$TimeInfo;->date:Ljava/lang/String;

    .line 112
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-static {v4}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->access$000(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$1;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-static {v4}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->access$000(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 115
    :cond_0
    return-void
.end method
