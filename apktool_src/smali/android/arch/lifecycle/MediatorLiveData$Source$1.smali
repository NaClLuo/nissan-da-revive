.class Landroid/arch/lifecycle/MediatorLiveData$Source$1;
.super Ljava/lang/Object;
.source "MediatorLiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/lifecycle/MediatorLiveData$Source;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/MediatorLiveData$Source;

.field final synthetic val$observer:Landroid/arch/lifecycle/Observer;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/MediatorLiveData$Source;Landroid/arch/lifecycle/Observer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/lifecycle/MediatorLiveData$Source;

    .prologue
    .line 104
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData$Source$1;, "Landroid/arch/lifecycle/MediatorLiveData$Source$1;"
    iput-object p1, p0, Landroid/arch/lifecycle/MediatorLiveData$Source$1;->this$0:Landroid/arch/lifecycle/MediatorLiveData$Source;

    iput-object p2, p0, Landroid/arch/lifecycle/MediatorLiveData$Source$1;->val$observer:Landroid/arch/lifecycle/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Landroid/arch/lifecycle/MediatorLiveData$Source$1;, "Landroid/arch/lifecycle/MediatorLiveData$Source$1;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source$1;->this$0:Landroid/arch/lifecycle/MediatorLiveData$Source;

    iget v0, v0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    iget-object v1, p0, Landroid/arch/lifecycle/MediatorLiveData$Source$1;->this$0:Landroid/arch/lifecycle/MediatorLiveData$Source;

    iget-object v1, v1, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source$1;->this$0:Landroid/arch/lifecycle/MediatorLiveData$Source;

    iget-object v1, p0, Landroid/arch/lifecycle/MediatorLiveData$Source$1;->this$0:Landroid/arch/lifecycle/MediatorLiveData$Source;

    iget-object v1, v1, Landroid/arch/lifecycle/MediatorLiveData$Source;->mLiveData:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->getVersion()I

    move-result v1

    iput v1, v0, Landroid/arch/lifecycle/MediatorLiveData$Source;->mVersion:I

    .line 109
    iget-object v0, p0, Landroid/arch/lifecycle/MediatorLiveData$Source$1;->val$observer:Landroid/arch/lifecycle/Observer;

    invoke-interface {v0, p1}, Landroid/arch/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    .line 111
    :cond_0
    return-void
.end method
