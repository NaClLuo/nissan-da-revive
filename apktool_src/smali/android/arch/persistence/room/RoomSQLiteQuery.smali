.class public Landroid/arch/persistence/room/RoomSQLiteQuery;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteQuery;
.implements Landroid/arch/persistence/db/SupportSQLiteProgram;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BLOB:I = 0x5

.field static final DESIRED_POOL_SIZE:I = 0xa
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DOUBLE:I = 0x3

.field private static final LONG:I = 0x2

.field private static final NULL:I = 0x1

.field static final POOL_LIMIT:I = 0xf
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final STRING:I = 0x4

.field static final sQueryPool:Ljava/util/TreeMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/arch/persistence/room/RoomSQLiteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mArgCount:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mBindingTypes:[I

.field final mBlobBindings:[[B
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mCapacity:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mDoubleBindings:[D
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mLongBindings:[J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile mQuery:Ljava/lang/String;

.field final mStringBindings:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mCapacity:I

    .line 110
    add-int/lit8 v0, p1, 0x1

    .line 112
    .local v0, "limit":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    .line 113
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    .line 114
    new-array v1, v0, [D

    iput-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    .line 115
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    .line 116
    new-array v1, v0, [[B

    iput-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    .line 117
    return-void
.end method

.method public static acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;
    .locals 6
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "argumentCount"    # I

    .prologue
    .line 92
    sget-object v4, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    monitor-enter v4

    .line 93
    :try_start_0
    sget-object v3, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 95
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/arch/persistence/room/RoomSQLiteQuery;>;"
    if-eqz v0, :cond_0

    .line 96
    sget-object v3, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 98
    .local v2, "sqliteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    invoke-virtual {v2, p0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->init(Ljava/lang/String;I)V

    .line 99
    monitor-exit v4

    .line 104
    .end local v2    # "sqliteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :goto_0
    return-object v2

    .line 101
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    new-instance v1, Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {v1, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;-><init>(I)V

    .line 103
    .local v1, "sqLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    invoke-virtual {v1, p0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->init(Ljava/lang/String;I)V

    move-object v2, v1

    .line 104
    goto :goto_0

    .line 101
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/arch/persistence/room/RoomSQLiteQuery;>;"
    .end local v1    # "sqLiteQuery":Landroid/arch/persistence/room/RoomSQLiteQuery;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private static prunePoolLocked()V
    .locals 5

    .prologue
    .line 140
    sget-object v3, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_0

    .line 141
    sget-object v3, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0xa

    .line 142
    .local v1, "toBeRemoved":I
    sget-object v3, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move v2, v1

    .line 143
    .end local v1    # "toBeRemoved":I
    .local v2, "toBeRemoved":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "toBeRemoved":I
    .restart local v1    # "toBeRemoved":I
    if-lez v2, :cond_0

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v2, v1

    .end local v1    # "toBeRemoved":I
    .restart local v2    # "toBeRemoved":I
    goto :goto_0

    .line 148
    .end local v2    # "toBeRemoved":I
    .restart local v1    # "toBeRemoved":I
    :cond_0
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .prologue
    .line 203
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 204
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    aput-object p2, v0, p1

    .line 205
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 191
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 192
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    aput-wide p2, v0, p1

    .line 193
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 185
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 186
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    aput-wide p2, v0, p1

    .line 187
    return-void
.end method

.method public bindNull(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 180
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 181
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 198
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 199
    return-void
.end method

.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .locals 4
    .param p1, "program"    # Landroid/arch/persistence/db/SupportSQLiteProgram;

    .prologue
    .line 157
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_0
    iget v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mArgCount:I

    if-gt v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_0

    .line 157
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 163
    :pswitch_1
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_1

    .line 166
    :pswitch_2
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_1

    .line 169
    :pswitch_3
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 172
    :pswitch_4
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    aget-object v1, v1, v0

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto :goto_1

    .line 176
    :cond_0
    return-void

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clearBindings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 210
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    iput-object v2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/lang/String;I)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "argCount"    # I

    .prologue
    .line 121
    iput-object p1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    .line 122
    iput p2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mArgCount:I

    .line 123
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 133
    sget-object v1, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    iget v2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mCapacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Landroid/arch/persistence/room/RoomSQLiteQuery;->prunePoolLocked()V

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
