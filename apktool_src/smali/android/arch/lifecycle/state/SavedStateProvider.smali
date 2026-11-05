.class public Landroid/arch/lifecycle/state/SavedStateProvider;
.super Ljava/lang/Object;
.source "SavedStateProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SavedStateProvider"


# instance fields
.field private mStateMap:Landroid/arch/lifecycle/state/StateMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/arch/lifecycle/state/StateMap;

    invoke-direct {v0}, Landroid/arch/lifecycle/state/StateMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    return-void
.end method


# virtual methods
.method public intStateValue(Ljava/lang/String;)Landroid/arch/lifecycle/state/IntStateValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/arch/lifecycle/state/StateMap;->intValue(Ljava/lang/String;I)Landroid/arch/lifecycle/state/IntStateValue;

    move-result-object v0

    return-object v0
.end method

.method public intStateValue(Ljava/lang/String;I)Landroid/arch/lifecycle/state/IntStateValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    invoke-virtual {v0, p1, p2}, Landroid/arch/lifecycle/state/StateMap;->intValue(Ljava/lang/String;I)Landroid/arch/lifecycle/state/IntStateValue;

    move-result-object v0

    return-object v0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iput-object p1, v0, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outBundle"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iget-object v2, v2, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iget-object v2, v2, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iget-object v1, v2, Landroid/arch/lifecycle/state/StateMap;->mMap:Ljava/util/Map;

    .line 142
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/state/Saveable;

    invoke-virtual {v2, p1, v0}, Landroid/arch/lifecycle/state/Saveable;->saveTo(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public stateValue(Ljava/lang/String;)Landroid/arch/lifecycle/state/SavedStateValue;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/arch/lifecycle/state/SavedStateValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v5, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iget-object v5, v5, Landroid/arch/lifecycle/state/StateMap;->mMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "o":Ljava/lang/Object;
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/arch/lifecycle/state/SavedStateValue;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v3, "stateValue":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    :goto_0
    if-nez v3, :cond_1

    .line 69
    const/4 v4, 0x0

    .line 70
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    iget-object v5, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iget-object v5, v5, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 71
    iget-object v5, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iget-object v5, v5, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 73
    :cond_0
    new-instance v3, Landroid/arch/lifecycle/state/SavedStateValue;

    .end local v3    # "stateValue":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    invoke-direct {v3, v4}, Landroid/arch/lifecycle/state/SavedStateValue;-><init>(Landroid/os/Parcelable;)V

    .line 74
    .restart local v3    # "stateValue":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    iget-object v5, p0, Landroid/arch/lifecycle/state/SavedStateProvider;->mStateMap:Landroid/arch/lifecycle/state/StateMap;

    iget-object v5, v5, Landroid/arch/lifecycle/state/StateMap;->mMap:Ljava/util/Map;

    invoke-interface {v5, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v4    # "value":Landroid/os/Parcelable;, "TT;"
    :cond_1
    return-object v3

    .line 63
    .end local v3    # "stateValue":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/ClassCastException;
    const-class v5, Landroid/arch/lifecycle/state/SavedStateValue;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v2, v5, v1}, Landroid/arch/lifecycle/state/StateMap;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 65
    const/4 v3, 0x0

    .restart local v3    # "stateValue":Landroid/arch/lifecycle/state/SavedStateValue;, "Landroid/arch/lifecycle/state/SavedStateValue<TT;>;"
    goto :goto_0
.end method
