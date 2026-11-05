.class Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$6;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->checkAppVersion()V
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
    .line 249
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$6;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "linkedAppBeen":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel$6;->this$0:Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;->access$400(Lcom/autonavi/cvc/app/da/ui/viewmodel/MainViewModel;)Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 253
    return-void
.end method
