.class public final Lct/bw;
.super Landroid/telephony/PhoneStateListener;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/bw$b;,
        Lct/bw$a;
    }
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lct/bk;

.field private c:Landroid/telephony/CellLocation;

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

    .line 40
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 31
    iput-object v0, p0, Lct/bw;->c:Landroid/telephony/CellLocation;

    .line 32
    iput-object v0, p0, Lct/bw;->d:Landroid/telephony/SignalStrength;

    .line 33
    iput-object v0, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

    .line 41
    iput-object p1, p0, Lct/bw;->b:Lct/bk;

    .line 42
    return-void
.end method

.method static synthetic a(Lct/bw;)Lct/bk;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lct/bw;->b:Lct/bk;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lct/bw;->b:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 102
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 104
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

.method static synthetic a(Lct/bw;Landroid/telephony/CellLocation;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lct/bw;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method private a(Landroid/telephony/CellLocation;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    if-nez p1, :cond_0

    move v1, v2

    .line 186
    :goto_0
    return v1

    .line 169
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v1, v0

    .line 170
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 171
    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 176
    :cond_1
    invoke-static {p1}, Lct/cz;->a(Landroid/telephony/CellLocation;)I

    move-result v1

    if-gez v1, :cond_2

    move v1, v2

    .line 177
    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lct/bw;->c:Landroid/telephony/CellLocation;

    invoke-static {v1, p1}, Lct/cz;->a(Landroid/telephony/CellLocation;Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    .line 180
    goto :goto_0

    .line 183
    :cond_3
    iget-object v1, p0, Lct/bw;->b:Lct/bk;

    const/4 v4, 0x0

    invoke-static {v1, p1, v4}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cj;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    move v1, v3

    .line 184
    goto :goto_0

    .line 183
    :cond_4
    invoke-static {v1}, Lct/cz;->a(Lct/cj;)Z

    move-result v1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 186
    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 215
    iget-boolean v0, p0, Lct/bw;->a:Z

    if-nez v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lct/bw;->c:Landroid/telephony/CellLocation;

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 226
    iget-wide v0, p0, Lct/bw;->f:J

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 227
    :goto_1
    if-eqz v0, :cond_0

    .line 228
    iput-wide v2, p0, Lct/bw;->f:J

    .line 229
    iget-object v0, p0, Lct/bw;->b:Lct/bk;

    iget-object v1, p0, Lct/bw;->c:Landroid/telephony/CellLocation;

    iget-object v2, p0, Lct/bw;->d:Landroid/telephony/SignalStrength;

    iget-object v3, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

    invoke-static {v0, v1, v2}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cj;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lct/bw;->h:Landroid/os/Handler;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    new-instance v1, Lct/bw$b;

    iget-object v2, p0, Lct/bw;->b:Lct/bk;

    invoke-direct {v1, v2}, Lct/bw$b;-><init>(Lct/bk;)V

    invoke-virtual {v1, v0}, Lct/bw$b;->a(Lct/cj;)V

    iget-object v0, p0, Lct/bw;->h:Landroid/os/Handler;

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

    .line 226
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 45
    iget-boolean v0, p0, Lct/bw;->a:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/bw;->a:Z

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CellProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lct/bw;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Lct/bw;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lct/bw$a;

    iget-object v1, p0, Lct/bw;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4}, Lct/bw$a;-><init>(Lct/bw;Landroid/os/Looper;B)V

    iput-object v0, p0, Lct/bw;->h:Landroid/os/Handler;

    iget-object v0, p0, Lct/bw;->h:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 54
    iget-object v0, p0, Lct/bw;->b:Lct/bk;

    invoke-static {v0}, Lct/cz;->b(Lct/bk;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 55
    invoke-direct {p0, v0}, Lct/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lct/bw;->b:Lct/bk;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lct/cj;->a(Lct/bk;Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;)Lct/cj;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    iput-object v0, p0, Lct/bw;->c:Landroid/telephony/CellLocation;

    .line 59
    iget-object v0, p0, Lct/bw;->b:Lct/bk;

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    .line 63
    :cond_1
    const/16 v0, 0x111

    invoke-direct {p0, v0}, Lct/bw;->a(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 70
    iget-boolean v0, p0, Lct/bw;->a:Z

    if-nez v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-boolean v1, p0, Lct/bw;->a:Z

    .line 75
    invoke-direct {p0, v1}, Lct/bw;->a(I)V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lct/bw;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lct/bw;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lct/bw;->h:Landroid/os/Handler;

    .line 81
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v0, p0, Lct/bw;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 83
    iput-object v2, p0, Lct/bw;->g:Landroid/os/HandlerThread;

    .line 84
    iput-object v2, p0, Lct/bw;->c:Landroid/telephony/CellLocation;

    iput-object v2, p0, Lct/bw;->d:Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/bw;->f:J

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 152
    invoke-direct {p0, p1}, Lct/bw;->a(Landroid/telephony/CellLocation;)Z

    move-result v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    iput-object p1, p0, Lct/bw;->c:Landroid/telephony/CellLocation;

    .line 157
    invoke-direct {p0}, Lct/bw;->c()V

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCellLocationChanged: illegal cell or same cell "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 122
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

    .line 127
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 128
    :cond_2
    iput-object p1, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

    .line 129
    iget-boolean v0, p0, Lct/bw;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lct/bw;->b:Lct/bk;

    invoke-virtual {v3}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lct/bw;->b:Lct/bk;

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

    iget-object v0, p0, Lct/bw;->b:Lct/bk;

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lct/bw;->e:Landroid/telephony/ServiceState;

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
    .line 135
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 136
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lct/bw;->d:Landroid/telephony/SignalStrength;

    .line 141
    iget-object v1, p0, Lct/bw;->b:Lct/bk;

    invoke-virtual {v1}, Lct/bk;->g()Lct/bl;

    move-result-object v1

    iget v1, v1, Lct/bl;->b:I

    .line 143
    if-eqz v0, :cond_2

    invoke-static {v1, v0, p1}, Lct/cz;->a(ILandroid/telephony/SignalStrength;Landroid/telephony/SignalStrength;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :cond_2
    iput-object p1, p0, Lct/bw;->d:Landroid/telephony/SignalStrength;

    .line 145
    invoke-direct {p0}, Lct/bw;->c()V

    goto :goto_0
.end method
