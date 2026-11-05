.class public final Lct/cy$a;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/cy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lct/cy;

.field public c:I

.field public d:Ljava/lang/String;

.field private e:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const-string v0, "network"

    iput-object v0, p0, Lct/cy$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)Lct/cy$a;
    .locals 1

    .prologue
    .line 543
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lct/cy$a;->e:Landroid/location/Location;

    .line 544
    return-object p0
.end method

.method public final a()Lct/cy;
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lct/cy$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 508
    :try_start_0
    new-instance v0, Lct/cy;

    iget-object v1, p0, Lct/cy$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lct/cy;-><init>(Ljava/lang/String;B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    iget v1, p0, Lct/cy$a;->c:I

    invoke-static {v0, v1}, Lct/cy;->b(Lct/cy;I)Lct/cy;

    move-result-object v1

    iget-object v2, p0, Lct/cy$a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lct/cy;->b(Lct/cy;Ljava/lang/String;)Lct/cy;

    move-result-object v1

    iget-object v2, p0, Lct/cy$a;->e:Landroid/location/Location;

    invoke-static {v1, v2}, Lct/cy;->a(Lct/cy;Landroid/location/Location;)Lct/cy;

    .line 518
    iget-object v1, p0, Lct/cy$a;->e:Landroid/location/Location;

    invoke-static {}, Lct/co;->a()V

    .line 519
    :goto_1
    return-object v0

    .line 510
    :catch_0
    move-exception v0

    sget-object v0, Lct/cy;->a:Lct/cy;

    goto :goto_1

    .line 514
    :cond_0
    iget-object v0, p0, Lct/cy$a;->b:Lct/cy;

    invoke-static {v0}, Lct/cy;->d(Lct/cy;)Lct/cy;

    move-result-object v0

    goto :goto_0
.end method
