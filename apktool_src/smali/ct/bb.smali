.class public final Lct/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lct/aw;


# static fields
.field private static k:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:Lct/bi;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lct/s;

.field public i:J

.field public j:I

.field private l:Lct/bi;

.field private m:[B

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lct/bb;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lct/bi;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lct/bb;->n:I

    iput v2, p0, Lct/bb;->b:I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput v2, p0, Lct/bb;->d:I

    iput v2, p0, Lct/bb;->e:I

    iput v2, p0, Lct/bb;->f:I

    iput v2, p0, Lct/bb;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/bb;->h:Lct/s;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lct/bb;->i:J

    const/16 v0, 0x14

    iput v0, p0, Lct/bb;->j:I

    iput-object p1, p0, Lct/bb;->l:Lct/bi;

    sget-object v0, Lct/bb;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lct/bb;->n:I

    iget-object v0, p0, Lct/bb;->l:Lct/bi;

    iget v1, p0, Lct/bb;->n:I

    invoke-virtual {v0, v1}, Lct/bi;->a(I)V

    return-void
.end method


# virtual methods
.method public final a()Lct/bi;
    .locals 1

    iget-object v0, p0, Lct/bb;->a:Lct/bi;

    return-object v0
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lct/ba;->a()Lct/ba;

    move-result-object v0

    invoke-virtual {v0, p0}, Lct/ba;->a(Lct/bb;)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lct/bb;->b:I

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lct/bb;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lct/s;
    .locals 1

    iget-object v0, p0, Lct/bb;->h:Lct/s;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lct/bb;->d:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lct/bb;->g:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lct/bb;->e:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lct/bb;->f:I

    return v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lct/bb;->l:Lct/bi;

    invoke-virtual {v0}, Lct/bi;->a()[B

    move-result-object v0

    iput-object v0, p0, Lct/bb;->m:[B

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lct/bb;->n:I

    return v0
.end method

.method public final l()[B
    .locals 1

    iget-object v0, p0, Lct/bb;->m:[B

    return-object v0
.end method
