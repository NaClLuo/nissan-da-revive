.class final Lct/b$c;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lct/bk;

.field private b:Lct/cj;


# direct methods
.method public constructor <init>(Lct/bk;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lct/b$c;->a:Lct/bk;

    .line 330
    return-void
.end method


# virtual methods
.method public final a(Lct/cj;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lct/b$c;->b:Lct/cj;

    .line 334
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Lct/b$c;->a:Lct/bk;

    .line 339
    iget-object v1, p0, Lct/b$c;->b:Lct/cj;

    .line 340
    if-eqz v1, :cond_0

    .line 341
    invoke-static {v0}, Lct/cz;->c(Lct/bk;)Ljava/util/List;

    move-result-object v2

    .line 342
    invoke-virtual {v1, v2}, Lct/cj;->a(Ljava/util/List;)V

    .line 343
    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    .line 345
    :cond_0
    return-void
.end method
