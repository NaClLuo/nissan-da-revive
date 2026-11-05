.class public Lcom/autonavi/cvc/app/da/source/HomeManager;
.super Ljava/lang/Object;
.source "HomeManager.java"


# static fields
.field private static homeManager:Lcom/autonavi/cvc/app/da/source/HomeManager;


# instance fields
.field public final PackageScheme:Ljava/lang/String;

.field private mAM:Landroid/app/ActivityManager;

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/autonavi/cvc/app/da/source/HomeManager;

    invoke-direct {v0}, Lcom/autonavi/cvc/app/da/source/HomeManager;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/source/HomeManager;->homeManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "package"

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->PackageScheme:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/autonavi/cvc/app/da/source/HomeManager;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/autonavi/cvc/app/da/source/HomeManager;->homeManager:Lcom/autonavi/cvc/app/da/source/HomeManager;

    return-object v0
.end method


# virtual methods
.method public chooseHome(Landroid/content/Context;)V
    .locals 3
    .param p1, "cont"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Home"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, "chooser":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public deleteHome(Lcom/autonavi/cvc/app/da/source/HomeInfo;)V
    .locals 2
    .param p1, "hInfo"    # Lcom/autonavi/cvc/app/da/source/HomeInfo;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mAM:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/autonavi/cvc/app/da/source/HomeInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mAM:Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Lcom/autonavi/cvc/app/da/source/HomeInfo;->calcHomeRunningInfo(Landroid/app/ActivityManager;)V

    .line 162
    return-void
.end method

.method public getHomeInfos()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/source/HomeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "homeList":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/source/HomeInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 48
    .local v1, "r":Landroid/content/pm/ResolveInfo;
    new-instance v4, Lcom/autonavi/cvc/app/da/source/HomeInfo;

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mAM:Landroid/app/ActivityManager;

    invoke-direct {v4, v1, v5, v6}, Lcom/autonavi/cvc/app/da/source/HomeInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v1    # "r":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->setHomeDefault(Ljava/util/List;)V

    .line 51
    return-object v0
.end method

.method public getHomeIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "homeIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    return-object v0
.end method

.method public getHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getHomeUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMockHomeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lcom/autonavi/cvc/app/da/MockHome;

    return-object v0
.end method

.method public init(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V
    .locals 0
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    .line 40
    iput-object p2, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mAM:Landroid/app/ActivityManager;

    .line 41
    return-void
.end method

.method public queryDefaultHome()Landroid/content/ComponentName;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v3, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "cnList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v0, v4}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 75
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 76
    .local v1, "dhIF":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 80
    .end local v1    # "dhIF":Landroid/content/IntentFilter;
    :cond_0
    return-object v4

    .line 74
    .restart local v1    # "dhIF":Landroid/content/IntentFilter;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public queryHome(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "hi":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeDefaultHome(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 6
    .param p1, "cont"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p2, "actClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 59
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getMockHomeClass()Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "mkClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v0, "mhCN":Landroid/content/ComponentName;
    const-string v2, "frank"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mkClz===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v5, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/source/HomeManager;->switchHome(Landroid/content/Context;)V

    .line 64
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 65
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

.method public seekDefaultHome(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/source/HomeInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "hInfos":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/source/HomeInfo;>;"
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->queryDefaultHome()Landroid/content/ComponentName;

    move-result-object v0

    .line 85
    .local v0, "dhCN":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/autonavi/cvc/app/da/source/HomeManager;->seekDefaultHome(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public seekDefaultHome(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/source/HomeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "hInfos":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/source/HomeInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/cvc/app/da/source/HomeInfo;

    invoke-virtual {v1, p2}, Lcom/autonavi/cvc/app/da/source/HomeInfo;->checkDefault(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 89
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setHomeDefault(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/source/HomeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "hInfos":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/source/HomeInfo;>;"
    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/source/HomeManager;->seekDefaultHome(Ljava/util/List;)I

    move-result v1

    .line 97
    .local v1, "pos":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/source/HomeInfo;

    .local v0, "hi":Lcom/autonavi/cvc/app/da/source/HomeInfo;
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->isDefault:Z

    goto :goto_0

    .line 99
    .end local v0    # "hi":Lcom/autonavi/cvc/app/da/source/HomeInfo;
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/cvc/app/da/source/HomeInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/autonavi/cvc/app/da/source/HomeInfo;->isDefault:Z

    .line 101
    :cond_1
    return-void
.end method

.method public startHomeInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "cont"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-virtual {p0, p2}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, "homeURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method

.method public switchHome(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-virtual {p0, p2}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 131
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 132
    return-void
.end method

.method public switchHome(Landroid/content/Context;)V
    .locals 2
    .param p1, "cont"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/source/HomeManager;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 127
    :cond_0
    return-void
.end method

.method public unInstallHome(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "cont"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-virtual {p0, p2}, Lcom/autonavi/cvc/app/da/source/HomeManager;->getHomeUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    .local v0, "homeURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method
