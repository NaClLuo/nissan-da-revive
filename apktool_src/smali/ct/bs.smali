.class public final Lct/bs;
.super Landroid/content/BroadcastReceiver;
.source "TL"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;
.implements Lcom/tencent/map/geolocation/TencentLocationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/bs$c;,
        Lct/bs$a;,
        Lct/bs$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lct/cb;

.field private final c:Landroid/os/PowerManager$WakeLock;

.field private final d:Landroid/os/PowerManager$WakeLock;

.field private final e:Lct/bs$a;

.field private final f:Lct/bs$c;

.field private g:Lct/bs$b;

.field private h:Z

.field private i:Landroid/app/PendingIntent;

.field private final j:Lcom/tencent/map/geolocation/TencentLocationRequest;

.field private k:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lct/bs;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 159
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 85
    new-instance v0, Lct/bs$b;

    invoke-direct {v0}, Lct/bs$b;-><init>()V

    iput-object v0, p0, Lct/bs;->g:Lct/bs$b;

    .line 161
    iput-boolean v4, p0, Lct/bs;->h:Z

    .line 162
    invoke-static {}, Lcom/tencent/map/geolocation/TencentLocationRequest;->create()Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setRequestLevel(I)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setInterval(J)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/map/geolocation/TencentLocationRequest;->setAllowCache(Z)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    iput-object v0, p0, Lct/bs;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    .line 668
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lct/bs;->k:D

    .line 137
    iput-object p1, p0, Lct/bs;->a:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Lct/bk;->a(Landroid/content/Context;)Lct/bk;

    move-result-object v0

    .line 139
    new-instance v1, Lct/cb;

    invoke-direct {v1, v0}, Lct/cb;-><init>(Lct/bk;)V

    iput-object v1, p0, Lct/bs;->b:Lct/cb;

    .line 144
    iget-object v0, p0, Lct/bs;->a:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 146
    const-string v1, "GeofenceManager"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lct/bs;->c:Landroid/os/PowerManager$WakeLock;

    .line 148
    const-string v1, "tencent_location"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lct/bs;->d:Landroid/os/PowerManager$WakeLock;

    .line 150
    iget-object v0, p0, Lct/bs;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 152
    new-instance v0, Lct/bs$a;

    invoke-direct {v0, p0, p2}, Lct/bs$a;-><init>(Lct/bs;Landroid/os/Looper;)V

    iput-object v0, p0, Lct/bs;->e:Lct/bs$a;

    .line 153
    new-instance v0, Lct/bs$c;

    invoke-direct {v0, v4}, Lct/bs$c;-><init>(B)V

    iput-object v0, p0, Lct/bs;->f:Lct/bs$c;

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.tencent.map.geolocation.wakeup"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lct/bs;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lct/bs;->e:Lct/bs$a;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 155
    return-void
.end method

.method private a(J)Landroid/app/PendingIntent;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x2

    .line 728
    iget-object v0, p0, Lct/bs;->a:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 730
    if-nez v0, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-object v6

    .line 733
    :cond_1
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 735
    if-eqz v2, :cond_4

    .line 736
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "xiaomi"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    move v7, v2

    .line 739
    :goto_1
    iget-object v2, p0, Lct/bs;->i:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 740
    iget-object v2, p0, Lct/bs;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 741
    iput-object v6, p0, Lct/bs;->i:Landroid/app/PendingIntent;

    .line 742
    if-eqz v7, :cond_2

    .line 743
    iget-object v2, p0, Lct/bs;->e:Lct/bs$a;

    invoke-virtual {v2, v1}, Lct/bs$a;->removeMessages(I)V

    .line 746
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    .line 747
    iget-object v2, p0, Lct/bs;->a:Landroid/content/Context;

    invoke-static {}, Lct/bs;->k()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x8000000

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lct/bs;->i:Landroid/app/PendingIntent;

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    move-wide v4, p1

    .line 749
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 751
    if-eqz v7, :cond_3

    .line 753
    iget-object v0, p0, Lct/bs;->e:Lct/bs$a;

    const-wide/16 v2, 0x2710

    add-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lct/bs$a;->sendEmptyMessageDelayed(IJ)Z

    .line 756
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setLocationAlarm: will triggered after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms, isXiaomi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v7, v3

    goto :goto_1
.end method

