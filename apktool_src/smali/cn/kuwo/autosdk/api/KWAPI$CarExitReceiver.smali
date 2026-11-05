.class Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcn/kuwo/autosdk/api/KWAPI$CarExitReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "cn.kuwo.kwmusicauto.action.EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/autosdk/api/KWAPI;->access$4(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnExitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/kuwo/autosdk/api/KWAPI;->access$0()Lcn/kuwo/autosdk/api/KWAPI;

    move-result-object v0

    invoke-static {v0}, Lcn/kuwo/autosdk/api/KWAPI;->access$4(Lcn/kuwo/autosdk/api/KWAPI;)Lcn/kuwo/autosdk/api/OnExitListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/kuwo/autosdk/api/OnExitListener;->onExit()V

    goto :goto_0
.end method
