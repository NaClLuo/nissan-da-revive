.class public Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    }
.end annotation


# instance fields
.field public final callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final context:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final errorHandler:Landroid/database/DatabaseErrorHandler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final version:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "version"    # I
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "callback"    # Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->context:Landroid/content/Context;

    .line 237
    iput-object p2, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->name:Ljava/lang/String;

    .line 238
    iput p3, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->version:I

    .line 239
    iput-object p5, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->callback:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;

    .line 240
    iput-object p4, p0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->errorHandler:Landroid/database/DatabaseErrorHandler;

    .line 241
    return-void
.end method

.method public static builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    new-instance v0, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    invoke-direct {v0, p0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
