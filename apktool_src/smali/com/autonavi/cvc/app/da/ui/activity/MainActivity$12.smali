.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickAscertain(Landroid/app/AlertDialog$Builder;ILjava/lang/Object;)V
    .locals 7
    .param p1, "adb"    # Landroid/app/AlertDialog$Builder;
    .param p2, "whichPopup"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 644
    sparse-switch p2, :sswitch_data_0

    .line 696
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object v2, p3

    .line 646
    check-cast v2, Ljava/io/File;

    .line 647
    .local v2, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v2, v4}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->installApk(Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .line 651
    .end local v2    # "file":Ljava/io/File;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 652
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "com.navinfo.panasonic.quitsmartphonestate"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v4, v3}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v4}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1200(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    goto :goto_0

    .line 659
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v4}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->finish()V

    goto :goto_0

    :sswitch_4
    move-object v2, p3

    .line 662
    check-cast v2, Ljava/io/File;

    .line 663
    .restart local v2    # "file":Ljava/io/File;
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v2, v4}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->installApk(Ljava/io/File;Landroid/content/Context;)V

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    :sswitch_5
    move-object v0, p3

    .line 667
    check-cast v0, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;

    .line 668
    .local v0, "app":Lcom/autonavi/cvc/app/da/interfaces/AppInfo;
    const-string v4, ""

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 669
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1300(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_0
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    const-string v5, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u540e\u91cd\u8bd5\uff01"

    invoke-static {v4, v5}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1100(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    .end local v0    # "app":Lcom/autonavi/cvc/app/da/interfaces/AppInfo;
    :sswitch_6
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1402(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Z)Z

    .line 678
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v4}, Lnmsed/bluetooth/BluetoothController;->startBluetoothSettings(Landroid/content/Context;)I

    goto :goto_0

    :sswitch_7
    move-object v0, p3

    .line 681
    check-cast v0, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;

    .line 682
    .restart local v0    # "app":Lcom/autonavi/cvc/app/da/interfaces/AppInfo;
    const-string v4, ""

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 683
    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "downPkgUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    sget-object v1, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DA_UPGRADE:Ljava/lang/String;

    .line 687
    :cond_1
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/interfaces/AppInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1300(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 689
    .end local v1    # "downPkgUrl":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    const-string v5, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u540e\u91cd\u8bd5\uff01"

    invoke-static {v4, v5}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1100(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 644
    nop

    :sswitch_data_0
    .sparse-switch
        0x6b -> :sswitch_6
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
        0xcc -> :sswitch_0
        0xce -> :sswitch_5
        0xcf -> :sswitch_7
        0xd0 -> :sswitch_3
        0xd1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onClickCancel(Landroid/app/AlertDialog$Builder;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog$Builder;
    .param p2, "whichPopup"    # I

    .prologue
    .line 617
    sparse-switch p2, :sswitch_data_0

    .line 639
    :goto_0
    :sswitch_0
    return-void

    .line 631
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.navinfo.panasonic.quitsmartphonestate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 634
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$12;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->access$1200(Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;)V

    goto :goto_0

    .line 617
    nop

    :sswitch_data_0
    .sparse-switch
        0x6b -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcc -> :sswitch_0
        0xce -> :sswitch_0
        0xcf -> :sswitch_1
        0xd1 -> :sswitch_0
    .end sparse-switch
.end method
