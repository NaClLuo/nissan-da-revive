.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
.super Ljava/lang/Object;
.source "LinkedAppBean.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;
.implements Lcom/autonavi/cvc/app/da/interfaces/AppInfo;


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    tableName = "apps_info"
.end annotation


# instance fields
.field private appIconID:I
    .annotation build Landroid/arch/persistence/room/Ignore;
    .end annotation
.end field

.field public appName:Ljava/lang/String;

.field public downloadId:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "download_id"
    .end annotation
.end field

.field public fileName:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "file_name"
    .end annotation
.end field

.field public iconFilePath:Ljava/lang/String;

.field private isInstalled:Z
    .annotation build Landroid/arch/persistence/room/Ignore;
    .end annotation
.end field

.field public pkg:Ljava/lang/String;

.field public uid:I
    .annotation build Landroid/arch/persistence/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field private webApp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->isInstalled:Z

    return-void
.end method


# virtual methods
.method public getAppIconID()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appIconID:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->iconFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->isInstalled:Z

    return v0
.end method

.method public isWebApp()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->webApp:Z

    return v0
.end method

.method public setAppIconID(I)V
    .locals 0
    .param p1, "appIconID"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appIconID:I

    .line 90
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->appName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->fileName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setIconFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconFilePath"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->iconFilePath:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0
    .param p1, "isInstalled"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->isInstalled:Z

    .line 50
    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->pkg:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->url:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->version:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setWebApp(Z)V
    .locals 0
    .param p1, "webApp"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->webApp:Z

    .line 102
    return-void
.end method
