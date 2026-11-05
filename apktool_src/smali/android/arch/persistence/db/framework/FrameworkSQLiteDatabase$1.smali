.class Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;
.super Ljava/lang/Object;
.source "FrameworkSQLiteDatabase.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

.field final synthetic val$supportQuery:Landroid/arch/persistence/db/SupportSQLiteQuery;


# direct methods
.method constructor <init>(Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;Landroid/arch/persistence/db/SupportSQLiteQuery;)V
    .locals 0
    .param p1, "this$0"    # Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    .prologue
    .line 160
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;->this$0:Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    iput-object p2, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;->val$supportQuery:Landroid/arch/persistence/db/SupportSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "masterQuery"    # Landroid/database/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Landroid/database/sqlite/SQLiteQuery;

    .prologue
    .line 164
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase$1;->val$supportQuery:Landroid/arch/persistence/db/SupportSQLiteQuery;

    new-instance v1, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;

    invoke-direct {v1, p4}, Landroid/arch/persistence/db/framework/FrameworkSQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteQuery;->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V

    .line 165
    new-instance v0, Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    return-object v0
.end method
