.class final Lct/bk$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lct/bk;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lct/bk;


# direct methods
.method constructor <init>(Lct/bk;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lct/bk$1;->a:Lct/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lct/bk$1;->a:Lct/bk;

    invoke-virtual {v0}, Lct/bk;->j()V

    .line 124
    iget-object v0, p0, Lct/bk$1;->a:Lct/bk;

    invoke-static {v0}, Lct/bk;->a(Lct/bk;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 125
    return-void
.end method
