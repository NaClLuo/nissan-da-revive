.class Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;
.super Ljava/lang/Object;
.source "TableInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/util/TableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForeignKeyWithSequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final mFrom:Ljava/lang/String;

.field final mId:I

.field final mSequence:I

.field final mTo:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "sequence"    # I
    .param p3, "from"    # Ljava/lang/String;
    .param p4, "to"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput p1, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    .line 357
    iput p2, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    .line 358
    iput-object p3, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mFrom:Ljava/lang/String;

    .line 359
    iput-object p4, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mTo:Ljava/lang/String;

    .line 360
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;)I
    .locals 3
    .param p1, "o"    # Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .prologue
    .line 364
    iget v1, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    iget v2, p1, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    sub-int v0, v1, v2

    .line 365
    .local v0, "idCmp":I
    if-nez v0, :cond_0

    .line 366
    iget v1, p0, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    iget v2, p1, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mSequence:I

    sub-int v0, v1, v2

    .line 368
    .end local v0    # "idCmp":I
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 348
    check-cast p1, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->compareTo(Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;)I

    move-result v0

    return v0
.end method
