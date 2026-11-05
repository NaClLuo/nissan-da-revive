.class final Lct/bw$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lct/bw;


# direct methods
.method private constructor <init>(Lct/bw;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lct/bw$a;->a:Lct/bw;

    .line 293
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Lct/bw;Landroid/os/Looper;B)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Lct/bw$a;-><init>(Lct/bw;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 299
    iget-object v0, p0, Lct/bw$a;->a:Lct/bw;

    iget-boolean v0, v0, Lct/bw;->a:Z

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lct/bw$a;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    iget-object v0, p0, Lct/bw$a;->a:Lct/bw;

    invoke-static {v0}, Lct/bw;->a(Lct/bw;)Lct/bk;

    move-result-object v0

    invoke-static {v0}, Lct/cz;->b(Lct/bk;)Landroid/telephony/CellLocation;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lct/bw$a;->a:Lct/bw;

    invoke-static {v1, v0}, Lct/bw;->a(Lct/bw;Landroid/telephony/CellLocation;)V

    goto :goto_0
.end method
