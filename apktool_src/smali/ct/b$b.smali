.class final Lct/b$b;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lct/b;


# direct methods
.method private constructor <init>(Lct/b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lct/b$b;->a:Lct/b;

    .line 294
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Lct/b;Landroid/os/Looper;B)V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Lct/b$b;-><init>(Lct/b;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 300
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 301
    iget-object v0, p0, Lct/b$b;->a:Lct/b;

    iget-boolean v0, v0, Lct/b;->a:Z

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lct/b$b;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    const/4 v0, 0x0

    .line 308
    iget-object v1, p0, Lct/b$b;->a:Lct/b;

    invoke-static {v1}, Lct/b;->a(Lct/b;)Lct/bk;

    move-result-object v1

    invoke-virtual {v1}, Lct/bk;->a()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_1

    .line 311
    :try_start_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 320
    :cond_1
    :goto_1
    iget-object v1, p0, Lct/b$b;->a:Lct/b;

    invoke-static {v1, v0}, Lct/b;->a(Lct/b;Ljava/util/List;)V

    goto :goto_0

    .line 314
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method
