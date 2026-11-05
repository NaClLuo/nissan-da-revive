.class public Landroid/arch/persistence/room/util/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;,
        Landroid/arch/persistence/room/util/TableInfo$ForeignKey;,
        Landroid/arch/persistence/room/util/TableInfo$Column;
    }
.end annotation


# instance fields
.field public final columns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation
.end field

.field public final foreignKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    .local p3, "foreignKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    .line 62
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 63
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 64
    return-void
.end method

.method public static read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;
    .locals 3
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readColumns(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 76
    .local v0, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readForeignKeys(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 77
    .local v1, "foreignKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    invoke-direct {v2, p1, v0, v1}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V

    return-object v2
.end method

.method private static readColumns(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PRAGMA table_info(`"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "`)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 146
    invoke-interface {p0, v8}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 148
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "columns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/arch/persistence/room/util/TableInfo$Column;>;"
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 151
    const-string v8, "name"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 152
    .local v3, "nameIndex":I
    const-string v8, "type"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 153
    .local v7, "typeIndex":I
    const-string v8, "pk"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 155
    .local v4, "pkIndex":I
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "type":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 159
    .local v5, "primaryKeyPosition":I
    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    invoke-direct {v8, v2, v6, v5}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 163
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nameIndex":I
    .end local v4    # "pkIndex":I
    .end local v5    # "primaryKeyPosition":I
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "typeIndex":I
    :catchall_0
    move-exception v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v8

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 165
    return-object v0
.end method

.method private static readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;
    .locals 12
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    const-string v7, "id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 125
    .local v3, "idColumnIndex":I
    const-string v7, "seq"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 126
    .local v5, "seqColumnIndex":I
    const-string v7, "from"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 127
    .local v1, "fromColumnIndex":I
    const-string v7, "to"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 128
    .local v6, "toColumnIndex":I
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 129
    .local v0, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 131
    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 132
    new-instance v7, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .line 133
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 134
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 135
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 140
    return-object v4
.end method

.method private static readForeignKeys(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .locals 20
    .param p0, "database"    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v9, "foreignKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/arch/persistence/room/util/TableInfo$ForeignKey;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA foreign_key_list(`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 86
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 87
    .local v11, "idColumnIndex":I
    const-string v1, "seq"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 88
    .local v18, "seqColumnIndex":I
    const-string v1, "table"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 89
    .local v19, "tableColumnIndex":I
    const-string v1, "on_delete"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 90
    .local v13, "onDeleteColumnIndex":I
    const-string v1, "on_update"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 92
    .local v14, "onUpdateColumnIndex":I
    invoke-static {v8}, Landroid/arch/persistence/room/util/TableInfo;->readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v15

    .line 93
    .local v15, "ordered":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 94
    .local v7, "count":I
    const/16 v16, 0x0

    .local v16, "position":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v7, :cond_3

    .line 95
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 96
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 97
    .local v17, "seq":I
    if-eqz v17, :cond_0

    .line 94
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 100
    :cond_0
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 101
    .local v10, "id":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v5, "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v6, "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .line 104
    .local v12, "key":Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;
    iget v2, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    if-ne v2, v10, :cond_1

    .line 105
    iget-object v2, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mFrom:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v2, v12, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mTo:Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 118
    .end local v5    # "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "count":I
    .end local v10    # "id":I
    .end local v11    # "idColumnIndex":I
    .end local v12    # "key":Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;
    .end local v13    # "onDeleteColumnIndex":I
    .end local v14    # "onUpdateColumnIndex":I
    .end local v15    # "ordered":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    .end local v16    # "position":I
    .end local v17    # "seq":I
    .end local v18    # "seqColumnIndex":I
    .end local v19    # "tableColumnIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 109
    .restart local v5    # "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "count":I
    .restart local v10    # "id":I
    .restart local v11    # "idColumnIndex":I
    .restart local v13    # "onDeleteColumnIndex":I
    .restart local v14    # "onUpdateColumnIndex":I
    .restart local v15    # "ordered":Ljava/util/List;, "Ljava/util/List<Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;>;"
    .restart local v16    # "position":I
    .restart local v17    # "seq":I
    .restart local v18    # "seqColumnIndex":I
    .restart local v19    # "tableColumnIndex":I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;

    .line 110
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v1 .. v6}, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 109
    invoke-interface {v9, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 118
    .end local v5    # "myColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "refColumns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "id":I
    .end local v17    # "seq":I
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 120
    return-object v9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 170
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 178
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 173
    check-cast v0, Landroid/arch/persistence/room/util/TableInfo;

    .line 175
    .local v0, "tableInfo":Landroid/arch/persistence/room/util/TableInfo;
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    iget-object v3, v0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    iget-object v2, v0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 184
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 185
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
