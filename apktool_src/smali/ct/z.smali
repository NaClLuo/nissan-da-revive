.class public final Lct/z;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:[I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z

.field public j:[B

.field public k:J

.field public l:J

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Ljava/lang/String;

.field private r:Ljava/util/Map;

.field private volatile s:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;[I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lct/z;->a:Z

    iput-boolean v3, p0, Lct/z;->b:Z

    iput-object v1, p0, Lct/z;->c:Ljava/lang/String;

    iput-object v1, p0, Lct/z;->d:Ljava/lang/String;

    iput-object v1, p0, Lct/z;->e:[I

    const-string v0, ""

    iput-object v0, p0, Lct/z;->f:Ljava/lang/String;

    iput-object v1, p0, Lct/z;->g:Ljava/lang/String;

    iput-boolean v3, p0, Lct/z;->h:Z

    iput-boolean v3, p0, Lct/z;->i:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lct/z;->r:Ljava/util/Map;

    iput-object v1, p0, Lct/z;->j:[B

    iput-wide v4, p0, Lct/z;->k:J

    iput-wide v4, p0, Lct/z;->l:J

    const v0, 0x8000

    iput v0, p0, Lct/z;->m:I

    const/16 v0, 0x2710

    iput v0, p0, Lct/z;->n:I

    const/4 v0, 0x3

    iput v0, p0, Lct/z;->o:I

    iput-boolean v3, p0, Lct/z;->p:Z

    iput-boolean v2, p0, Lct/z;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lct/z;->q:Ljava/lang/String;

    iput-object p1, p0, Lct/z;->c:Ljava/lang/String;

    iput-object p2, p0, Lct/z;->e:[I

    iget-object v0, p0, Lct/z;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/z;->e:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lct/z;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/z;->e:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/z;->f:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lct/z;->c:Ljava/lang/String;

    invoke-static {v0}, Lct/be;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/z;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/z;->k:J

    return-void

    :cond_0
    iget-object v0, p0, Lct/z;->c:Ljava/lang/String;

    iput-object v0, p0, Lct/z;->f:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const v0, 0x8000

    iput v0, p0, Lct/z;->m:I

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lct/z;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b()Ljava/util/Map;
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lct/z;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method
