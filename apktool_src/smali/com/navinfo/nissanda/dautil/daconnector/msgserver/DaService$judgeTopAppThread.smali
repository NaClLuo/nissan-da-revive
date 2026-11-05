.class public Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;
.super Ljava/lang/Thread;
.source "DaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "judgeTopAppThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;


# direct methods
.method public constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x13

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1249
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getTopApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1251
    .local v3, "currentApp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1254
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v7, v7, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1255
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iput-object v3, v7, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    .line 1256
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/16 v8, 0x1c

    iget-object v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v9}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v10, v10, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/navinfo/nissanda/dautil/DaUtil;->pkgName2Bytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 1257
    # DA-REVIVE PATCH: never treat the foreground app as illegal.
    const/4 v1, 0x0

    .line 1258
    .local v1, "appBreak":Z
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v8, v8, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1259
    const/4 v1, 0x0

    .line 1276
    :cond_1
    :goto_1
    if-eqz v1, :cond_5

    .line 1277
    sget v7, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 1278
    sget-boolean v7, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isCalling:Z

    if-nez v7, :cond_2

    .line 1279
    new-array v2, v12, [B

    .line 1280
    .local v2, "bs":[B
    aput-byte v12, v2, v11

    .line 1281
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v7, v13, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 1282
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->stopHorizontalService()V

    .line 1294
    .end local v1    # "appBreak":Z
    .end local v2    # "bs":[B
    :cond_2
    :goto_2
    const-wide/16 v8, 0x1f4

    :try_start_0
    invoke-static {v8, v9}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v4

    .line 1297
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v7, "DA"

    const-string v8, "DA TopThread start InterruptedException"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1261
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "appBreak":Z
    :cond_3
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getThirdPartApps()Ljava/util/List;

    move-result-object v6

    .line 1262
    .local v6, "thirdPartyApps":Ljava/util/List;, "Ljava/util/List<+Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;

    .line 1263
    .local v0, "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;
    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;->getPkg()Ljava/lang/String;

    move-result-object v5

    .line 1264
    .local v5, "element":Ljava/lang/String;
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v8, v8, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->topApp:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1271
    const/4 v1, 0x0

    .line 1272
    goto :goto_1

    .line 1287
    .end local v0    # "app":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "thirdPartyApps":Ljava/util/List;, "Ljava/util/List<+Lcom/autonavi/cvc/app/da/thirdpartyappmanager/thirdpartappinterface/IThirdPartyApp;>;"
    :cond_5
    new-array v2, v12, [B

    .line 1288
    .restart local v2    # "bs":[B
    aput-byte v11, v2, v11

    .line 1289
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$judgeTopAppThread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v7, v13, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    goto :goto_2
.end method
