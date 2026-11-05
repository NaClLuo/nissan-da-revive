.class public Landroid/arch/core/internal/SafeIterableMap;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/core/internal/SafeIterableMap$Entry;,
        Landroid/arch/core/internal/SafeIterableMap$ListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final UNREACHABLE:Landroid/arch/core/internal/SafeIterableMap$Entry;


# instance fields
.field private mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mIterators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/arch/core/internal/SafeIterableMap$ListIterator",
            "<TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$Entry;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/arch/core/internal/SafeIterableMap;->UNREACHABLE:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    .line 231
    return-void
.end method

.method private find(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 50
    .local v0, "toRemove":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :cond_0
    return-object v0

    .line 54
    :cond_1
    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 193
    if-ne p1, p0, :cond_1

    move v6, v5

    .line 213
    :cond_0
    :goto_0
    return v6

    .line 196
    :cond_1
    instance-of v7, p1, Landroid/arch/core/internal/SafeIterableMap;

    if-eqz v7, :cond_0

    move-object v2, p1

    .line 199
    check-cast v2, Landroid/arch/core/internal/SafeIterableMap;

    .line 200
    .local v2, "map":Landroid/arch/core/internal/SafeIterableMap;
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v7

    invoke-virtual {v2}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    move-result-object v0

    .line 204
    .local v0, "iterator1":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    invoke-virtual {v2}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    move-result-object v1

    .line 205
    .local v1, "iterator2":Landroid/arch/core/internal/SafeIterableMap$ListIterator;
    :cond_2
    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 206
    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/util/Map$Entry;

    move-result-object v3

    .line 207
    .local v3, "next1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/util/Map$Entry;

    move-result-object v4

    .line 208
    .local v4, "next2":Ljava/util/Map$Entry;
    if-nez v3, :cond_3

    if-nez v4, :cond_0

    :cond_3
    if-eqz v3, :cond_2

    .line 209
    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 213
    .end local v3    # "next1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4    # "next2":Ljava/util/Map$Entry;
    :cond_4
    invoke-virtual {v0}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1
.end method

.method public iterator()Landroid/arch/core/internal/SafeIterableMap$ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/core/internal/SafeIterableMap$ListIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    .line 133
    .local v0, "iterator":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$ListIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/core/internal/SafeIterableMap$ListIterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    sget-object v2, Landroid/arch/core/internal/SafeIterableMap;->UNREACHABLE:Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    .line 143
    .local v0, "iterator":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/arch/core/internal/SafeIterableMap;->find(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    .line 70
    .local v0, "entry":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 71
    iget-object v2, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    .line 84
    :goto_0
    return-object v2

    .line 73
    :cond_0
    new-instance v1, Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v1, p1, p2}, Landroid/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .local v1, "newEntry":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    .line 75
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez v3, :cond_1

    .line 76
    iput-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 77
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0

    .line 81
    :cond_1
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v1, v3, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 82
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 83
    iput-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0, p1}, Landroid/arch/core/internal/SafeIterableMap;->find(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v1

    .line 96
    .local v1, "toRemove":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-object v2

    .line 99
    :cond_0
    iget v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    .line 100
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    .line 102
    .local v0, "iter":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    invoke-virtual {v0, v1}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->supportRemove(Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    goto :goto_1

    .line 106
    .end local v0    # "iter":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    :cond_1
    iget-object v3, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v4, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v4, v3, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 112
    :goto_2
    iget-object v3, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v3, :cond_3

    .line 113
    iget-object v3, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v4, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v4, v3, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 118
    :goto_3
    iput-object v2, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 119
    iput-object v2, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 120
    iget-object v2, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v3, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_2

    .line 115
    :cond_3
    iget-object v3, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    iget v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Landroid/arch/core/internal/SafeIterableMap$ListIterator;

    move-result-object v1

    .line 221
    .local v1, "iterator":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->next()Ljava/util/Map$Entry;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap$ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
