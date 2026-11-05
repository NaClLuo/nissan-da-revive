.class public abstract Landroid/arch/persistence/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;,
        Landroid/arch/persistence/room/RoomDatabase$Builder;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"


# instance fields
.field private mAllowMainThreadQueries:Z

.field protected volatile mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

.field private final mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

.field private mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    .line 67
    return-void
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-static {}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->getInstance()Landroid/arch/core/executor/AppToolkitTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/core/executor/AppToolkitTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 186
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    .line 187
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 188
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->close()V

    .line 125
    :cond_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 178
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
.end method

.method protected abstract createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 195
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker;->refreshVersionsAsync()V

    .line 196
    return-void
.end method

.method public getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    return-object v0
.end method

.method public getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/arch/persistence/room/DatabaseConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Landroid/arch/persistence/room/DatabaseConfiguration;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomDatabase;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    .line 77
    iget-boolean v0, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mAllowMainThreadQueries:Z

    .line 78
    return-void
.end method

.method protected internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .prologue
    .line 213
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/InvalidationTracker;->internalInit(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 214
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 115
    .local v0, "db":Landroid/arch/persistence/db/SupportSQLiteDatabase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1
    .param p1, "query"    # Landroid/arch/persistence/db/SupportSQLiteQuery;

    .prologue
    .line 166
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 167
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 156
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 203
    return-void
.end method
