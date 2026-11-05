.class public Lcom/autonavi/cvc/app/da/db/MobileApp;
.super Ljava/lang/Object;
.source "MobileApp.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/interfaces/AppInfo;


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    tableName = "mobile_app"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public downloadId:J

.field public filename:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field public uid:I
    .annotation build Landroid/arch/persistence/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/MobileApp;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/MobileApp;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/MobileApp;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/db/MobileApp;->url:Ljava/lang/String;

    return-object v0
.end method
