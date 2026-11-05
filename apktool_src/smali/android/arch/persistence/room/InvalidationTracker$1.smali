.class Landroid/arch/persistence/room/InvalidationTracker$1;
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
    .line 274
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 277
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    :goto_1
    :try_start_0
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I

    move-result-object v3

    .line 291
    .local v3, "tablesToSync":[I
    if-eqz v3, :cond_0

    .line 294
    array-length v1, v3

    .line 295
    .local v1, "limit":I
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v5

    .line 296
    invoke-interface {v5}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 298
    .local v4, "writableDatabase":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :try_start_1
    invoke-interface {v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 299
    const/4 v2, 0x0

    .local v2, "tableId":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 300
    aget v5, v3, v2

    packed-switch v5, :pswitch_data_0

    .line 299
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 302
    :pswitch_0
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5, v4, v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$300(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 311
    .end local v2    # "tableId":I
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-interface {v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 315
    .end local v1    # "limit":I
    .end local v3    # "tablesToSync":[I
    .end local v4    # "writableDatabase":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_4
    const-string v5, "ROOM"

    const-string v6, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 305
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    .restart local v1    # "limit":I
    .restart local v2    # "tableId":I
    .restart local v3    # "tablesToSync":[I
    .restart local v4    # "writableDatabase":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :pswitch_1
    :try_start_3
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5, v4, v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$400(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V

    goto :goto_3

    .line 309
    :cond_2
    invoke-interface {v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    :try_start_4
    invoke-interface {v4}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 313
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5}, Landroid/arch/persistence/room/InvalidationTracker;->access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onSyncCompleted()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 315
    .end local v1    # "limit":I
    .end local v2    # "tableId":I
    .end local v3    # "tablesToSync":[I
    .end local v4    # "writableDatabase":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
