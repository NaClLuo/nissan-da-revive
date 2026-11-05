.class public Landroid/arch/lifecycle/state/IntStateValue;
.super Landroid/arch/lifecycle/state/Saveable;
.source "IntStateValue.java"


# instance fields
.field private mValue:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/arch/lifecycle/state/Saveable;-><init>()V

    .line 39
    iput p1, p0, Landroid/arch/lifecycle/state/IntStateValue;->mValue:I

    .line 40
    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Landroid/arch/lifecycle/state/IntStateValue;->mValue:I

    return v0
.end method

.method saveTo(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    iget v0, p0, Landroid/arch/lifecycle/state/IntStateValue;->mValue:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public set(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 48
    iput p1, p0, Landroid/arch/lifecycle/state/IntStateValue;->mValue:I

    .line 49
    return-void
.end method
