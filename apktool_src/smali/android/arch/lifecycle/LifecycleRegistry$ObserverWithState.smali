.class Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObserverWithState"
.end annotation


# instance fields
.field private mCallback:Landroid/arch/lifecycle/GenericLifecycleObserver;

.field private mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

.field final synthetic this$0:Landroid/arch/lifecycle/LifecycleRegistry;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LifecycleRegistry;Landroid/arch/lifecycle/LifecycleObserver;)V
    .locals 1
    .param p1, "this$0"    # Landroid/arch/lifecycle/LifecycleRegistry;
    .param p2, "observer"    # Landroid/arch/lifecycle/LifecycleObserver;

    .prologue
    .line 197
    iput-object p1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->this$0:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 198
    invoke-static {p2}, Landroid/arch/lifecycle/Lifecycling;->getCallback(Ljava/lang/Object;)Landroid/arch/lifecycle/GenericLifecycleObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mCallback:Landroid/arch/lifecycle/GenericLifecycleObserver;

    .line 199
    return-void
.end method


# virtual methods
.method sync()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->this$0:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-static {v1}, Landroid/arch/lifecycle/LifecycleRegistry;->access$000(Landroid/arch/lifecycle/LifecycleRegistry;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$State;->INITIALIZED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    .line 203
    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    iput-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 205
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->this$0:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-static {v2}, Landroid/arch/lifecycle/LifecycleRegistry;->access$000(Landroid/arch/lifecycle/LifecycleRegistry;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 206
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->this$0:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-static {v2}, Landroid/arch/lifecycle/LifecycleRegistry;->access$000(Landroid/arch/lifecycle/LifecycleRegistry;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 207
    invoke-static {v1}, Landroid/arch/lifecycle/LifecycleRegistry;->downEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v0

    .line 208
    .local v0, "event":Landroid/arch/lifecycle/Lifecycle$Event;
    :goto_1
    invoke-static {v0}, Landroid/arch/lifecycle/LifecycleRegistry;->getStateAfter(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    .line 209
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mCallback:Landroid/arch/lifecycle/GenericLifecycleObserver;

    iget-object v2, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->this$0:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-static {v2}, Landroid/arch/lifecycle/LifecycleRegistry;->access$100(Landroid/arch/lifecycle/LifecycleRegistry;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/arch/lifecycle/GenericLifecycleObserver;->onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V

    goto :goto_0

    .line 207
    .end local v0    # "event":Landroid/arch/lifecycle/Lifecycle$Event;
    :cond_1
    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleRegistry$ObserverWithState;->mObserverCurrentState:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1}, Landroid/arch/lifecycle/LifecycleRegistry;->upEvent(Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$Event;

    move-result-object v0

    goto :goto_1

    .line 211
    :cond_2
    return-void
.end method
