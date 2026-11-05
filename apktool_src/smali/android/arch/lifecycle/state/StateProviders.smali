.class public Landroid/arch/lifecycle/state/StateProviders;
.super Ljava/lang/Object;
.source "StateProviders.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static savedStateProvider(Landroid/arch/lifecycle/LifecycleOwner;)Landroid/arch/lifecycle/state/SavedStateProvider;
    .locals 3
    .param p0, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 44
    instance-of v0, p0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Landroid/support/v4/app/Fragment;

    .end local p0    # "owner":Landroid/arch/lifecycle/LifecycleOwner;
    invoke-static {p0}, Landroid/arch/lifecycle/state/StateProviders;->savedStateProvider(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/state/SavedStateProvider;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 47
    .restart local p0    # "owner":Landroid/arch/lifecycle/LifecycleOwner;
    :cond_0
    instance-of v0, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 48
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .end local p0    # "owner":Landroid/arch/lifecycle/LifecycleOwner;
    invoke-static {p0}, Landroid/arch/lifecycle/state/StateProviders;->savedStateProvider(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/state/SavedStateProvider;

    move-result-object v0

    goto :goto_0

    .line 51
    .restart local p0    # "owner":Landroid/arch/lifecycle/LifecycleOwner;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SavedStateProvider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not implemented yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static savedStateProvider(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/state/SavedStateProvider;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 63
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/HolderFragment;->getSavedStateProvider()Landroid/arch/lifecycle/state/SavedStateProvider;

    move-result-object v0

    return-object v0
.end method

.method public static savedStateProvider(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/state/SavedStateProvider;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Landroid/arch/lifecycle/HolderFragment;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/HolderFragment;->getSavedStateProvider()Landroid/arch/lifecycle/state/SavedStateProvider;

    move-result-object v0

    return-object v0
.end method
