.class public interface abstract Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;,
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;,
        Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDatabaseName()Ljava/lang/String;
.end method

.method public abstract getReadableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
.end method

.method public abstract getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;
.end method

.method public abstract setWriteAheadLoggingEnabled(Z)V
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation
.end method
