.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/AppInstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->deleteApkFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getThirdPartApps()Ljava/util/List;

    move-result-object v1

    .line 20
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 24
    .local v0, "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setInstalled(Z)V

    .line 27
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->notifyChanges()V

    goto :goto_0

    .line 32
    .end local v0    # "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 34
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getThirdPartApps()Ljava/util/List;

    move-result-object v1

    .line 35
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    if-eqz v1, :cond_3

    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 39
    .restart local v0    # "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setInstalled(Z)V

    .line 42
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->notifyChanges()V

    goto :goto_1

    .line 47
    .end local v0    # "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_3
    return-void
.end method
