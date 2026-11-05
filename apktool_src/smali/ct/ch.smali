.class final Lct/ch;
.super Landroid/content/BroadcastReceiver;
.source "TL"


# static fields
.field private static f:Landroid/os/Handler;

.field private static final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Z

.field private final b:Lct/bk;

.field private final c:Landroid/net/wifi/WifiManager;

.field private d:J

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 258
    new-instance v0, Lct/ch$2;

    invoke-direct {v0}, Lct/ch$2;-><init>()V

    sput-object v0, Lct/ch;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lct/bk;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lct/ch;->i:Ljava/lang/Object;

    .line 65
    iput-object p1, p0, Lct/ch;->b:Lct/bk;

    .line 66
    invoke-virtual {p1}, Lct/bk;->b()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lct/ch;->c:Landroid/net/wifi/WifiManager;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    .line 69
    new-instance v0, Lct/ch$1;

    invoke-direct {v0, p0}, Lct/ch$1;-><init>(Lct/ch;)V

    iput-object v0, p0, Lct/ch;->h:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 266
    :cond_0
    invoke-direct {p0}, Lct/ch;->e()V

    .line 273
    :cond_1
    :goto_0
    new-instance v0, Lct/cn;

    iget-wide v2, p0, Lct/ch;->d:J

    iget-object v1, p0, Lct/ch;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    invoke-direct {v0, p1, v2, v3}, Lct/cn;-><init>(Ljava/util/List;J)V

    .line 275
    iget-object v1, p0, Lct/ch;->b:Lct/bk;

    invoke-virtual {v1, v0}, Lct/bk;->c(Ljava/lang/Object;)V

    .line 276
    return-void

    .line 268
    :cond_2
    sget-boolean v0, Lct/dj;->a:Z

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x0

    sput-boolean v0, Lct/dj;->a:Z

    .line 270
    invoke-direct {p0}, Lct/ch;->e()V

    goto :goto_0
.end method

.method static synthetic a(Lct/ch;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lct/ch;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lct/ch;)Lct/bk;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lct/ch;->b:Lct/bk;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lct/ch;->b:Lct/bk;

    invoke-static {v0}, Lct/dj;->b(Lct/bk;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    .line 212
    :cond_0
    iget-object v0, p0, Lct/ch;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lct/dj;->a(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    .line 217
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    .line 221
    :cond_0
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 222
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 223
    iget-object v2, p0, Lct/ch;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/ch;->d:J

    .line 226
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lct/ch;->a(Ljava/util/List;)V

    .line 252
    :cond_2
    :goto_1
    return-void

    .line 229
    :cond_3
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 230
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 231
    if-eq v1, v0, :cond_5

    .line 232
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 233
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 234
    iget-object v2, p0, Lct/ch;->e:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 236
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/ch;->d:J

    .line 237
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lct/ch;->a(Ljava/util/List;)V

    goto :goto_1

    .line 240
    :cond_5
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 241
    iget-object v3, p0, Lct/ch;->e:Ljava/util/HashSet;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 243
    :cond_6
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 244
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 245
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 246
    iget-object v2, p0, Lct/ch;->e:Ljava/util/HashSet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 248
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/ch;->d:J

    .line 249
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-direct {p0, v0}, Lct/ch;->a(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 279
    iget-object v1, p0, Lct/ch;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 283
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 284
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lct/ch;->a(J)V

    .line 296
    :goto_0
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lct/ch;->b:Lct/bk;

    invoke-virtual {v1}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lct/ch;->b:Lct/bk;

    invoke-virtual {v1}, Lct/bk;->c()Landroid/location/LocationManager;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 299
    const/4 v0, 0x5

    .line 303
    :cond_0
    :goto_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 304
    const/16 v2, 0x32c7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 305
    const/16 v2, 0x2ee1

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 306
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 307
    iget-object v0, p0, Lct/ch;->b:Lct/bk;

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    .line 308
    return-void

    .line 286
    :cond_1
    if-ne v1, v0, :cond_3

    .line 287
    const/4 v0, 0x0

    .line 289
    iget-object v1, p0, Lct/ch;->g:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 291
    :cond_2
    iget-object v1, p0, Lct/ch;->b:Lct/bk;

    sget-object v2, Lct/cn;->a:Lct/cn;

    invoke-virtual {v1, v2}, Lct/bk;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lct/ch;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lct/ch;->a:Z

    if-nez v0, :cond_0

    .line 97
    monitor-exit v1

    .line 116
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/ch;->a:Z

    .line 100
    sget-object v0, Lct/ch;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    iget-object v0, p0, Lct/ch;->b:Lct/bk;

    iget-object v0, v0, Lct/bk;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_1
    const-wide/16 v2, 0x0

    :try_start_2
    iput-wide v2, p0, Lct/ch;->d:J

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    .line 111
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    :cond_1
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lct/ch;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 116
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanInterval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    sget-object v0, Lct/ch;->f:Landroid/os/Handler;

    .line 198
    iget-object v1, p0, Lct/ch;->h:Ljava/lang/Runnable;

    .line 200
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 202
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 80
    iget-boolean v0, p0, Lct/ch;->a:Z

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ch;->a:Z

    .line 85
    sput-object p1, Lct/ch;->f:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lct/ch;->b:Lct/bk;

    iget-object v1, v1, Lct/bk;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lct/ch;->a(J)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lct/ch;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 134
    if-nez p2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 138
    :cond_0
    :try_start_0
    iget-object v1, p0, Lct/ch;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-direct {p0}, Lct/ch;->e()V

    .line 146
    :cond_1
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    :cond_2
    iget-object v0, p0, Lct/ch;->c:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Lct/dj;->b(Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lct/ch;->g:Ljava/util/List;

    .line 152
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-static {v0}, Lct/ci;->a(Ljava/util/List;)V

    .line 154
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 155
    iget-object v0, p0, Lct/ch;->g:Ljava/util/List;

    sget-object v2, Lct/ch;->j:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    invoke-direct {p0}, Lct/ch;->d()V

    .line 161
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 164
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    goto :goto_0
.end method
