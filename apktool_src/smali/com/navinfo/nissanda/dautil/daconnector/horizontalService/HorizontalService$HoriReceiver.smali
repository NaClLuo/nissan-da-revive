.class public Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$HoriReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HorizontalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoriReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;


# direct methods
.method public constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$HoriReceiver;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.autonavi.horizontalStop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 49
    :cond_0
    return-void
.end method
