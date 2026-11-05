.class public Landroid/arch/persistence/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "primaryKeyPosition"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 230
    iput p3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 231
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 247
    :cond_0
    :goto_0
    return v2

    .line 236
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 238
    check-cast v0, Landroid/arch/persistence/room/util/TableInfo$Column;

    .line 239
    .local v0, "column":Landroid/arch/persistence/room/util/TableInfo$Column;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_4

    .line 240
    iget v3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    iget v4, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-ne v3, v4, :cond_0

    .line 246
    :cond_2
    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iget-object v4, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    iget-object v3, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    iget-object v2, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    :goto_1
    move v2, v1

    goto :goto_0

    .line 242
    :cond_4
    invoke-virtual {p0}, Landroid/arch/persistence/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v3

    invoke-virtual {v0}, Landroid/arch/persistence/room/util/TableInfo$Column;->isPrimaryKey()Z

    move-result v4

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 247
    :cond_5
    iget-object v3, v0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 262
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 263
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    add-int v0, v1, v2

    .line 264
    return v0

    .line 262
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Column{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/arch/persistence/room/util/TableInfo$Column;->primaryKeyPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
