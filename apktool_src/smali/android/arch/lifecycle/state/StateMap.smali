.class Landroid/arch/lifecycle/state/StateMap;
.super Ljava/lang/Object;
.source "StateMap.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StateProvider"


# instance fields
.field mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mSavedState:Landroid/os/Bundle;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/state/StateMap;->mMap:Ljava/util/Map;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    return-void
.end method

.method static typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "StateProvider"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v1, "StateProvider"

    const-string v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    return-void
.end method


# virtual methods
.method intValue(Ljava/lang/String;I)Landroid/arch/lifecycle/state/IntStateValue;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 35
    iget-object v5, p0, Landroid/arch/lifecycle/state/StateMap;->mMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    .local v3, "o":Ljava/lang/Object;
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/arch/lifecycle/state/IntStateValue;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v2, "intStateValue":Landroid/arch/lifecycle/state/IntStateValue;
    :goto_0
    if-nez v2, :cond_0

    .line 43
    iget-object v5, p0, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/arch/lifecycle/state/StateMap;->mSavedState:Landroid/os/Bundle;

    invoke-virtual {v5, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 45
    .local v4, "value":I
    :goto_1
    new-instance v2, Landroid/arch/lifecycle/state/IntStateValue;

    .end local v2    # "intStateValue":Landroid/arch/lifecycle/state/IntStateValue;
    invoke-direct {v2, v4}, Landroid/arch/lifecycle/state/IntStateValue;-><init>(I)V

    .line 46
    .restart local v2    # "intStateValue":Landroid/arch/lifecycle/state/IntStateValue;
    iget-object v5, p0, Landroid/arch/lifecycle/state/StateMap;->mMap:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .end local v4    # "value":I
    :cond_0
    return-object v2

    .line 38
    .end local v2    # "intStateValue":Landroid/arch/lifecycle/state/IntStateValue;
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/lang/ClassCastException;
    const-class v5, Landroid/arch/lifecycle/state/IntStateValue;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v3, v5, v1}, Landroid/arch/lifecycle/state/StateMap;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 40
    const/4 v2, 0x0

    .restart local v2    # "intStateValue":Landroid/arch/lifecycle/state/IntStateValue;
    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_1
    move v4, p2

    .line 43
    goto :goto_1
.end method
