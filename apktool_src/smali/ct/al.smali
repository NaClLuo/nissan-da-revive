.class public final Lct/al;
.super Lct/bh;


# static fields
.field private static h:Ljava/util/Map;

.field private static i:Lct/an;

.field private static j:Lct/aj;

.field private static k:Ljava/util/Map;

.field private static l:Ljava/util/Map;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Lct/an;

.field public c:Lct/aj;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/Map;

.field private g:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lct/bh;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lct/al;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lct/al;->e:I

    iput-object v1, p0, Lct/al;->a:Ljava/util/Map;

    iput-object v1, p0, Lct/al;->b:Lct/an;

    iput-object v1, p0, Lct/al;->c:Lct/aj;

    iput-object v1, p0, Lct/al;->f:Ljava/util/Map;

    iput-object v1, p0, Lct/al;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lct/bf;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Lct/bf;->a(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/al;->d:Ljava/lang/String;

    iget v0, p0, Lct/al;->e:I

    invoke-virtual {p1, v0, v4, v4}, Lct/bf;->a(IIZ)I

    move-result v0

    iput v0, p0, Lct/al;->e:I

    sget-object v0, Lct/al;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lct/al;->h:Ljava/util/Map;

    const-string v0, ""

    new-instance v1, Lct/am;

    invoke-direct {v1}, Lct/am;-><init>()V

    sget-object v2, Lct/al;->h:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lct/al;->h:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lct/bf;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lct/al;->a:Ljava/util/Map;

    sget-object v0, Lct/al;->i:Lct/an;

    if-nez v0, :cond_1

    new-instance v0, Lct/an;

    invoke-direct {v0}, Lct/an;-><init>()V

    sput-object v0, Lct/al;->i:Lct/an;

    :cond_1
    sget-object v0, Lct/al;->i:Lct/an;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lct/bf;->a(Lct/bh;IZ)Lct/bh;

    move-result-object v0

    check-cast v0, Lct/an;

    iput-object v0, p0, Lct/al;->b:Lct/an;

    sget-object v0, Lct/al;->j:Lct/aj;

    if-nez v0, :cond_2

    new-instance v0, Lct/aj;

    invoke-direct {v0}, Lct/aj;-><init>()V

    sput-object v0, Lct/al;->j:Lct/aj;

    :cond_2
    sget-object v0, Lct/al;->j:Lct/aj;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lct/bf;->a(Lct/bh;IZ)Lct/bh;

    move-result-object v0

    check-cast v0, Lct/aj;

    iput-object v0, p0, Lct/al;->c:Lct/aj;

    sget-object v0, Lct/al;->k:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lct/al;->k:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lct/al;->k:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Lct/al;->k:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lct/bf;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lct/al;->f:Ljava/util/Map;

    sget-object v0, Lct/al;->l:Ljava/util/Map;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lct/al;->l:Ljava/util/Map;

    const-string v2, ""

    new-array v0, v4, [B

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    aput-byte v3, v1, v3

    sget-object v1, Lct/al;->l:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Lct/al;->l:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lct/bf;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lct/al;->g:Ljava/util/Map;

    return-void
.end method

.method public final a(Lct/bg;)V
    .locals 2

    iget-object v0, p0, Lct/al;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(Ljava/lang/String;I)V

    iget v0, p0, Lct/al;->e:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(II)V

    iget-object v0, p0, Lct/al;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(Ljava/util/Map;I)V

    iget-object v0, p0, Lct/al;->b:Lct/an;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/al;->b:Lct/an;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(Lct/bh;I)V

    :cond_0
    iget-object v0, p0, Lct/al;->c:Lct/aj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lct/al;->c:Lct/aj;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(Lct/bh;I)V

    :cond_1
    iget-object v0, p0, Lct/al;->f:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lct/al;->f:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(Ljava/util/Map;I)V

    :cond_2
    iget-object v0, p0, Lct/al;->g:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lct/al;->g:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lct/bg;->a(Ljava/util/Map;I)V

    :cond_3
    return-void
.end method
