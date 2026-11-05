.class Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "CityDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter",
        "<",
        "Lcom/autonavi/cvc/app/da/weather/model/CityModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;
    .param p2, "x0"    # Landroid/arch/persistence/room/RoomDatabase;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl$1;->this$0:Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/weather/model/CityModel;)V
    .locals 8
    .param p1, "stmt"    # Landroid/arch/persistence/db/SupportSQLiteStatement;
    .param p2, "value"    # Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 29
    const/4 v0, 0x1

    iget v1, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->uid:I

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 30
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 35
    :goto_0
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityCode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 36
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 40
    :goto_1
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->py:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 41
    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 45
    :goto_2
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->nameSort:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 46
    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 50
    :goto_3
    return-void

    .line 33
    :cond_0
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityName:Ljava/lang/String;

    invoke-interface {p1, v4, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->cityCode:Ljava/lang/String;

    invoke-interface {p1, v5, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 43
    :cond_2
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->py:Ljava/lang/String;

    invoke-interface {p1, v6, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2

    .line 48
    :cond_3
    iget-object v0, p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;->nameSort:Ljava/lang/String;

    invoke-interface {p1, v7, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p2, Lcom/autonavi/cvc/app/da/weather/model/CityModel;

    invoke-virtual {p0, p1, p2}, Lcom/autonavi/cvc/app/da/db/dao/CityDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Lcom/autonavi/cvc/app/da/weather/model/CityModel;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "INSERT OR ABORT INTO `city`(`uid`,`cityName`,`cityCode`,`py`,`nameSort`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
