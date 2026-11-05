.class public final Lct/b;
.super Landroid/telephony/PhoneStateListener;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/b$c;,
        Lct/b$b;
    }
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lct/bk;

.field private c:Landroid/telephony/CellInfo;

.field private d:Landroid/telephony/SignalStrength;

.field private e:Landroid/telephony/ServiceState;

.field private f:J

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lct/bk;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 32
    iput-object v0, p0, Lct/b;->c:Landroid/telephony/CellInfo;

    .line 33
    iput-object v0, p0, Lct/b;->d:Landroid/telephony/SignalStrength;

    .line 34
    iput-object v0, p0, Lct/b;->e:Landroid/telephony/ServiceState;

    .line 42
    iput-object p1, p0, Lct/b;->b:Lct/bk;

    .line 43
    return-void
.end method

.method static synthetic a(Lct/b;)Lct/bk;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lct/b;->b:Lct/bk;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lct/b;->b:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 115
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "listenCellState: failed! flags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lct/b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lct/b;->onCellInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/telephony/CellInfo;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 194
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    invoke-static {p1}, Lct/cz;->a(Landroid/telephony/CellInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lct/b;->c:Landroid/telephony/CellInfo;

    invoke-static {v1, p1}, Lct/cz;->a(Landroid/telephony/CellInfo;Landroid/telephony/CellInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 217
    iget-boolean v0, p0, Lct/b;->a:Z

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lct/b;->c:Landroid/telephony/CellInfo;

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 228
    iget-wide v0, p0, Lct/b;->f:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 229
    :goto_1
    if-eqz v0, :cond_0

    .line 230
    iput-wide v2, p0, Lct/b;->f:J

    .line 231
    iget-object v0, p0, Lct/b;->b:Lct/bk;

    iget-object v1, p0, Lct/b;->c:Landroid/telephony/CellInfo;

    invoke-static {v0, v1}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellInfo;)Lct/cj;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lct/b;->h:Landroid/os/Handler;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v1, Lct/b$c;

    iget-object v2, p0, Lct/b;->b:Lct/bk;

    invoke-direct {v1, v2}, Lct/b$c;-><init>(Lct/bk;)V

    invoke-virtual {v1, v0}, Lct/b$c;->a(Lct/cj;)V

    iget-object v0, p0, Lct/b;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 228
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    iget-boolean v2, p0, Lct/b;->a:Z

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v2, p0, Lct/b;->b:Lct/bk;

    if-eqz v2, :cond_0

    .line 52
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "NewCellProvider"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lct/b;->g:Landroid/os/HandlerThread;

    iget-object v2, p0, Lct/b;->g:Landroid/os/HandlerThread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lct/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lct/b$b;

    iget-object v3, p0, Lct/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lct/b$b;-><init>(Lct/b;Landroid/os/Looper;B)V

    iput-object v2, p0, Lct/b;->h:Landroid/os/Handler;

    iget-object v2, p0, Lct/b;->h:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    iget-object v0, p0, Lct/b;->b:Lct/bk;

    invoke-static {v0}, Lct/cz;->a(Lct/bk;)Landroid/telephony/CellInfo;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lct/b;->a(Landroid/telephony/CellInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    iget-object v1, p0, Lct/b;->b:Lct/bk;

    invoke-static {v1, v0}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellInfo;)Lct/cj;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    iput-object v0, p0, Lct/b;->c:Landroid/telephony/CellInfo;

    .line 69
    :cond_2
    const/16 v0, 0x501

    invoke-direct {p0, v0}, Lct/b;->a(I)V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/b;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 52
    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 78
    iget-boolean v0, p0, Lct/b;->a:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 81
    :cond_0
    iput-boolean v1, p0, Lct/b;->a:Z

    .line 83
    invoke-direct {p0, v1}, Lct/b;->a(I)V

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lct/b;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lct/b;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lct/b;->h:Landroid/os/Handler;

    .line 89
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lct/b;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 91
    iput-object v2, p0, Lct/b;->g:Landroid/os/HandlerThread;

    .line 92
    iput-object v2, p0, Lct/b;->c:Landroid/telephony/CellInfo;

    iput-object v2, p0, Lct/b;->d:Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lct/b;->e:Landroid/telephony/ServiceState;

    .line 93
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/b;->f:J

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCellInfoChanged(Ljava/util/List;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    const/4 v1, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    invoke-direct {p0}, Lct/b;->c()V

    .line 190
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 175
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    move-object v1, v0

    .line 176
    goto :goto_1

    .line 179
    :cond_1
    if-nez v1, :cond_2

    move v4, v2

    :goto_3
    if-eqz p1, :cond_3

    move v0, v2

    :goto_4
    and-int/2addr v0, v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    :goto_5
    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    .line 180
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 181
    :goto_6
    invoke-direct {p0, v0}, Lct/b;->a(Landroid/telephony/CellInfo;)Z

    move-result v1

    .line 182
    if-eqz v1, :cond_5

    .line 183
    iput-object v0, p0, Lct/b;->c:Landroid/telephony/CellInfo;

    .line 184
    invoke-direct {p0}, Lct/b;->c()V

    goto :goto_0

    :cond_2
    move v4, v3

    .line 179
    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    move v2, v3

    goto :goto_5

    .line 186
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCellInfoChanged: illegal cell or same cell "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_6

    const-string v0, "null cell"

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_7
    move-object v0, v1

    goto :goto_6

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 135
    if-nez p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lct/b;->e:Landroid/telephony/ServiceState;

    .line 140
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 141
    :cond_2
    iput-object p1, p0, Lct/b;->e:Landroid/telephony/ServiceState;

    .line 142
    iget-boolean v0, p0, Lct/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/b;->e:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lct/b;->e:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lct/b;->b:Lct/bk;

    invoke-virtual {v3}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lct/b;->b:Lct/bk;

    iget-object v4, v4, Lct/bk;->a:Landroid/content/Context;

    invoke-static {v4}, Lct/cz;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_7

    :goto_2
    if-nez v4, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x32c7

    iput v2, v1, Landroid/os/Message;->what:I

    const/16 v2, 0x2ee3

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lct/b;->b:Lct/bk;

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lct/b;->e:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    const/4 v0, -0x1

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 149
    if-nez p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lct/b;->d:Landroid/telephony/SignalStrength;

    .line 154
    iget-object v1, p0, Lct/b;->b:Lct/bk;

    invoke-virtual {v1}, Lct/bk;->g()Lct/bl;

    move-result-object v1

    iget v1, v1, Lct/bl;->b:I

    .line 156
    if-eqz v0, :cond_2

    invoke-static {v1, v0, p1}, Lct/cz;->a(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :cond_2
    iput-object p1, p0, Lct/b;->d:Landroid/telephony/SignalStrength;

    .line 158
    invoke-direct {p0}, Lct/b;->c()V

    goto :goto_0
.end method
