.class public Landroid/arch/lifecycle/LifecycleActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "LifecycleActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleRegistryOwner;


# instance fields
.field private final mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleActivity;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public bridge synthetic getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/arch/lifecycle/LifecycleActivity;->getLifecycle()Landroid/arch/lifecycle/LifecycleRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/LifecycleRegistry;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleActivity;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method
