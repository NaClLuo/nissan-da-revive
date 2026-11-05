.class public Landroid/arch/lifecycle/HolderFragment;
.super Landroid/support/v4/app/Fragment;
.source "HolderFragment.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
    }
.end annotation


# static fields
.field public static final HOLDER_TAG:Ljava/lang/String; = "android.arch.lifecycle.state.StateProviderHolderFragment"
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ViewModelStores"

.field private static final sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;


# instance fields
.field private mSavedStateProvider:Landroid/arch/lifecycle/state/SavedStateProvider;

.field private mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-direct {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Landroid/arch/lifecycle/state/SavedStateProvider;

    invoke-direct {v0}, Landroid/arch/lifecycle/state/SavedStateProvider;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mSavedStateProvider:Landroid/arch/lifecycle/state/SavedStateProvider;

    .line 51
    new-instance v0, Landroid/arch/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/HolderFragment;->setRetainInstance(Z)V

    .line 55
    return-void
.end method

.method public static holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;
    .locals 1
    .param p0, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    return-object v0
.end method

.method public static holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSavedStateProvider()Landroid/arch/lifecycle/state/SavedStateProvider;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mSavedStateProvider:Landroid/arch/lifecycle/state/SavedStateProvider;

    return-object v0
.end method

.method public getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mSavedStateProvider:Landroid/arch/lifecycle/state/SavedStateProvider;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/state/SavedStateProvider;->restoreState(Landroid/os/Bundle;)V

    .line 61
    sget-object v0, Landroid/arch/lifecycle/HolderFragment;->sHolderFragmentManager:Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->holderFragmentCreated(Landroid/support/v4/app/Fragment;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 73
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ViewModelStore;->clear()V

    .line 74
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment;->mSavedStateProvider:Landroid/arch/lifecycle/state/SavedStateProvider;

    invoke-virtual {v0, p1}, Landroid/arch/lifecycle/state/SavedStateProvider;->saveState(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
