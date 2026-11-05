.class public Lcom/tencent/map/geolocation/TencentLocationManagerOptions;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->a:Z

    .line 11
    sput-boolean v0, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isGpsFilterEnabled()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->b:Z

    return v0
.end method

.method public static isLoadLibraryEnabled()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->a:Z

    return v0
.end method

.method public static setGpsFilterEnabled(Z)V
    .locals 0

    .prologue
    .line 26
    sput-boolean p0, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->b:Z

    .line 27
    return-void
.end method

.method public static setLoadLibraryEnabled(Z)V
    .locals 0

    .prologue
    .line 22
    sput-boolean p0, Lcom/tencent/map/geolocation/TencentLocationManagerOptions;->a:Z

    .line 23
    return-void
.end method
