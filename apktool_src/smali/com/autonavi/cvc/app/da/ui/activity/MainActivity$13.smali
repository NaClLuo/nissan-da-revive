.class Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


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
    .line 964
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 967
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 985
    :cond_1
    :goto_1
    return-void

    .line 967
    :sswitch_0
    const-string v2, "da_intent_download_install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.autonavi.umengCartype"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 969
    :pswitch_0
    const-string v0, "apkpath"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 970
    .local v9, "installFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 971
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    const-string v1, "\u63d0\u793a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5df2\u4e0b\u8f7d\u5b8c\u6210\uff0c\u662f\u5426\u5b89\u88c5\uff1f \u5b89\u88c5\u65f6\u4f1a\u65ad\u5f00\u4e0e\u8f66\u673a\u7684\u8fde\u643a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u786e\u5b9a"

    const-string v4, "\u53d6\u6d88"

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    iget-object v5, v5, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->dialogHandler:Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;

    const/16 v6, 0xd1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;

    goto :goto_1

    .line 976
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "installFilePath":Ljava/lang/String;
    :pswitch_1
    const-string v0, "carType"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 977
    .local v8, "carType":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 978
    const-string v0, "Stastic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-static {v0, v8}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity$13;->this$0:Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;

    invoke-virtual {v0, p2}, Lcom/autonavi/cvc/app/da/ui/activity/MainActivity;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 967
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e662a4c -> :sswitch_1
        -0x207e119b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
