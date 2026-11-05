.class final Lct/ch$1;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lct/ch;-><init>(Lct/bk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lct/ch;


# direct methods
.method constructor <init>(Lct/ch;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lct/ch$1;->a:Lct/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lct/ch$1;->a:Lct/ch;

    invoke-static {v0}, Lct/ch;->a(Lct/ch;)Z

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Interval:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/ch$1;->a:Lct/ch;

    invoke-static {v1}, Lct/ch;->b(Lct/ch;)Lct/bk;

    move-result-object v1

    invoke-virtual {v1}, Lct/bk;->g()Lct/bl;

    move-result-object v1

    iget-wide v2, v1, Lct/bl;->m:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    return-void
.end method
