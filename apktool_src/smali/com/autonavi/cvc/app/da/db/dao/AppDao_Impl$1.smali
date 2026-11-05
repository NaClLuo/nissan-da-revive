.class Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "AppDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter",
        "<",
        "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;
    .param p2, "x0"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl$1;->this$0:Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V
    .locals 8
    .param p1, "stmt"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 29
    iget v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->uid:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 30
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 31
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 35
    :goto_0
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->pkg:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 36
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 41
    :goto_1
    invoke-virtual {p2}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->isWebApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    .local v0, "_tmp":I
    :goto_2
    const/4 v1, 0x4

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 43
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->iconFilePath:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 44
    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 48
    :goto_3
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->url:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 49
    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 53
    :goto_4
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->fileName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 54
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 58
    :goto_5
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->version:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 59
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 63
    :goto_6
    const/16 v1, 0x9

    iget-wide v2, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->downloadId:J

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 64
    return-void

    .line 33
    .end local v0    # "_tmp":I
    :cond_0
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appName:Ljava/lang/String;

    invoke-interface {p1, v4, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->pkg:Ljava/lang/String;

    invoke-interface {p1, v5, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 46
    .restart local v0    # "_tmp":I
    :cond_3
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->iconFilePath:Ljava/lang/String;

    invoke-interface {p1, v6, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 51
    :cond_4
    iget-object v1, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->url:Ljava/lang/String;

    invoke-interface {p1, v7, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 56
    :cond_5
    const/4 v1, 0x7

    iget-object v2, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->fileName:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_5

    .line 61
    :cond_6
    const/16 v1, 0x8

    iget-object v2, p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->version:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_6
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/cvc/app/da/db/dao/AppDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "INSERT OR REPLACE INTO `apps_info`(`uid`,`appName`,`pkg`,`webApp`,`iconFilePath`,`url`,`file_name`,`version`,`download_id`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?)"

    return-object v0
.end method
