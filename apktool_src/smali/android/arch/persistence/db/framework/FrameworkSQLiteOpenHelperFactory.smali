.class public Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelperFactory;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .locals 6
    .param p1, "configuration"    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    .prologue
    .line 29
    new-instance v0, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;

    iget-object v1, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    iget-object v2, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    iget v3, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->version:I

    iget-object v4, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->errorHandler:Landroid/database/DatabaseErrorHandler;

    iget-object v5, p1, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct/range {v0 .. v5}, Landroid/arch/persistence/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v0
.end method