.method private a(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 704
    iget-object v0, p0, Lct/bs;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 706
    :try_start_0
    iget-object v1, p0, Lct/bs;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeFence: fence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v0, v0, Lct/bs$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/br;

    iget-object v0, v0, Lct/br;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lct/bs;->i()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 710
    iget-object v0, p0, Lct/bs;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method static synthetic a(Lct/bs;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lct/bs;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 24

    .prologue
    .line 537
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 538
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lct/bs;->g:Lct/bs$b;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 541
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lct/bs$b;->e:Z

    .line 544
    invoke-direct/range {p0 .. p0}, Lct/bs;->h()V

    .line 549
    invoke-direct/range {p0 .. p0}, Lct/bs;->j()Landroid/location/Location;

    move-result-object v17

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateFences: fresh_location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 555
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Lct/bs;->g:Lct/bs$b;

    iget-object v0, v4, Lct/bs$b;->a:Ljava/util/List;

    move-object/from16 v19, v0

    .line 557
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    move v11, v4

    .line 559
    :goto_0
    if-eqz v17, :cond_1f

    .line 560
    invoke-static/range {v17 .. v17}, Lct/b$a;->a(Landroid/location/Location;)V

    .line 561
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move-wide v12, v2

    :cond_0
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lct/br;

    move-object v10, v0

    .line 562
    iget-object v2, v10, Lct/br;->g:Ljava/lang/Object;

    move-object/from16 v0, v17

    if-eq v0, v2, :cond_a

    move-object/from16 v0, v17

    iput-object v0, v10, Lct/br;->g:Ljava/lang/Object;

    iget-wide v0, v10, Lct/br;->f:D

    move-wide/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v6, v10, Lct/br;->b:Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v8, v10, Lct/br;->b:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v9}, Lct/b$a;->a(DDDD)D

    move-result-wide v4

    iget-object v2, v10, Lct/br;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual/range {v17 .. v17}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_7

    cmpl-double v8, v4, v22

    if-ltz v8, :cond_5

    const-wide/16 v2, 0x0

    :goto_2
    double-to-float v2, v2

    iget-object v3, v10, Lct/br;->b:Landroid/location/Location;

    invoke-virtual {v3, v6, v7}, Landroid/location/Location;->setTime(J)V

    iget-object v3, v10, Lct/br;->b:Landroid/location/Location;

    invoke-virtual {v3, v2}, Landroid/location/Location;->setSpeed(F)V

    iput-wide v4, v10, Lct/br;->f:D

    iget v3, v10, Lct/br;->e:I

    iget-wide v4, v10, Lct/br;->f:D

    iget-object v2, v10, Lct/br;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentGeofence;->getRadius()F

    move-result v2

    float-to-double v6, v2

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_8

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_9

    const/4 v2, 0x1

    iput v2, v10, Lct/br;->e:I

    const/4 v2, 0x1

    if-eq v3, v2, :cond_a

    const/4 v2, 0x1

    .line 563
    :goto_4
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    .line 564
    iget-object v3, v10, Lct/br;->d:Landroid/app/PendingIntent;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    :cond_1
    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 567
    iget-object v2, v10, Lct/br;->d:Landroid/app/PendingIntent;

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    :cond_2
    iget-wide v2, v10, Lct/br;->f:D

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_b

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 577
    :goto_5
    cmpg-double v4, v2, v12

    if-gez v4, :cond_3

    move-wide v12, v2

    .line 580
    :cond_3
    iget v2, v10, Lct/br;->e:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_c

    iget-object v2, v10, Lct/br;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_c

    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v10}, Lct/br;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 657
    :catchall_0
    move-exception v2

    monitor-exit v16

    throw v2

    .line 557
    :cond_4
    const/4 v4, 0x0

    move v11, v4

    goto/16 :goto_0

    .line 562
    :cond_5
    cmpg-double v8, v4, v22

    if-gez v8, :cond_7

    sub-long v2, v6, v2

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    sub-double v8, v22, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/16 v22, 0x0

    cmp-long v21, v2, v22

    if-eqz v21, :cond_6

    :goto_7
    long-to-double v2, v2

    div-double v2, v8, v2

    goto/16 :goto_2

    :cond_6
    const-wide/16 v22, 0x1

    add-long v2, v2, v22

    goto :goto_7

    :cond_7
    const-wide v2, -0x40af9db220000000L    # -0.0010000000474974513

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x2

    iput v2, v10, Lct/br;->e:I

    const/4 v2, 0x1

    if-ne v3, v2, :cond_a

    const/4 v2, 0x2

    goto/16 :goto_4

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 574
    :cond_b
    iget-object v2, v10, Lct/br;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v2}, Lcom/tencent/map/geolocation/TencentGeofence;->getRadius()F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, v10, Lct/br;->f:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    goto :goto_5

    .line 580
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 586
    :cond_d
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_e

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->g:Lct/bs$b;

    iget-object v3, v3, Lct/bs$b;->f:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->g:Lct/bs$b;

    iget-object v3, v3, Lct/bs$b;->f:[F

    const/4 v4, 0x0

    aget v5, v3, v4

    add-float/2addr v2, v5

    aput v2, v3, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    iget-object v2, v2, Lct/bs$b;->f:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v2, v3

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    iget-object v2, v2, Lct/bs$b;->f:[F

    move-wide v8, v12

    .line 590
    :goto_9
    if-eqz v11, :cond_1b

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->a:Landroid/content/Context;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lct/bs;->a:Landroid/content/Context;

    invoke-static {v4}, Lct/bk;->a(Landroid/content/Context;)Lct/bk;

    move-result-object v4

    invoke-static {v4}, Lct/dj;->a(Lct/bk;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/high16 v2, 0x41700000    # 15.0f

    move v4, v3

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->g:Lct/bs$b;

    iget-object v3, v3, Lct/bs$b;->f:[F

    const/4 v5, 0x0

    aget v3, v3, v5

    cmpl-float v5, v3, v4

    if-ltz v5, :cond_15

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    float-to-double v6, v3

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v12

    add-float/2addr v2, v4

    float-to-double v2, v2

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v12

    add-double/2addr v2, v6

    float-to-double v6, v4

    cmpg-double v5, v2, v6

    if-gez v5, :cond_14

    float-to-double v2, v4

    move-wide v6, v2

    .line 596
    :goto_b
    if-eqz v17, :cond_17

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_17

    .line 598
    const-wide v2, 0x412b774000000000L    # 900000.0

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v8

    div-double/2addr v12, v6

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-long v2, v2

    .line 604
    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v4, v8, v4

    if-gez v4, :cond_f

    const-wide/32 v4, 0x4a768

    cmp-long v4, v2, v4

    if-lez v4, :cond_f

    .line 605
    const-wide/32 v2, 0x4a768

    .line 611
    :cond_f
    :goto_c
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpg-double v4, v6, v4

    if-gez v4, :cond_18

    const-wide/high16 v4, 0x4089000000000000L    # 800.0

    cmpl-double v4, v8, v4

    if-lez v4, :cond_18

    .line 612
    move-object/from16 v0, p0

    iget-wide v2, v0, Lct/bs;->k:D

    const-wide v4, 0x3ff051eb851eb852L    # 1.02

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lct/bs;->k:D

    .line 613
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lct/bs;->k:D

    mul-double/2addr v2, v4

    const-wide v4, 0x40ed4c0000000000L    # 60000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 614
    const-wide/32 v4, 0x4a768

    cmp-long v4, v2, v4

    if-lez v4, :cond_10

    const-wide/32 v2, 0x4a768

    :cond_10
    move-wide v4, v2

    .line 620
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    iput-wide v4, v2, Lct/bs$b;->c:J

    .line 621
    if-eqz p1, :cond_19

    if-nez v17, :cond_19

    const/4 v2, 0x1

    .line 622
    :goto_e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v10, "updateFences: needUpdates=%s, interval=%d, minDist=%5g, speed=%.2f, reschedule=%s, rate=%.2f"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v12, v13

    const/4 v11, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v11

    const/4 v4, 0x2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v12, v4

    const/4 v4, 0x3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v12, v4

    const/4 v4, 0x4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v12, v4

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lct/bs;->k:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v12, v4

    invoke-static {v3, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->g:Lct/bs$b;

    iget-boolean v3, v3, Lct/bs$b;->b:Z

    if-nez v3, :cond_1a

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lct/bs$b;->b:Z

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->d:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2ee0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->b:Lct/cb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lct/bs;->e:Lct/bs$a;

    invoke-virtual {v4}, Lct/bs$a;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v4}, Lct/cb;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    .line 649
    :cond_11
    :goto_f
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 650
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lct/br;

    .line 651
    iget-object v5, v2, Lct/br;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {v5}, Lcom/tencent/map/geolocation/TencentGeofence;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 654
    invoke-virtual {v2}, Lct/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 586
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->g:Lct/bs$b;

    iget-object v3, v3, Lct/bs$b;->f:[F

    const/4 v4, 0x0

    aput v2, v3, v4

    goto/16 :goto_8

    .line 594
    :cond_13
    const/high16 v3, 0x40400000    # 3.0f

    move v4, v3

    goto/16 :goto_a

    :cond_14
    move-wide v6, v2

    goto/16 :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->a:Landroid/content/Context;

    invoke-static {v3}, Lct/b$a;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_16

    float-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    move-wide v6, v2

    goto/16 :goto_b

    :cond_16
    float-to-double v2, v2

    move-wide v6, v2

    goto/16 :goto_b

    .line 608
    :cond_17
    const-wide/32 v2, 0xea60

    goto/16 :goto_c

    .line 617
    :cond_18
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lct/bs;->k:D

    move-wide v4, v2

    goto/16 :goto_d

    .line 621
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 633
    :cond_1a
    if-eqz v2, :cond_11

    .line 634
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lct/bs;->a(J)Landroid/app/PendingIntent;

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lct/bs$b;->b:Z

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->d:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2ee0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->b:Lct/cb;

    move-object/from16 v0, p0

    iget-object v3, v0, Lct/bs;->j:Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lct/bs;->e:Lct/bs$a;

    invoke-virtual {v4}, Lct/bs$a;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v2, v3, v0, v4}, Lct/cb;->a(Lcom/tencent/map/geolocation/TencentLocationRequest;Lcom/tencent/map/geolocation/TencentLocationListener;Landroid/os/Looper;)I

    goto/16 :goto_f

    .line 642
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    iget-boolean v2, v2, Lct/bs$b;->b:Z

    if-eqz v2, :cond_11

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->g:Lct/bs$b;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lct/bs$b;->b:Z

    .line 644
    invoke-direct/range {p0 .. p0}, Lct/bs;->g()V

    .line 645
    invoke-direct/range {p0 .. p0}, Lct/bs;->f()V

    goto/16 :goto_f

    .line 656
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lct/bs;->f:Lct/bs$c;

    iget-object v2, v2, Lct/bs$c;->a:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 661
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendIntentExit: pendingIntent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "entering"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/bs;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_11

    .line 663
    :cond_1d
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 664
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendIntentEnter: pendingIntent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "entering"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lct/bs;->a(Landroid/app/PendingIntent;Landroid/content/Intent;)V

    goto :goto_12

    .line 666
    :cond_1e
    return-void

    :cond_1f
    move-wide v8, v2

    goto/16 :goto_9
.end method

.method static synthetic b(Lct/bs;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lct/bs;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 442
    iget-object v0, p0, Lct/bs;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no data conn. skip ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-boolean v0, v0, Lct/bs$b;->e:Z

    if-nez v0, :cond_0

    .line 447
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iput-boolean v1, v0, Lct/bs$b;->e:Z

    .line 449
    iget-object v0, p0, Lct/bs;->e:Lct/bs$a;

    invoke-virtual {v0, v1}, Lct/bs$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic c()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method static synthetic d()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lct/bs;->k()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lct/bs;->h:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this object has been destroyed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 293
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lct/bs;->a(J)Landroid/app/PendingIntent;

    .line 294
    iget-object v0, p0, Lct/bs;->e:Lct/bs$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lct/bs$a;->removeMessages(I)V

    .line 295
    iget-object v0, p0, Lct/bs;->b:Lct/cb;

    invoke-virtual {v0}, Lct/cb;->c()V

    .line 296
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 399
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v1, v0, Lct/bs$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-boolean v4, v0, Lct/bs$b;->b:Z

    const-wide/32 v2, 0xea60

    iput-wide v2, v0, Lct/bs$b;->c:J

    const/4 v1, 0x0

    iput-object v1, v0, Lct/bs$b;->d:Landroid/location/Location;

    iput-boolean v4, v0, Lct/bs$b;->e:Z

    .line 401
    iget-object v0, p0, Lct/bs;->f:Lct/bs$c;

    .line 402
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 430
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 431
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v0, v0, Lct/bs$b;->a:Ljava/util/List;

    .line 432
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 433
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/br;

    .line 435
    iget-wide v4, v0, Lct/br;->c:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 436
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 439
    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 454
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-boolean v0, v0, Lct/bs$b;->e:Z

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iput-boolean v1, v0, Lct/bs$b;->e:Z

    .line 457
    iget-object v0, p0, Lct/bs;->e:Lct/bs$a;

    invoke-virtual {v0, v1}, Lct/bs$a;->sendEmptyMessage(I)Z

    .line 459
    :cond_0
    return-void
.end method

.method private j()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 473
    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v1, v1, Lct/bs$b;->d:Landroid/location/Location;

    .line 474
    iget-object v2, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v2, v2, Lct/bs$b;->a:Ljava/util/List;

    .line 475
    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    iget-object v1, p0, Lct/bs;->b:Lct/cb;

    invoke-virtual {v1}, Lct/cb;->a()Lcom/tencent/map/geolocation/TencentLocation;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lct/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Landroid/location/Location;

    move-result-object v1

    .line 483
    :cond_0
    if-nez v1, :cond_2

    .line 495
    :cond_1
    :goto_0
    return-object v0

    .line 489
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    move-object v0, v1

    .line 495
    goto :goto_0
.end method

.method private static k()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.map.geolocation.wakeup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    const-string v1, "com.tencent.map.geolocation.from_alarm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 724
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lct/bs;->h:Z

    if-nez v0, :cond_0

    .line 280
    invoke-direct {p0}, Lct/bs;->f()V

    .line 281
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v0, v0, Lct/bs$b;->f:[F

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 283
    iget-object v0, p0, Lct/bs;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v1

    .line 285
    :try_start_0
    invoke-direct {p0}, Lct/bs;->g()V

    .line 286
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/bs;->h:Z

    .line 290
    :cond_0
    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentGeofence;)V
    .locals 3

    .prologue
    .line 366
    invoke-direct {p0}, Lct/bs;->e()V

    .line 367
    if-nez p1, :cond_0

    .line 384
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeFence: fence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v1

    .line 373
    :try_start_0
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v0, v0, Lct/bs$b;->a:Ljava/util/List;

    .line 374
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 375
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/br;

    .line 378
    iget-object v0, v0, Lct/br;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {p1, v0}, Lcom/tencent/map/geolocation/TencentGeofence;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 383
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lct/bs;->i()V

    .line 384
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/map/geolocation/TencentGeofence;Landroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 309
    invoke-direct {p0}, Lct/bs;->e()V

    .line 310
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addFence: , geofence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    new-instance v2, Lct/br;

    invoke-virtual {p1}, Lcom/tencent/map/geolocation/TencentGeofence;->getExpireAt()J

    move-result-wide v0

    invoke-direct {v2, p1, v0, v1, p2}, Lct/br;-><init>(Lcom/tencent/map/geolocation/TencentGeofence;JLandroid/app/PendingIntent;)V

    .line 318
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v3, v0, Lct/bs$b;->a:Ljava/util/List;

    .line 319
    iget-object v4, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v4

    .line 321
    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 322
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/br;

    .line 323
    iget-object v5, v0, Lct/br;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    invoke-virtual {p1, v5}, Lcom/tencent/map/geolocation/TencentGeofence;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, v0, Lct/br;->d:Landroid/app/PendingIntent;

    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 325
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 329
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-direct {p0}, Lct/bs;->i()V

    .line 331
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 321
    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 411
    invoke-direct {p0}, Lct/bs;->e()V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeFence: tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-object v0, v0, Lct/bs$b;->a:Ljava/util/List;

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 417
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/br;

    .line 419
    iget-object v0, v0, Lct/br;->a:Lcom/tencent/map/geolocation/TencentGeofence;

    .line 420
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentGeofence;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 424
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "removeFence: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " removed --> schedule update fence"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lct/bs;->i()V

    .line 426
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 391
    invoke-direct {p0}, Lct/bs;->e()V

    .line 392
    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, p0, Lct/bs;->b:Lct/cb;

    invoke-virtual {v0}, Lct/cb;->c()V

    .line 394
    invoke-direct {p0}, Lct/bs;->g()V

    .line 395
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 773
    invoke-static {p1}, Lct/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;)Landroid/location/Location;

    move-result-object v0

    .line 775
    invoke-static {p1, p2}, Lct/b$a;->a(Lcom/tencent/map/geolocation/TencentLocation;I)Ljava/lang/String;

    .line 776
    iget-object v1, p0, Lct/bs;->b:Lct/cb;

    invoke-virtual {v1}, Lct/cb;->c()V

    .line 785
    if-nez p2, :cond_4

    .line 786
    iget-object v1, p0, Lct/bs;->f:Lct/bs$c;

    invoke-virtual {v1, p2, p1}, Lct/bs$c;->a(ILcom/tencent/map/geolocation/TencentLocation;)V

    .line 788
    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v1

    .line 789
    :try_start_0
    iget-object v2, p0, Lct/bs;->g:Lct/bs$b;

    iget-boolean v2, v2, Lct/bs$b;->b:Z

    if-eqz v2, :cond_0

    .line 790
    iget-object v2, p0, Lct/bs;->g:Lct/bs$b;

    iput-object v0, v2, Lct/bs$b;->d:Landroid/location/Location;

    .line 795
    :cond_0
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-boolean v0, v0, Lct/bs$b;->e:Z

    if-eqz v0, :cond_3

    .line 796
    iget-object v0, p0, Lct/bs;->e:Lct/bs$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lct/bs$a;->removeMessages(I)V

    .line 800
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lct/bs;->a(Z)V

    .line 810
    :goto_1
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-boolean v0, v0, Lct/bs$b;->b:Z

    if-eqz v0, :cond_1

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLocationChanged: set a new repeat alarm, interval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/bs;->g:Lct/bs$b;

    iget-wide v2, v1, Lct/bs$b;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    iget-wide v0, v0, Lct/bs$b;->c:J

    invoke-direct {p0, v0, v1}, Lct/bs;->a(J)Landroid/app/PendingIntent;

    .line 816
    :cond_1
    iget-object v0, p0, Lct/bs;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lct/bs;->d:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 819
    :cond_2
    return-void

    .line 798
    :cond_3
    :try_start_1
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lct/bs$b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 805
    :cond_4
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    const-wide/32 v2, 0xea60

    iput-wide v2, v0, Lct/bs$b;->c:J

    .line 806
    iget-object v0, p0, Lct/bs;->f:Lct/bs$c;

    invoke-virtual {v0, p2, p1}, Lct/bs$c;->a(ILcom/tencent/map/geolocation/TencentLocation;)V

    goto :goto_1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lct/bs;->g:Lct/bs$b;

    monitor-enter v3

    .line 204
    :try_start_0
    invoke-direct {p0}, Lct/bs;->j()Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_1

    .line 205
    :goto_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    if-eqz v0, :cond_0

    .line 207
    const-string v0, "onReceive: screen_on and no_fresh_location --> schedule update fence"

    invoke-direct {p0, v0}, Lct/bs;->b(Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_1
    monitor-exit v3

    return-void

    :cond_1
    move v0, v1

    .line 204
    goto :goto_0

    .line 209
    :cond_2
    const-string v1, "com.tencent.map.geolocation.wakeup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 210
    iget-object v0, p0, Lct/bs;->a:Landroid/content/Context;

    sget-object v1, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    sget-object v1, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "WakeLocker"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 211
    iget-object v0, p0, Lct/bs;->e:Lct/bs$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lct/bs$a;->removeMessages(I)V

    .line 212
    invoke-direct {p0}, Lct/bs;->i()V

    .line 213
    sget-object v0, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    sget-object v0, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    const/4 v0, 0x0

    sput-object v0, Lct/bt;->a:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 214
    :cond_5
    :try_start_1
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 215
    if-eqz v0, :cond_0

    .line 216
    const-string v0, "onReceive: power_disconnected --> schedule update fence"

    invoke-direct {p0, v0}, Lct/bs;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_6
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lct/bs;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 221
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lct/bs$b;->b:Z

    .line 223
    iget-object v0, p0, Lct/bs;->g:Lct/bs$b;

    const-wide/32 v4, 0xea60

    iput-wide v4, v0, Lct/bs$b;->c:J

    .line 224
    invoke-direct {p0}, Lct/bs;->f()V

    .line 226
    :cond_7
    const-string v0, "onReceive: connected and no_fresh_location --> schedule update fence"

    invoke-direct {p0, v0}, Lct/bs;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lct/bs;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    return-void
.end method

.method public final onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method
