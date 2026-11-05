.class public Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;
.super Landroid/app/Service;
.source "HorizontalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;,
        Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$HoriReceiver;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_INTENT:Ljava/lang/String; = "com.autonavi.horizontalStop"


# instance fields
.field private receiver:Landroid/content/BroadcastReceiver;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$HoriReceiver;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$HoriReceiver;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->receiver:Landroid/content/BroadcastReceiver;

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->v:Landroid/view/View;

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.autonavi.horizontalStop"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->v:Landroid/view/View;

    .line 35
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->registerReceiver()V

    .line 36
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->registerReceiver()V

    .line 55
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 56
    .local v1, "mWindow":Landroid/view/WindowManager;
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;

    const-string v2, "orientation"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;I)V

    .line 58
    .local v0, "mLayout":Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;
    const-string v2, "orientation"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->v:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->v:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    const/4 v2, 0x2

    return v2

    .line 66
    :cond_1
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->v:Landroid/view/View;

    .line 67
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->v:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;->v:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 62
    :catch_0
    move-exception v2

    goto :goto_0
.end method
