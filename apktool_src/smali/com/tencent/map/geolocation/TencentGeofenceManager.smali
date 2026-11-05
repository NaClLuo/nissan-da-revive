.class public Lcom/tencent/map/geolocation/TencentGeofenceManager;
.super Ljava/lang/Object;
.source "TL"


# instance fields
.field private a:Lct/bs;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lct/bs;

    invoke-direct {v0, p1}, Lct/bs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lct/bs;

    .line 30
    return-void
.end method


# virtual methods
.method public addFence(Lcom/tencent/map/geolocation/TencentGeofence;Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lct/bs;

    invoke-virtual {v0, p1, p2}, Lct/bs;->a(Lcom/tencent/map/geolocation/TencentGeofence;Landroid/app/PendingIntent;)V

    .line 53
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lct/bs;

    invoke-virtual {v0}, Lct/bs;->a()V

    .line 39
    return-void
.end method

.method public removeAllFences()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lct/bs;

    invoke-virtual {v0}, Lct/bs;->b()V

    .line 70
    return-void
.end method

.method public removeFence(Lcom/tencent/map/geolocation/TencentGeofence;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lct/bs;

    invoke-virtual {v0, p1}, Lct/bs;->a(Lcom/tencent/map/geolocation/TencentGeofence;)V

    .line 63
    return-void
.end method

.method public removeFence(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/map/geolocation/TencentGeofenceManager;->a:Lct/bs;

    invoke-virtual {v0, p1}, Lct/bs;->a(Ljava/lang/String;)V

    .line 80
    return-void
.end method
