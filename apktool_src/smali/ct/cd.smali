.class public final Lct/cd;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/cd$a;
    }
.end annotation


# instance fields
.field private final a:Lct/bk;

.field private b:Z

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:Lct/cd$a;


# direct methods
.method public constructor <init>(Lct/bk;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-object p1, p0, Lct/cd;->a:Lct/bk;

    .line 31
    return-void
.end method

.method static synthetic a(Lct/cd;)Lct/bk;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lct/cd;->a:Lct/bk;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 34
    iget-boolean v0, p0, Lct/cd;->b:Z

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iput-boolean v1, p0, Lct/cd;->b:Z

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lct/cd;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lct/cd$a;

    iget-object v2, p0, Lct/cd;->a:Lct/bk;

    iget-object v2, v2, Lct/bk;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lct/cd$a;-><init>(Lct/cd;Landroid/content/Context;)V

    iput-object v1, p0, Lct/cd;->d:Lct/cd$a;

    iget-object v1, p0, Lct/cd;->a:Lct/bk;

    iget-object v1, v1, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lct/cd;->b:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/cd;->b:Z

    .line 49
    :try_start_0
    iget-object v0, p0, Lct/cd;->a:Lct/bk;

    iget-object v0, v0, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    iget-object v0, p0, Lct/cd;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lct/cd;->d:Lct/cd$a;

    invoke-virtual {v0, p2}, Lct/cd$a;->a(Landroid/content/Intent;)V

    .line 107
    iget-object v0, p0, Lct/cd;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lct/cd;->d:Lct/cd$a;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method
