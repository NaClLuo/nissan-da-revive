.class public Landroid/arch/core/executor/AppToolkitTaskExecutor;
.super Landroid/arch/core/executor/TaskExecutor;
.source "AppToolkitTaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;,
        .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static volatile sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;


# instance fields
.field private mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDelegate:Landroid/arch/core/executor/TaskExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/arch/core/executor/TaskExecutor;-><init>()V

    .line 40
    new-instance v0, Landroid/arch/core/executor/DefaultTaskExecutor;

    invoke-direct {v0}, Landroid/arch/core/executor/DefaultTaskExecutor;-><init>()V

    iput-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    .line 41
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    iput-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    .line 42
    return-void
.end method

.method public static getInstance()Landroid/arch/core/executor/AppToolkitTaskExecutor;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    .line 58
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const-class v1, Landroid/arch/core/executor/AppToolkitTaskExecutor;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;

    invoke-direct {v0}, Landroid/arch/core/executor/AppToolkitTaskExecutor;-><init>()V

    sput-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    .line 57
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->sInstance:Landroid/arch/core/executor/AppToolkitTaskExecutor;

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 77
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/TaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public isMainThread()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0}, Landroid/arch/core/executor/TaskExecutor;->isMainThread()Z

    move-result v0

    return v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 82
    iget-object v0, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    invoke-virtual {v0, p1}, Landroid/arch/core/executor/TaskExecutor;->postToMainThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public setDelegate(Landroid/arch/core/executor/TaskExecutor;)V
    .locals 0
    .param p1, "taskExecutor"    # Landroid/arch/core/executor/TaskExecutor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDefaultTaskExecutor:Landroid/arch/core/executor/TaskExecutor;

    .end local p1    # "taskExecutor":Landroid/arch/core/executor/TaskExecutor;
    :cond_0
    iput-object p1, p0, Landroid/arch/core/executor/AppToolkitTaskExecutor;->mDelegate:Landroid/arch/core/executor/TaskExecutor;

    .line 73
    return-void
.end method
