.class public final Lct/aj;
.super Lct/bh;


# static fields
.field private static g:Lct/ao;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Lct/ao;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lct/bh;-><init>()V

    iput v0, p0, Lct/aj;->a:I

    iput v0, p0, Lct/aj;->b:I

    iput v0, p0, Lct/aj;->c:I

    iput v0, p0, Lct/aj;->d:I

    iput v0, p0, Lct/aj;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lct/aj;->f:Lct/ao;

    return-void
.end method


# virtual methods
.method public final a(Lct/bf;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lct/aj;->a:I

    invoke-virtual {p1, v0, v2, v2}, Lct/bf;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/aj;->a:I

    iget v0, p0, Lct/aj;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lct/bf;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/aj;->b:I

    iget v0, p0, Lct/aj;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lct/bf;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/aj;->c:I

    iget v0, p0, Lct/aj;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lct/bf;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/aj;->d:I

    iget v0, p0, Lct/aj;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lct/bf;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/aj;->e:I

    sget-object v0, Lct/aj;->g:Lct/ao;

    if-nez v0, :cond_0

    new-instance v0, Lct/ao;

    invoke-direct {v0}, Lct/ao;-><init>()V

    sput-object v0, Lct/aj;->g:Lct/ao;

    :cond_0
    sget-object v0, Lct/aj;->g:Lct/ao;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lct/bf;->a(Lct/bh;IZ)Lct/bh;

    move-result-object v0

    check-cast v0, Lct/ao;

    iput-object v0, p0, Lct/aj;->f:Lct/ao;

    return-void
.end method

.method public final a(Lct/bg;)V
    .locals 2

    iget v0, p0, Lct/aj;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(II)V

    iget v0, p0, Lct/aj;->b:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(II)V

    iget v0, p0, Lct/aj;->c:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(II)V

    iget v0, p0, Lct/aj;->d:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(II)V

    iget v0, p0, Lct/aj;->e:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(II)V

    iget-object v0, p0, Lct/aj;->f:Lct/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/aj;->f:Lct/ao;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(Lct/bh;I)V

    :cond_0
    return-void
.end method
