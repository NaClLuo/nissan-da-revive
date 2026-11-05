.class public abstract Landroid/arch/persistence/room/EntityInsertionAdapter;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "EntityInsertionAdapter.java"


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
    .line 43
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    .line 44
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

.method public final insert(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v1

    .line 95
    .local v1, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 97
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 102
    return-void
.end method

.method public final insert(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 63
    .local v0, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 68
    return-void

    .line 66
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public final insert([Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v1

    .line 78
    .local v1, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 79
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 80
    invoke-interface {v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v2
.end method

.method public final insertAndReturnId(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 113
    .local v0, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 114
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 116
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-wide v2

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v1
.end method

.method public final insertAndReturnIdsArray(Ljava/util/Collection;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)[J"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    .line 129
    .local v3, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v2, v4, [J

    .line 130
    .local v2, "result":[J
    const/4 v1, 0x0

    .line 131
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 133
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    aput-wide v6, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    goto :goto_0

    .line 138
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v2

    .end local v1    # "index":I
    .end local v2    # "result":[J
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v4
.end method

.method public final insertAndReturnIdsArray([Ljava/lang/Object;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[J"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    .line 151
    .local v3, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    array-length v4, p1

    new-array v2, v4, [J

    .line 152
    .local v2, "result":[J
    const/4 v1, 0x0

    .line 153
    .local v1, "index":I
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p1, v4

    .line 154
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 155
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    aput-wide v6, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v2

    .end local v1    # "index":I
    .end local v2    # "result":[J
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v4
.end method

.method public final insertAndReturnIdsArrayBox(Ljava/util/Collection;)[Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    .line 173
    .local v3, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/Long;

    .line 174
    .local v2, "result":[Ljava/lang/Long;
    const/4 v1, 0x0

    .line 175
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 177
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    add-int/lit8 v1, v1, 0x1

    .line 179
    goto :goto_0

    .line 182
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v2

    .end local v1    # "index":I
    .end local v2    # "result":[Ljava/lang/Long;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v4
.end method

.method public final insertAndReturnIdsArrayBox([Ljava/lang/Object;)[Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    .line 195
    .local v3, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    array-length v4, p1

    new-array v2, v4, [Ljava/lang/Long;

    .line 196
    .local v2, "result":[Ljava/lang/Long;
    const/4 v1, 0x0

    .line 197
    .local v1, "index":I
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p1, v4

    .line 198
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 199
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 197
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v2

    .end local v1    # "index":I
    .end local v2    # "result":[Ljava/lang/Long;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v4
.end method

.method public final insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    .line 239
    .local v3, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 240
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 242
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 243
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    add-int/lit8 v1, v1, 0x1

    .line 245
    goto :goto_0

    .line 248
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v2

    .end local v1    # "index":I
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v4
.end method

.method public final insertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, "this":Landroid/arch/persistence/room/EntityInsertionAdapter;, "Landroid/arch/persistence/room/EntityInsertionAdapter<TT;>;"
    .local p1, "entities":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v3

    .line 217
    .local v3, "stmt":Landroid/arch/persistence/db/SupportSQLiteStatement;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 219
    .local v1, "index":I
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, p1, v4

    .line 220
    .local v0, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v3, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 221
    invoke-interface {v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    add-int/lit8 v1, v1, 0x1

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "entity":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v2

    .end local v1    # "index":I
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw v4
.end method
