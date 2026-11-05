.class Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;
.super Landroid/arch/persistence/room/InvalidationTracker$Observer;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakObserver"
.end annotation


# instance fields
.field final mDelegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/arch/persistence/room/InvalidationTracker$Observer;",
            ">;"
        }
    .end annotation
.end field

.field final mTracker:Landroid/arch/persistence/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1, "tracker"    # Landroid/arch/persistence/room/InvalidationTracker;
    .param p2, "delegate"    # Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .prologue
    .line 624
    iget-object v0, p2, Landroid/arch/persistence/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/arch/persistence/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    .line 625
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mTracker:Landroid/arch/persistence/room/InvalidationTracker;

    .line 626
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    .line 627
    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 2
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p1, "tables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mDelegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 632
    .local v0, "observer":Landroid/arch/persistence/room/InvalidationTracker$Observer;
    if-nez v0, :cond_0

    .line 633
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;->mTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v1, p0}, Landroid/arch/persistence/room/InvalidationTracker;->removeObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    goto :goto_0
.end method
