.class Landroid/arch/persistence/room/InvalidationTracker$2;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/persistence/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/persistence/room/InvalidationTracker;

    .prologue
    .line 339
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 342
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v5, v5, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 346
    invoke-virtual {v5, v9, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    const/4 v3, 0x0

    .line 352
    .local v3, "hasUpdatedTable":Z
    :try_start_0
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$500(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v5

    invoke-interface {v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 353
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$600(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v9}, Landroid/arch/persistence/room/InvalidationTracker;->access$700(Landroid/arch/persistence/room/InvalidationTracker;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    .line 354
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    const-string v8, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v9, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v9}, Landroid/arch/persistence/room/InvalidationTracker;->access$600(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/arch/persistence/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 357
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 358
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 359
    .local v6, "version":J
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 361
    .local v4, "tableId":I
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v5, v5, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    aput-wide v6, v5, v4

    .line 362
    const/4 v3, 0x1

    .line 364
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5, v6, v7}, Landroid/arch/persistence/room/InvalidationTracker;->access$702(Landroid/arch/persistence/room/InvalidationTracker;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 367
    .end local v4    # "tableId":I
    .end local v6    # "version":J
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 369
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v2

    .line 371
    .local v2, "exception":Ljava/lang/RuntimeException;
    :goto_2
    const-string v5, "ROOM"

    const-string v8, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v5, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    .end local v2    # "exception":Ljava/lang/RuntimeException;
    :goto_3
    if-eqz v3, :cond_0

    .line 375
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v8, v5, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v8

    .line 376
    :try_start_3
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v5, v5, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v5}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 377
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/persistence/room/InvalidationTracker$Observer;Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    iget-object v10, p0, Landroid/arch/persistence/room/InvalidationTracker$2;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v10, v10, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    invoke-virtual {v5, v10}, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->checkForInvalidation([J)V

    goto :goto_4

    .line 379
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/arch/persistence/room/InvalidationTracker$Observer;Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;>;"
    :catchall_1
    move-exception v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 367
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 369
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v2

    goto :goto_2

    .line 379
    :cond_3
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_0
.end method
