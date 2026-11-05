.class Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObservedTableTracker"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final NO_OP:I = 0x0

.field static final REMOVE:I = 0x2


# instance fields
.field mNeedsSync:Z

.field mPendingSync:Z

.field final mTableObservers:[J

.field final mTriggerStateChanges:[I

.field final mTriggerStates:[Z


# direct methods
.method constructor <init>(I)V
    .locals 4
    .param p1, "tableCount"    # I

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    .line 533
    new-array v0, p1, [Z

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    .line 534
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    .line 535
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    .line 536
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 537
    return-void
.end method


# virtual methods
.method getTablesToSync()[I
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 583
    monitor-enter p0

    .line 584
    :try_start_0
    iget-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    if-eqz v3, :cond_1

    .line 585
    :cond_0
    const/4 v3, 0x0

    monitor-exit p0

    .line 599
    :goto_0
    return-object v3

    .line 587
    :cond_1
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    array-length v2, v3

    .line 588
    .local v2, "tableCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 589
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v6, v3, v0

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    move v1, v4

    .line 590
    .local v1, "newState":Z
    :goto_2
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aget-boolean v3, v3, v0

    if-eq v1, v3, :cond_4

    .line 591
    iget-object v6, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    if-eqz v1, :cond_3

    move v3, v4

    :goto_3
    aput v3, v6, v0

    .line 595
    :goto_4
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStates:[Z

    aput-boolean v1, v3, v0

    .line 588
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "newState":Z
    :cond_2
    move v1, v5

    .line 589
    goto :goto_2

    .line 591
    .restart local v1    # "newState":Z
    :cond_3
    const/4 v3, 0x2

    goto :goto_3

    .line 593
    :cond_4
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    const/4 v6, 0x0

    aput v6, v3, v0

    goto :goto_4

    .line 600
    .end local v0    # "i":I
    .end local v1    # "newState":Z
    .end local v2    # "tableCount":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 597
    .restart local v0    # "i":I
    .restart local v2    # "tableCount":I
    :cond_5
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 598
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 599
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTriggerStateChanges:[I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method varargs onAdded([I)Z
    .locals 10
    .param p1, "tableIds"    # [I

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 544
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 545
    :try_start_0
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget v1, p1, v4

    .line 546
    .local v1, "tableId":I
    iget-object v6, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v2, v6, v1

    .line 547
    .local v2, "prevObserverCount":J
    iget-object v6, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v2

    aput-wide v8, v6, v1

    .line 548
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_0

    .line 549
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 550
    const/4 v0, 0x1

    .line 545
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "tableId":I
    .end local v2    # "prevObserverCount":J
    :cond_1
    monitor-exit p0

    .line 554
    return v0

    .line 553
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method varargs onRemoved([I)Z
    .locals 12
    .param p1, "tableIds"    # [I

    .prologue
    const-wide/16 v10, 0x1

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "needTriggerSync":Z
    monitor-enter p0

    .line 563
    :try_start_0
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget v1, p1, v4

    .line 564
    .local v1, "tableId":I
    iget-object v6, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    aget-wide v2, v6, v1

    .line 565
    .local v2, "prevObserverCount":J
    iget-object v6, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mTableObservers:[J

    sub-long v8, v2, v10

    aput-wide v8, v6, v1

    .line 566
    cmp-long v6, v2, v10

    if-nez v6, :cond_0

    .line 567
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mNeedsSync:Z

    .line 568
    const/4 v0, 0x1

    .line 563
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    .end local v1    # "tableId":I
    .end local v2    # "prevObserverCount":J
    :cond_1
    monitor-exit p0

    .line 572
    return v0

    .line 571
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method onSyncCompleted()V
    .locals 1

    .prologue
    .line 608
    monitor-enter p0

    .line 609
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->mPendingSync:Z

    .line 610
    monitor-exit p0

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
