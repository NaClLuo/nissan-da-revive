.class public Landroid/arch/lifecycle/state/SavedStateValue;
.super Landroid/arch/lifecycle/state/Saveable;
.source "SavedStateValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Landroid/arch/lifecycle/state/Saveable;"
    }
.end annotation


# instance fields
.field private mValue:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    .local p1, "mValue":Landroid/os/Parcelable;, "TT;"
    invoke-direct {p0}, Landroid/arch/lifecycle/state/Saveable;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/arch/lifecycle/state/SavedStateValue;->mValue:Landroid/os/Parcelable;

    .line 43
    return-void
.end method


# virtual methods
.method public get()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/state/SavedStateValue;->mValue:Landroid/os/Parcelable;

    return-object v0
.end method

.method saveTo(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    .local p0, "this":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    iget-object v0, p0, Landroid/arch/lifecycle/state/SavedStateValue;->mValue:Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    return-void
.end method

.method public set(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    .local p1, "t":Landroid/os/Parcelable;, "TT;"
    iput-object p1, p0, Landroid/arch/lifecycle/state/SavedStateValue;->mValue:Landroid/os/Parcelable;

    .line 52
    return-void
.end method
