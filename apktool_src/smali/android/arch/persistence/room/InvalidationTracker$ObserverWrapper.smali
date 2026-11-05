.class Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObserverWrapper"
.end annotation


# instance fields
.field final mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field private final mSingleTableSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTableIds:[I

.field private final mTableNames:[Ljava/lang/String;

.field private final mVersions:[J


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V
    .locals 3
    .param p1, "observer"    # Landroid/arch/persistence/room/InvalidationTracker$Observer;
    .param p2, "tableIds"    # [I
    .param p3, "tableNames"    # [Ljava/lang/String;
    .param p4, "versions"    # [J

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 427
    iput-object p2, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    .line 428
    iput-object p3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    .line 429
    iput-object p4, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    .line 430
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 431
    new-instance v0, Landroid/support/v4/util/ArraySet;

    invoke-direct {v0}, Landroid/support/v4/util/ArraySet;-><init>()V

    .line 432
    .local v0, "set":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 437
    .end local v0    # "set":Landroid/support/v4/util/ArraySet;, "Landroid/support/v4/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 435
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    goto :goto_0
.end method


# virtual methods
.method checkForInvalidation([J)V
    .locals 9
    .param p1, "versions"    # [J

    .prologue
    .line 440
    const/4 v3, 0x0

    .line 441
    .local v3, "invalidatedTables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    array-length v6, v8

    .line 442
    .local v6, "size":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 443
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    aget v7, v8, v2

    .line 444
    .local v7, "tableId":I
    aget-wide v4, p1, v7

    .line 445
    .local v4, "newVersion":J
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aget-wide v0, v8, v2

    .line 446
    .local v0, "currentVersion":J
    cmp-long v8, v0, v4

    if-gez v8, :cond_0

    .line 447
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mVersions:[J

    aput-wide v4, v8, v2

    .line 448
    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 450
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mSingleTableSet:Ljava/util/Set;

    .line 442
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    :cond_1
    if-nez v3, :cond_2

    .line 453
    new-instance v3, Landroid/support/v4/util/ArraySet;

    .end local v3    # "invalidatedTables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v3, v6}, Landroid/support/v4/util/ArraySet;-><init>(I)V

    .line 455
    .restart local v3    # "invalidatedTables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableNames:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 459
    .end local v0    # "currentVersion":J
    .end local v4    # "newVersion":J
    .end local v7    # "tableId":I
    :cond_3
    if-eqz v3, :cond_4

    .line 460
    iget-object v8, p0, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {v8, v3}, Landroid/arch/persistence/room/InvalidationTracker$Observer;->onInvalidated(Ljava/util/Set;)V

    .line 462
    :cond_4
    return-void
.end method
