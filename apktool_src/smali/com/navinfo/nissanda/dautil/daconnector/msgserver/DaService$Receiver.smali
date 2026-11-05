.class public Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "DaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# static fields
.field private static final APP_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final BROADCAST_MES_NAVI_END:Ljava/lang/String; = "com.autonavi.cvc.hud.NaviEnd"

.field private static final BROADCAST_MES_NAVI_START:Ljava/lang/String; = "com.autonavi.cvc.hud.NaviStart"

.field private static final GPS:Ljava/lang/String; = "android.location.PROVIDERS_CHANGED"


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;


# direct methods
.method public constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1000
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1001
    const-string v23, "\u4e0b\u8f7d\u5b8c\u6210\uff01"

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 1002
    const-string v11, ""

    .line 1004
    .local v11, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const-string v24, "download"

    invoke-virtual/range {v23 .. v24}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/DownloadManager;

    .line 1006
    .local v9, "downloadManager":Landroid/app/DownloadManager;
    new-instance v19, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v19 .. v19}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 1008
    .local v19, "query":Landroid/app/DownloadManager$Query;
    const/16 v23, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 1010
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v8

    .line 1011
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1012
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1013
    const-string v23, "local_uri"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1017
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1023
    const-string v23, "/"

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    add-int/lit8 v4, v23, 0x1

    .line 1024
    .local v4, "a":I
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1025
    .local v10, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getInstance()Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->getThirdPartApps()Ljava/util/List;

    move-result-object v14

    .line 1026
    .local v14, "linkedAppBeen":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    .line 1027
    .local v6, "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    invoke-virtual {v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getFileName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1028
    const-string v23, "file://"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1029
    .local v5, "apkPath":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v23, "da_intent_download_install"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v12, "installIntent":Landroid/content/Intent;
    const-string v23, "apkpath"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1183
    .end local v4    # "a":I
    .end local v5    # "apkPath":Ljava/lang/String;
    .end local v6    # "appBean":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "downloadManager":Landroid/app/DownloadManager;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "installIntent":Landroid/content/Intent;
    .end local v14    # "linkedAppBeen":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .end local v19    # "query":Landroid/app/DownloadManager$Query;
    :cond_1
    :goto_0
    return-void

    .line 1036
    .restart local v4    # "a":I
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "downloadManager":Landroid/app/DownloadManager;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "filePath":Ljava/lang/String;
    .restart local v14    # "linkedAppBeen":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .restart local v19    # "query":Landroid/app/DownloadManager$Query;
    :cond_2
    const-string v23, "mobile_app.apk"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1037
    const-string v23, "file://"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1038
    .restart local v5    # "apkPath":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v23, "da_intent_download_install"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .restart local v12    # "installIntent":Landroid/content/Intent;
    const-string v23, "apkpath"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1044
    .end local v4    # "a":I
    .end local v5    # "apkPath":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "downloadManager":Landroid/app/DownloadManager;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "filePath":Ljava/lang/String;
    .end local v12    # "installIntent":Landroid/content/Intent;
    .end local v14    # "linkedAppBeen":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;>;"
    .end local v19    # "query":Landroid/app/DownloadManager$Query;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.location.PROVIDERS_CHANGED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1045
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 1046
    .local v7, "bs":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->gpsIsOPen(Landroid/content/Context;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 1047
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput-byte v24, v7, v23

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const/16 v24, 0x24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 1055
    .end local v7    # "bs":[B
    :cond_4
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1056
    const-string v23, "DA"

    const-string v24, "ACTION_PACKAGE_REMOVED"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v17

    .line 1058
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$000(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;ZZZ)V

    .line 1062
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.navinfo.panasonic.quitsmartphonestate"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1063
    const-string v23, "DA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "com.navinfo.panasonic.quitsmartphonestate"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget v25, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0xbb8

    const-wide/16 v26, 0xfa

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1066
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 1067
    .restart local v7    # "bs":[B
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput-byte v24, v7, v23

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->setDaState(I)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->stopHorizontalService()V

    .line 1080
    .end local v7    # "bs":[B
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.autonavi.cvc.hud.NaviStart"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1081
    const-string v23, "DA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "BROADCAST_MES_NAVI_START"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string v23, "package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.navinfo.vuinavigation"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1083
    sget v23, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0xbb9

    const-wide/16 v26, 0x258

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1088
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.autonavi.cvc.hud.NaviEnd"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1089
    const-string v23, "DA"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "BROADCAST_MES_NAVI_END"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v23, "package_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.navinfo.vuinavigation"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1091
    sget v23, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0xbb8

    const-wide/16 v26, 0xfa

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1097
    :cond_8
    const-string v23, "android.net.wifi.STATE_CHANGE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1098
    const-string v23, "networkInfo"

    .line 1099
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    .line 1100
    .local v18, "parcelableExtra":Landroid/os/Parcelable;
    if-eqz v18, :cond_9

    move-object/from16 v16, v18

    .line 1101
    check-cast v16, Landroid/net/NetworkInfo;

    .line 1102
    .local v16, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    .line 1103
    .local v20, "state":Landroid/net/NetworkInfo$State;
    sget-object v23, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_f

    const/4 v13, 0x1

    .line 1104
    .local v13, "isConnected":Z
    :goto_2
    if-eqz v13, :cond_9

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    .line 1129
    .end local v13    # "isConnected":Z
    .end local v16    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v18    # "parcelableExtra":Landroid/os/Parcelable;
    .end local v20    # "state":Landroid/net/NetworkInfo$State;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.SCREEN_ON"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1131
    sget v23, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    if-eqz v23, :cond_a

    .line 1132
    const-string v23, "DA"

    const-string v24, "\u5c4f\u5e55\u9501\u5b9a"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1134
    .local v21, "time":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lock:0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->log_file_name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1136
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 1137
    .local v15, "message":Landroid/os/Message;
    const/16 v23, 0x7d4

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x1f4

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1141
    .end local v15    # "message":Landroid/os/Message;
    .end local v21    # "time":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.SCREEN_OFF"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 1143
    sget v23, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    if-eqz v23, :cond_b

    .line 1144
    const-string v23, "DA"

    const-string v24, "\u5c4f\u5e55\u5173\u95ed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1146
    .restart local v21    # "time":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lock:0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->log_file_name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1148
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 1149
    .restart local v15    # "message":Landroid/os/Message;
    const/16 v23, 0x7d3

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x1f4

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1153
    .end local v15    # "message":Landroid/os/Message;
    .end local v21    # "time":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.USER_PRESENT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 1154
    sget v23, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->daState:I

    if-eqz v23, :cond_c

    .line 1155
    const-string v23, "DA"

    const-string v24, "\u5c4f\u5e55\u89e3\u9501"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1157
    .restart local v21    # "time":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lock:0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->log_file_name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1158
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 1159
    .restart local v15    # "message":Landroid/os/Message;
    const/16 v23, 0x7d2

    move/from16 v0, v23

    iput v0, v15, Landroid/os/Message;->what:I

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serverHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x5dc

    move-object/from16 v0, v23

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1163
    .end local v15    # "message":Landroid/os/Message;
    .end local v21    # "time":Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1164
    const-string v23, "plugged"

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1165
    .local v22, "usbState":I
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_d

    .line 1167
    :try_start_0
    sget-boolean v23, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->serSocketConnected:Z

    if-nez v23, :cond_d

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    .end local v22    # "usbState":I
    :cond_d
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1176
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 1177
    .restart local v7    # "bs":[B
    const/16 v23, 0x0

    const/16 v24, 0x0

    aput-byte v24, v7, v23

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const/16 v24, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v23 .. v26}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$000(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;ZZZ)V

    .line 1180
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")\r\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1181
    .restart local v21    # "time":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lock:1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->log_file_name:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1050
    .end local v21    # "time":Ljava/lang/String;
    :cond_e
    const/16 v23, 0x0

    const/16 v24, 0x1

    aput-byte v24, v7, v23

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$Receiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    move-object/from16 v23, v0

    const/16 v24, 0x24

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    goto/16 :goto_1

    .line 1103
    .end local v7    # "bs":[B
    .restart local v16    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v18    # "parcelableExtra":Landroid/os/Parcelable;
    .restart local v20    # "state":Landroid/net/NetworkInfo$State;
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1170
    .end local v16    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v18    # "parcelableExtra":Landroid/os/Parcelable;
    .end local v20    # "state":Landroid/net/NetworkInfo$State;
    .restart local v22    # "usbState":I
    :catch_0
    move-exception v23

    goto/16 :goto_3
.end method
