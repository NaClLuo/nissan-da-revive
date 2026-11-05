.class Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;
.super Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
.source "FrameworkSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;->createDelegate(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;

.field final synthetic val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;


# direct methods
.method constructor <init>(Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 6
    .param p1, "this$0"    # Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "version"    # I
    .param p6, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 40
    iput-object p1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->this$0:Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;

    iput-object p7, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 55
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 43
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    invoke-direct {v0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->mWrappedDb:Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    .line 44
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    iget-object v1, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->mWrappedDb:Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 45
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 59
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    .line 60
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 65
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 49
    iget-object v0, p0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->val$callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper$1;->getWrappedDb(Landroid/database/sqlite/SQLiteDatabase;)Landroid/arch/persistence/db/framework/FrameworkSQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    .line 50
    return-void
.end method
