.class Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "DaDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter",
        "<",
        "Lcom/autonavi/cvc/app/da/db/MobileApp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;
    .param p2, "x0"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl$1;->this$0:Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/db/MobileApp;)V
    .locals 9
    .param p1, "stmt"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/autonavi/cvc/app/da/db/MobileApp;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 27
    const/4 v0, 0x1

    iget v1, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->uid:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 28
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 29
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 33
    :goto_0
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->filename:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 34
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 38
    :goto_1
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->url:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 39
    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 43
    :goto_2
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->pkg:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 44
    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 48
    :goto_3
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->appName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 49
    invoke-interface {p1, v8}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 53
    :goto_4
    const/4 v0, 0x7

    iget-wide v2, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->downloadId:J

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 54
    return-void

    .line 31
    :cond_0
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->version:Ljava/lang/String;

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->filename:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_2
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->url:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2

    .line 46
    :cond_3
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->pkg:Ljava/lang/String;

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 51
    :cond_4
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/db/MobileApp;->appName:Ljava/lang/String;

    invoke-interface {p1, v8, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Lcom/autonavi/cvc/app/da/db/MobileApp;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/cvc/app/da/db/dao/DaDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/db/MobileApp;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string v0, "INSERT OR REPLACE INTO `mobile_app`(`uid`,`version`,`filename`,`url`,`pkg`,`appName`,`downloadId`) VALUES (nullif(?, 0),?,?,?,?,?,?)"

    return-object v0
.end method
