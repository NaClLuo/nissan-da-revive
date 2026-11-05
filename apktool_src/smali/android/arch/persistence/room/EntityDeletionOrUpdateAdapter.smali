.class public abstract Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "EntityDeletionOrUpdateAdapter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/persistence/room/SharedSQLiteStatement;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0
    .param p1, "database"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 40
    .local p0, "this":Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;, "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<TT;>;"
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public final handle(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;, "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 68
    .local v0, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 69
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 71
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public final handleMultiple(Ljava/lang/Iterable;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;, "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v1

    .line 84
    .local v1, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    const/4 v2, 0x0

    .line 85
    .local v2, "total":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 87
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    add-int/2addr v2, v4

    .line 88
    goto :goto_0

    .line 91
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v2

    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v3
.end method

.method public final handleMultiple([Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;, "Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v1

    .line 104
    .local v1, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    const/4 v2, 0x0

    .line 105
    .local v2, "total":I
    :try_start_0
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 106
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 107
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-int/2addr v2, v5

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v2

    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v3
.end method
