.class final Lct/by;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static volatile e:Lct/by;


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private final b:Z

.field private c:Z

.field private d:D


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lct/by;->a:Landroid/hardware/SensorManager;

    .line 31
    iget-object v0, p0, Lct/by;->a:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lct/by;->b:Z

    .line 33
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lct/by;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lct/by;->e:Lct/by;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lct/by;

    invoke-direct {v0, p0}, Lct/by;-><init>(Landroid/content/Context;)V

    sput-object v0, Lct/by;->e:Lct/by;

    .line 24
    :cond_0
    sget-object v0, Lct/by;->e:Lct/by;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lct/by;->b:Z

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-boolean v0, p0, Lct/by;->c:Z

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lct/by;->c:Z

    .line 57
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lct/by;->d:D

    .line 58
    iget-object v0, p0, Lct/by;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 36
    iget-boolean v0, p0, Lct/by;->b:Z

    if-nez v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-boolean v0, p0, Lct/by;->c:Z

    if-nez v0, :cond_0

    .line 41
    :try_start_0
    iget-object v0, p0, Lct/by;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lct/by;->a:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/by;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 68
    iget-boolean v0, p0, Lct/by;->c:Z

    if-eqz v0, :cond_0

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-wide v0, p0, Lct/by;->d:D

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    return-wide v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 73
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 80
    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 81
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 82
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 83
    const/4 v0, 0x0

    aget v0, v1, v0

    float-to-double v0, v0

    .line 84
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 85
    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb4d12d84aL    # 3.1415926

    div-double/2addr v0, v2

    :try_start_1
    iput-wide v0, p0, Lct/by;->d:D

    .line 86
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0

    .line 91
    :catch_1
    move-exception v0

    goto :goto_0
.end method
