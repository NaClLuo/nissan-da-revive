.class public final Lct/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lct/ag;


# direct methods
.method public constructor <init>(Lct/ag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lct/ai;->a:Lct/ag;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    iget-object v0, v0, Lct/ag;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v3, p0, Lct/ai;->a:Lct/ag;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lct/ag;->v:Ljava/lang/String;

    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    new-instance v3, Lct/s;

    iget-object v4, p0, Lct/ai;->a:Lct/ag;

    iget-object v4, v4, Lct/ag;->v:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Lct/s;-><init>(Ljava/lang/String;I)V

    iput-object v3, v0, Lct/ag;->h:Lct/s;

    :cond_0
    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    iget v0, v0, Lct/ag;->n:I

    const/16 v3, -0x9

    if-ge v0, v3, :cond_1

    const-string v0, "info.3g.qq.com"

    invoke-static {v0}, Lct/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    const/16 v3, -0x11

    iput v3, v0, Lct/ag;->n:I

    :cond_1
    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    iget v0, v0, Lct/ag;->n:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    iget-object v3, v0, Lct/ag;->h:Lct/s;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lct/ag;->h:Lct/s;

    iget-object v0, v0, Lct/ag;->i:Lct/s;

    invoke-virtual {v3, v0}, Lct/s;->a(Lct/s;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    if-eqz v0, :cond_3

    invoke-static {}, Lct/u;->a()Lct/u;

    move-result-object v3

    iget-object v4, v0, Lct/ag;->a:Ljava/lang/String;

    iget-object v0, v0, Lct/ag;->h:Lct/s;

    invoke-static {}, Lct/bc;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "updateApnUserTime... failed with apnName:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lct/ai;->a:Lct/ag;

    iget-boolean v0, v0, Lct/ag;->w:Z

    if-eqz v0, :cond_6

    iget-object v3, p0, Lct/ai;->a:Lct/ag;

    invoke-static {}, Lct/h;->a()Lct/a;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lct/a;->a()Lct/ao;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v0, v4, Lct/ao;->a:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, v4, Lct/ao;->a:Ljava/util/Map;

    iget v5, v3, Lct/ag;->n:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-nez v0, :cond_4

    iget v0, v4, Lct/ao;->b:I

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    iput v4, v3, Lct/ag;->u:I

    :cond_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v0}, Ljava/lang/Byte;->floatValue()F

    move-result v0

    float-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_d

    move v0, v2

    :goto_2
    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lct/p;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v3, p0, Lct/ai;->a:Lct/ag;

    new-instance v4, Lct/ap;

    invoke-direct {v4}, Lct/ap;-><init>()V

    sget-object v0, Lct/p;->b:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->a:Ljava/lang/String;

    sget-object v0, Lct/p;->c:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->b:Ljava/lang/String;

    sget v0, Lct/p;->d:I

    iput v0, v4, Lct/ap;->c:I

    sget-object v0, Lct/p;->g:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->d:Ljava/lang/String;

    sget-object v0, Lct/p;->e:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->e:Ljava/lang/String;

    invoke-static {}, Lct/bc;->c()I

    move-result v0

    iput v0, v4, Lct/ap;->h:I

    iget v0, v4, Lct/ap;->h:I

    if-ne v0, v1, :cond_e

    invoke-static {}, Lct/bc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lct/ap;->g:Ljava/lang/String;

    :goto_3
    invoke-static {}, Lct/bc;->d()I

    move-result v0

    iput v0, v4, Lct/ap;->i:I

    invoke-static {}, Lct/bc;->e()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_4
    iput v0, v4, Lct/ap;->m:I

    if-eqz v3, :cond_8

    iget-object v0, v3, Lct/ag;->a:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lct/ag;->h:Lct/s;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lct/ap;->k:Ljava/lang/String;

    iget v0, v3, Lct/ag;->n:I

    iput v0, v4, Lct/ap;->n:I

    iget-object v0, v3, Lct/ag;->q:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->o:Ljava/lang/String;

    iget-object v0, v3, Lct/ag;->p:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->p:Ljava/lang/String;

    iget-wide v6, v3, Lct/ag;->G:J

    iput-wide v6, v4, Lct/ap;->y:J

    iget-wide v6, v3, Lct/ag;->H:J

    iput-wide v6, v4, Lct/ap;->z:J

    iget-wide v6, v3, Lct/ag;->I:J

    iput-wide v6, v4, Lct/ap;->A:J

    iget-wide v6, v3, Lct/ag;->J:J

    iput-wide v6, v4, Lct/ap;->B:J

    iget-wide v6, v3, Lct/ag;->K:J

    iput-wide v6, v4, Lct/ap;->C:J

    iget-wide v6, v3, Lct/ag;->L:J

    iput-wide v6, v4, Lct/ap;->E:J

    iget v0, v3, Lct/ag;->l:I

    if-lez v0, :cond_10

    iget-wide v6, v3, Lct/ag;->E:J

    iget-wide v8, v3, Lct/ag;->F:J

    sub-long/2addr v6, v8

    iput-wide v6, v4, Lct/ap;->D:J

    :goto_5
    iget-wide v6, v3, Lct/ag;->c:J

    iput-wide v6, v4, Lct/ap;->q:J

    iget-object v0, v3, Lct/ag;->f:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->F:Ljava/lang/String;

    iget-object v0, v3, Lct/ag;->b:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->G:Ljava/lang/String;

    iget-wide v6, v3, Lct/ag;->o:J

    iput-wide v6, v4, Lct/ap;->r:J

    iget-object v0, v3, Lct/ag;->k:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->M:Ljava/lang/String;

    iget v0, v3, Lct/ag;->r:I

    iput v0, v4, Lct/ap;->P:I

    iget-object v0, v3, Lct/ag;->v:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->O:Ljava/lang/String;

    iget-object v0, v3, Lct/ag;->t:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->Q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lct/ag;->u:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lct/ap;->K:Ljava/lang/String;

    iget v0, v3, Lct/ag;->l:I

    int-to-long v6, v0

    iput-wide v6, v4, Lct/ap;->s:J

    const/4 v0, 0x1

    iput v0, v4, Lct/ap;->H:I

    iget-boolean v0, v3, Lct/ag;->m:Z

    if-eqz v0, :cond_11

    move v0, v2

    :goto_6
    iput v0, v4, Lct/ap;->I:I

    sget-boolean v0, Lct/h;->a:Z

    if-eqz v0, :cond_12

    move v0, v1

    :goto_7
    iput v0, v4, Lct/ap;->J:I

    iget-boolean v0, v3, Lct/ag;->e:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_8
    iput v0, v4, Lct/ap;->R:I

    iget-boolean v0, v3, Lct/ag;->s:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_9
    iput v0, v4, Lct/ap;->S:I

    iget-object v0, v3, Lct/ag;->g:Ljava/lang/String;

    iput-object v0, v4, Lct/ap;->L:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v3, Lct/ag;->i:Lct/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lct/ap;->l:Ljava/lang/String;

    iget v0, v3, Lct/ag;->d:I

    iput v0, v4, Lct/ap;->N:I

    invoke-virtual {v4}, Lct/ap;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->a()V

    :cond_8
    invoke-static {}, Lct/r;->a()Lct/r;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lct/r;->a()Lct/r;

    invoke-static {v4}, Lct/r;->a(Lct/ap;)V

    :cond_9
    invoke-static {}, Lct/bd;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_a
    return-void

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    :try_start_2
    iget-object v6, v3, Lct/u;->a:Lct/v;

    invoke-virtual {v0}, Lct/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v5, v4, v0}, Lct/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lct/u;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "updateApnUseTime... apnName:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_2

    :cond_e
    :try_start_3
    invoke-static {}, Lct/bc;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lct/ap;->f:Ljava/lang/String;

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_f
    move v0, v2

    goto/16 :goto_4

    :cond_10
    iget-wide v6, v4, Lct/ap;->E:J

    iput-wide v6, v4, Lct/ap;->D:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    :cond_11
    move v0, v1

    goto/16 :goto_6

    :cond_12
    move v0, v2

    goto :goto_7

    :cond_13
    move v0, v2

    goto :goto_8

    :cond_14
    move v0, v2

    goto :goto_9
.end method
