.class Landroid/arch/lifecycle/ComputableLiveData$1;
.super Landroid/arch/lifecycle/LiveData;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/ComputableLiveData;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ComputableLiveData;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/ComputableLiveData;

    .prologue
    .line 52
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$1;, "Landroid/arch/lifecycle/ComputableLiveData$1;"
    iput-object p1, p0, Landroid/arch/lifecycle/ComputableLiveData$1;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Landroid/arch/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 2

    .prologue
    .line 56
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$1;, "Landroid/arch/lifecycle/ComputableLiveData$1;"
    invoke-static {}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->getInstance()Landroid/arch/core/executor/AppToolkitTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/ComputableLiveData$1;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroid/arch/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method
