.class public Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationContainer"
.end annotation


# instance fields
.field private mMigrations:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method private addMigration(Landroid/arch/persistence/room/migration/Migration;)V
    .locals 7
    .param p1, "migration"    # Landroid/arch/persistence/room/migration/Migration;

    .prologue
    .line 368
    iget v2, p1, Landroid/arch/persistence/room/migration/Migration;->startVersion:I

    .line 369
    .local v2, "start":I
    iget v0, p1, Landroid/arch/persistence/room/migration/Migration;->endVersion:I

    .line 370
    .local v0, "end":I
    iget-object v4, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/util/SparseArrayCompat;

    .line 371
    .local v3, "targetMap":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/arch/persistence/room/migration/Migration;>;"
    if-nez v3, :cond_0

    .line 372
    new-instance v3, Landroid/support/v4/util/SparseArrayCompat;

    .end local v3    # "targetMap":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/arch/persistence/room/migration/Migration;>;"
    invoke-direct {v3}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 373
    .restart local v3    # "targetMap":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/arch/persistence/room/migration/Migration;>;"
    iget-object v4, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 375
    :cond_0
    invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/migration/Migration;

    .line 376
    .local v1, "existing":Landroid/arch/persistence/room/migration/Migration;
    if-eqz v1, :cond_1

    .line 377
    const-string v4, "ROOM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Overriding migration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1
    invoke-virtual {v3, v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V

    .line 380
    return-void
.end method

.method private findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;
    .locals 10
    .param p2, "upgrade"    # Z
    .param p3, "start"    # I
    .param p4, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;ZII)",
            "Ljava/util/List",
            "<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/migration/Migration;>;"
    const/4 v8, 0x0

    .line 403
    if-eqz p2, :cond_2

    const/4 v4, -0x1

    .line 404
    .local v4, "searchDirection":I
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    if-ge p3, p4, :cond_1

    .line 405
    :goto_1
    iget-object v9, p0, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->mMigrations:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v9, p3}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/util/SparseArrayCompat;

    .line 406
    .local v6, "targetNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/arch/persistence/room/migration/Migration;>;"
    if-nez v6, :cond_4

    move-object p1, v8

    .line 435
    .end local v6    # "targetNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/arch/persistence/room/migration/Migration;>;"
    .end local p1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/migration/Migration;>;"
    :cond_1
    :goto_2
    return-object p1

    .line 403
    .end local v4    # "searchDirection":I
    .restart local p1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/migration/Migration;>;"
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 404
    .restart local v4    # "searchDirection":I
    :cond_3
    if-le p3, p4, :cond_1

    goto :goto_1

    .line 410
    .restart local v6    # "targetNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/arch/persistence/room/migration/Migration;>;"
    :cond_4
    invoke-virtual {v6}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v5

    .line 414
    .local v5, "size":I
    if-eqz p2, :cond_6

    .line 415
    add-int/lit8 v0, v5, -0x1

    .line 416
    .local v0, "firstIndex":I
    const/4 v3, -0x1

    .line 421
    .local v3, "lastIndex":I
    :goto_3
    const/4 v1, 0x0

    .line 422
    .local v1, "found":Z
    move v2, v0

    .local v2, "i":I
    :goto_4
    if-eq v2, v3, :cond_5

    .line 423
    invoke-virtual {v6, v2}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v7

    .line 424
    .local v7, "targetVersion":I
    if-gt v7, p4, :cond_7

    if-le v7, p3, :cond_7

    .line 425
    invoke-virtual {v6, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    move p3, v7

    .line 427
    const/4 v1, 0x1

    .line 431
    .end local v7    # "targetVersion":I
    :cond_5
    if-nez v1, :cond_0

    move-object p1, v8

    .line 432
    goto :goto_2

    .line 418
    .end local v0    # "firstIndex":I
    .end local v1    # "found":Z
    .end local v2    # "i":I
    .end local v3    # "lastIndex":I
    :cond_6
    const/4 v0, 0x0

    .line 419
    .restart local v0    # "firstIndex":I
    move v3, v5

    .restart local v3    # "lastIndex":I
    goto :goto_3

    .line 422
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v7    # "targetVersion":I
    :cond_7
    add-int/2addr v2, v4

    goto :goto_4
.end method


# virtual methods
.method public varargs addMigrations([Landroid/arch/persistence/room/migration/Migration;)V
    .locals 3
    .param p1, "migrations"    # [Landroid/arch/persistence/room/migration/Migration;

    .prologue
    .line 362
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 363
    .local v0, "migration":Landroid/arch/persistence/room/migration/Migration;
    invoke-direct {p0, v0}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->addMigration(Landroid/arch/persistence/room/migration/Migration;)V

    .line 362
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v0    # "migration":Landroid/arch/persistence/room/migration/Migration;
    :cond_0
    return-void
.end method

.method public findMigrationPath(II)Ljava/util/List;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/arch/persistence/room/migration/Migration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    if-ne p1, p2, :cond_0

    .line 394
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 398
    :goto_0
    return-object v2

    .line 396
    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 397
    .local v0, "migrateUp":Z
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/migration/Migration;>;"
    invoke-direct {p0, v1, v0, p1, p2}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 396
    .end local v0    # "migrateUp":Z
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/migration/Migration;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
