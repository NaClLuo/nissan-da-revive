.class public Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

.field mContext:Landroid/content/Context;

.field mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field mName:Ljava/lang/String;

.field mVersion:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x1

    iput v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mVersion:I

    .line 279
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Landroid/content/Context;

    .line 280
    return-void
.end method


# virtual methods
.method public build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
    .locals 6

    .prologue
    .line 263
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-nez v0, :cond_2

    .line 272
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 274
    :cond_2
    new-instance v0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    iget-object v1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mVersion:I

    iget-object v4, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    iget-object v5, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    invoke-direct/range {v0 .. v5}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V

    return-object v0
.end method

.method public callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "callback"    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mCallback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    .line 308
    return-object p0
.end method

.method public errorHandler(Landroid/database/DatabaseErrorHandler;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 289
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 290
    return-object p0
.end method

.method public name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 298
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mName:Ljava/lang/String;

    .line 299
    return-object p0
.end method

.method public version(I)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 321
    iput p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->mVersion:I

    .line 322
    return-object p0
.end method
