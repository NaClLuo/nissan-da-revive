.class public Lcom/autonavi/cvc/app/da/db/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# static fields
.field static daDatabase:Lcom/autonavi/cvc/app/da/db/DaDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/autonavi/cvc/app/da/db/DBHelper;->daDatabase:Lcom/autonavi/cvc/app/da/db/DaDatabase;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    const-class v0, Lcom/autonavi/cvc/app/da/db/DaDatabase;

    const-string v1, "daDatabase"

    invoke-static {p0, v0, v1}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/db/DaDatabase;

    sput-object v0, Lcom/autonavi/cvc/app/da/db/DBHelper;->daDatabase:Lcom/autonavi/cvc/app/da/db/DaDatabase;

    .line 13
    return-void
.end method
