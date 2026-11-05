.class public final Lct/bn;
.super Lct/bo;
.source "TL"

# interfaces
.implements Lct/bm;
.implements Lct/cc;


# static fields
.field public static final a:Lct/bn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lct/bn;

    invoke-direct {v0}, Lct/bn;-><init>()V

    sput-object v0, Lct/bn;->a:Lct/bn;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "dummy"

    const-string v1, "dummy"

    invoke-direct {p0, v0, v1}, Lct/bo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static b()Lct/bm;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lct/bn;->a:Lct/bn;

    return-object v0
.end method

.method public static c()Lct/cc;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lct/bn;->a:Lct/bn;

    .line 36
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected final a(Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lct/bx;->b:Landroid/location/Location;

    return-object v0
.end method
