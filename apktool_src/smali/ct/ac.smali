.class public final Lct/ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/ac$a;
    }
.end annotation


# instance fields
.field private a:Lct/ab;

.field private b:Lct/ad;

.field private c:Lct/ae;

.field private d:Ljava/util/List;

.field private e:I

.field private f:I

.field private g:Lct/s;

.field private h:Ljava/lang/String;

.field private i:Lct/s;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Lct/z;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lct/ag;

.field private q:Lct/aa;

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>(Lct/z;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lct/ac;->e:I

    iput v0, p0, Lct/ac;->f:I

    iput-boolean v0, p0, Lct/ac;->l:Z

    iput-boolean v0, p0, Lct/ac;->s:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lct/af;->a()Lct/af;

    move-result-object v0

    iput-object v0, p0, Lct/ac;->a:Lct/ab;

    check-cast p1, Lct/z;

    iput-object p1, p0, Lct/ac;->m:Lct/z;

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lct/z;->l:J

    return-void
.end method

.method private a(Lct/ac$a;Ljava/lang/Exception;)I
    .locals 3

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/ag;->p:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lct/ac;->q:Lct/aa;

    iget v2, v2, Lct/aa;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lct/be;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/ag;->q:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v0, v0, Lct/ag;->q:Ljava/lang/String;

    const-string v1, "Permission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/16 v1, -0x12

    iput v1, v0, Lct/aa;->a:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lct/bc;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "info.3g.qq.com"

    invoke-static {v0}, Lct/i;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of v0, p2, Ljava/io/EOFException;

    if-eqz v0, :cond_1

    const/16 v0, -0x1f

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/io/IOException;

    if-eqz v0, :cond_2

    const/16 v0, -0x1e

    goto :goto_0

    :cond_2
    instance-of v0, p2, Ljava/net/SocketException;

    if-eqz v0, :cond_3

    const/16 v0, -0xc

    goto :goto_0

    :cond_3
    instance-of v0, p2, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_4

    const/16 v0, -0x16

    goto :goto_0

    :cond_4
    instance-of v0, p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_5

    const/16 v0, -0x17

    goto :goto_0

    :cond_5
    const/4 v0, -0x3

    goto :goto_0

    :cond_6
    const/16 v0, -0x11

    goto :goto_0

    :cond_7
    const/4 v0, -0x4

    goto :goto_0
.end method

.method private a(Lct/aa;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v0, 0x0

    :try_start_0
    iget v1, p1, Lct/aa;->a:I

    iget-object v2, p0, Lct/ac;->p:Lct/ag;

    iget-object v3, p1, Lct/aa;->e:Ljava/lang/String;

    iput-object v3, v2, Lct/ag;->t:Ljava/lang/String;

    iget-object v2, p0, Lct/ac;->p:Lct/ag;

    iget-wide v4, p1, Lct/aa;->f:J

    iput-wide v4, v2, Lct/ag;->o:J

    sparse-switch v1, :sswitch_data_0

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iput v1, v0, Lct/aa;->a:I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p1, Lct/aa;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lct/ac;->p:Lct/ag;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lct/ag;->m:Z

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget-boolean v2, v2, Lct/z;->h:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget v2, v2, Lct/z;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-array v3, v2, [B
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-ge v0, v2, :cond_1

    sub-int v4, v2, v0

    :try_start_2
    invoke-virtual {v1, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v6, :cond_1

    add-int/2addr v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    :try_start_4
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/4 v1, -0x8

    iput v1, v0, Lct/aa;->a:I

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemory buffSize:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/ag;->q:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    int-to-long v2, v2

    iput-wide v2, v0, Lct/ag;->o:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ac;->l:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lct/ac$a;->a:Lct/ac$a;

    invoke-direct {p0, v1, v0}, Lct/ac;->a(Lct/ac$a;Ljava/lang/Exception;)I

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lct/ac;->q:Lct/aa;

    const/4 v3, -0x1

    iput v3, v2, Lct/aa;->a:I

    iget-object v2, p0, Lct/ac;->p:Lct/ag;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Response data too long,size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/ag;->q:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :goto_4
    :try_start_7
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iget v0, v0, Lct/aa;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    const/4 v1, 0x0

    iput v1, v0, Lct/ag;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ac;->l:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :cond_2
    :try_start_8
    iget-object v4, p0, Lct/ac;->q:Lct/aa;

    new-array v5, v0, [B

    iput-object v5, v4, Lct/aa;->c:[B
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const/4 v2, 0x0

    :try_start_9
    iget-object v4, p0, Lct/ac;->q:Lct/aa;

    iget-object v4, v4, Lct/aa;->c:[B

    const/4 v5, 0x0

    invoke-static {v3, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/4 v2, 0x0

    iput v2, v0, Lct/aa;->a:I

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lct/ag;->D:J

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :goto_5
    :try_start_b
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/4 v1, -0x8

    iput v1, v0, Lct/aa;->a:I

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OutOfMemory buffSize:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/ag;->q:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ac;->l:Z

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_3
    invoke-static {}, Lct/bd;->b()V

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iput-object v1, v0, Lct/aa;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/4 v1, 0x0

    iput v1, v0, Lct/aa;->a:I

    goto :goto_4

    :sswitch_1
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/16 v1, -0x15

    iput v1, v0, Lct/aa;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ac;->s:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-object v2, v1, Lct/ag;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lct/ac;->q:Lct/aa;

    iget-object v2, v2, Lct/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lct/ag;->k:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lct/ag;->j:Z

    iget-object v0, p0, Lct/ac;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lct/ac;->h:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/4 v1, -0x6

    iput v1, v0, Lct/aa;->a:I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lct/ac;->m:Lct/z;

    iget-boolean v0, v0, Lct/z;->p:Z

    if-nez v0, :cond_0

    invoke-static {}, Lct/bd;->b()V

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iget-object v1, p0, Lct/ac;->h:Ljava/lang/String;

    iput-object v1, v0, Lct/aa;->b:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const/4 v1, -0x7

    iput v1, v0, Lct/aa;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ac;->l:Z

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iput v1, v0, Lct/aa;->a:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xcc -> :sswitch_2
        0x12d -> :sswitch_1
        0x12e -> :sswitch_1
        0x12f -> :sswitch_1
        0x198 -> :sswitch_2
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    invoke-virtual {v0}, Lct/z;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lct/ac;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lct/bc;->g()Ljava/net/Proxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p0, Lct/ac;->e:I

    if-le v2, v5, :cond_0

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    :goto_0
    iget-object v0, p0, Lct/ac;->c:Lct/ae;

    iget v0, v0, Lct/ae;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lct/ac;->c:Lct/ae;

    iget v0, v0, Lct/ae;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lct/ac;->m:Lct/z;

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    iget-object v0, v0, Lct/z;->j:[B

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lct/ag;->A:J

    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lct/ag;->B:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    :try_start_1
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_3

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lct/ag;->z:J

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lct/ag;->C:J

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v0, Lct/aa;->a:I

    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_4
    iget-object v1, p0, Lct/ac;->q:Lct/aa;

    iput-object v0, v1, Lct/aa;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v4, v1

    iput-wide v4, v0, Lct/aa;->f:J

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/aa;->e:Ljava/lang/String;

    const-string v0, "Location"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lct/ac;->h:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    const-string v1, "Location"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/aa;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v3, p0, Lct/ac;->q:Lct/aa;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v3, Lct/aa;->g:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    invoke-direct {p0, v0}, Lct/ac;->a(Lct/aa;)V

    return-void

    :catch_2
    move-exception v0

    goto/16 :goto_3
.end method


# virtual methods
.method public final a()Lct/aa;
    .locals 10

    const/4 v9, 0x6

    const/4 v8, -0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lct/ad;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    invoke-direct {v0, v1}, Lct/ad;-><init>(Lct/z;)V

    iput-object v0, p0, Lct/ac;->b:Lct/ad;

    new-instance v0, Lct/ae;

    invoke-static {}, Lct/bc;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lct/ae;-><init>(I)V

    iput-object v0, p0, Lct/ac;->c:Lct/ae;

    iget-object v0, p0, Lct/ac;->b:Lct/ad;

    iget-object v0, v0, Lct/ad;->c:Ljava/util/List;

    iput-object v0, p0, Lct/ac;->d:Ljava/util/List;

    iget-object v0, p0, Lct/ac;->b:Lct/ad;

    iget-object v0, v0, Lct/ad;->a:Lct/s;

    iput-object v0, p0, Lct/ac;->i:Lct/s;

    iget-object v0, p0, Lct/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lct/ac;->j:I

    iget-object v0, p0, Lct/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lct/ac;->k:I

    :cond_0
    :goto_0
    iget v0, p0, Lct/ac;->e:I

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget v1, v1, Lct/z;->o:I

    if-gt v0, v1, :cond_16

    iget-boolean v0, p0, Lct/ac;->l:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lct/ac;->s:Z

    if-nez v0, :cond_1

    new-instance v0, Lct/ag;

    invoke-direct {v0}, Lct/ag;-><init>()V

    iput-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-wide v2, v1, Lct/z;->k:J

    iput-wide v2, v0, Lct/ag;->x:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-wide v2, v1, Lct/z;->l:J

    iput-wide v2, v0, Lct/ag;->y:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget v1, p0, Lct/ac;->e:I

    iput v1, v0, Lct/ag;->l:I

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget-object v2, v2, Lct/z;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lct/ac;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lct/ag;->f:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lct/ac;->e:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lct/ag;->F:J

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lct/ac;->r:J

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    new-instance v0, Lct/aa;

    invoke-direct {v0}, Lct/aa;-><init>()V

    iput-object v0, p0, Lct/ac;->q:Lct/aa;

    :try_start_0
    iget v0, p0, Lct/ac;->e:I

    iget v1, p0, Lct/ac;->k:I

    rem-int/2addr v0, v1

    iget-object v1, p0, Lct/ac;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/s;

    iput-object v0, p0, Lct/ac;->g:Lct/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget-wide v2, v2, Lct/z;->l:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget v2, v2, Lct/z;->n:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lct/ac;->d:Ljava/util/List;

    iget-object v1, p0, Lct/ac;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lct/s;

    iput-object v0, p0, Lct/ac;->g:Lct/s;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ac;->n:Z

    iget-object v0, p0, Lct/ac;->c:Lct/ae;

    const/16 v1, 0xa

    iput v1, v0, Lct/ae;->b:I

    iget-object v0, p0, Lct/ac;->c:Lct/ae;

    const/16 v1, 0xa

    iput v1, v0, Lct/ae;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct/ac;->l:Z

    :cond_3
    iget-object v0, p0, Lct/ac;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lct/ac;->g:Lct/s;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-boolean v1, v1, Lct/z;->a:Z

    if-eqz v1, :cond_a

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    iget-object v0, v0, Lct/z;->d:Ljava/lang/String;

    :cond_4
    :goto_1
    iput-object v0, p0, Lct/ac;->o:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->o:Ljava/lang/String;

    iput-object v1, v0, Lct/ag;->b:Ljava/lang/String;

    :goto_2
    iget v0, p0, Lct/ac;->e:I

    iget v1, p0, Lct/ac;->k:I

    rem-int/2addr v0, v1

    iget v1, p0, Lct/ac;->j:I

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    const-string v1, "Host"

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget-object v2, v2, Lct/z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lct/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    const-string v1, "x-tx-host"

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget-object v2, v2, Lct/z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lct/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lct/ac;->m:Lct/z;

    const-string v1, "Halley-sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " sdk:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lct/p;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lct/ac;->m:Lct/z;

    iget-object v3, v3, Lct/z;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lct/ac;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lct/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lct/bc;->d:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lct/ac;->e:I

    if-le v0, v7, :cond_6

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    const-string v1, "X-Online-Host"

    iget-object v2, p0, Lct/ac;->m:Lct/z;

    iget-object v2, v2, Lct/z;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lct/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lct/ac;->m:Lct/z;

    invoke-virtual {v0}, Lct/z;->b()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lct/ac;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lct/ac;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput v6, p0, Lct/ac;->f:I

    iget v0, p0, Lct/ac;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ac;->e:I

    :cond_7
    :goto_3
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Lct/ac;->r:J

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Lct/ac;->r:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lct/ag;->E:J

    :try_start_1
    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->b:Lct/ad;

    iget-object v1, v1, Lct/ad;->b:Ljava/lang/String;

    iput-object v1, v0, Lct/ag;->g:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->i:Lct/s;

    iput-object v1, v0, Lct/ag;->i:Lct/s;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lct/ag;->m:Z

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->g:Lct/s;

    iput-object v1, v0, Lct/ag;->h:Lct/s;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-object v1, v1, Lct/z;->c:Ljava/lang/String;

    iput-object v1, v0, Lct/ag;->a:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-boolean v1, v1, Lct/z;->a:Z

    iput-boolean v1, v0, Lct/ag;->e:Z

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget v1, v1, Lct/z;->o:I

    iput v1, v0, Lct/ag;->d:I

    iget v0, p0, Lct/ac;->e:I

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget v1, v1, Lct/z;->o:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lct/ag;->m:Z

    :cond_8
    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-boolean v1, p0, Lct/ac;->n:Z

    iput-boolean v1, v0, Lct/ag;->s:Z

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->q:Lct/aa;

    iget v1, v1, Lct/aa;->a:I

    iput v1, v0, Lct/ag;->n:I

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->h:Ljava/lang/String;

    iput-object v1, v0, Lct/ag;->k:Ljava/lang/String;

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    iget-object v0, p0, Lct/ac;->m:Lct/z;

    iget-object v0, v0, Lct/z;->j:[B

    if-eqz v0, :cond_15

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-object v1, v1, Lct/z;->j:[B

    array-length v1, v1

    int-to-long v2, v1

    iput-wide v2, v0, Lct/ag;->c:J

    :goto_5
    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-boolean v0, v0, Lct/ag;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget v0, v0, Lct/ag;->n:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    const/4 v1, 0x1

    iput v1, v0, Lct/ag;->r:I

    :cond_9
    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-boolean v1, v1, Lct/z;->i:Z

    iput-boolean v1, v0, Lct/ag;->w:Z

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->y:J

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v4, v1, Lct/ag;->x:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lct/ag;->G:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->z:J

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v4, v1, Lct/ag;->y:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lct/ag;->H:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->B:J

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v4, v1, Lct/ag;->A:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lct/ag;->I:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->C:J

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v4, v1, Lct/ag;->z:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lct/ag;->J:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->D:J

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v4, v1, Lct/ag;->C:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lct/ag;->K:J

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->E:J

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v4, v1, Lct/ag;->y:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lct/ag;->L:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "taskKey:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-object v1, v1, Lct/ag;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\ncreateWaitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->G:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\npreTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->H:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\ndnsTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nconnectTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->I:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nreqResTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->J:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nwaitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\nreadDataTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->K:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\ntotalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    iget-wide v2, v1, Lct/ag;->L:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\ncostTimeReq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->a()V

    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iget v0, v0, Lct/aa;->a:I

    const/16 v1, -0x15

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lct/ac;->a:Lct/ab;

    iget-object v1, p0, Lct/ac;->p:Lct/ag;

    invoke-interface {v0, v1}, Lct/ab;->a(Lct/ag;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-boolean v1, v1, Lct/z;->a:Z

    if-nez v1, :cond_c

    iget v1, v0, Lct/s;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lct/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lct/s;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lct/ac;->m:Lct/z;

    iget-object v1, v1, Lct/z;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lct/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    iget v1, v0, Lct/s;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lct/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":443"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lct/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lct/ac;->h:Ljava/lang/String;

    iput-object v0, p0, Lct/ac;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lct/ac;->h:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Lct/bd;->d()V

    iget-object v1, p0, Lct/ac;->q:Lct/aa;

    sget-object v2, Lct/ac$a;->b:Lct/ac$a;

    invoke-direct {p0, v2, v0}, Lct/ac;->a(Lct/ac$a;Ljava/lang/Exception;)I

    move-result v0

    iput v0, v1, Lct/aa;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lct/ac;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iput v6, p0, Lct/ac;->f:I

    iget v0, p0, Lct/ac;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ac;->e:I

    :cond_10
    :goto_7
    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Lct/ac;->r:J

    goto/16 :goto_4

    :cond_11
    iget v0, p0, Lct/ac;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ac;->f:I

    iget v0, p0, Lct/ac;->f:I

    if-le v0, v9, :cond_7

    iget v0, p0, Lct/ac;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ac;->e:I

    iput v6, p0, Lct/ac;->f:I

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iput v8, v0, Lct/aa;->a:I

    goto/16 :goto_3

    :cond_12
    iget v0, p0, Lct/ac;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ac;->f:I

    iget v0, p0, Lct/ac;->f:I

    if-le v0, v9, :cond_10

    iget v0, p0, Lct/ac;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lct/ac;->e:I

    iput v6, p0, Lct/ac;->f:I

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    iput v8, v0, Lct/aa;->a:I

    goto :goto_7

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lct/ac;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    iput v6, p0, Lct/ac;->f:I

    iget v1, p0, Lct/ac;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lct/ac;->e:I

    :cond_13
    :goto_8
    iget-object v1, p0, Lct/ac;->q:Lct/aa;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v2, p0, Lct/ac;->r:J

    throw v0

    :cond_14
    iget v1, p0, Lct/ac;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lct/ac;->f:I

    iget v1, p0, Lct/ac;->f:I

    if-le v1, v9, :cond_13

    iget v1, p0, Lct/ac;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lct/ac;->e:I

    iput v6, p0, Lct/ac;->f:I

    iget-object v1, p0, Lct/ac;->q:Lct/aa;

    iput v8, v1, Lct/aa;->a:I

    goto :goto_8

    :cond_15
    :try_start_4
    iget-object v0, p0, Lct/ac;->p:Lct/ag;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lct/ag;->c:J
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    :cond_16
    iget-object v0, p0, Lct/ac;->m:Lct/z;

    iget-object v0, p0, Lct/ac;->q:Lct/aa;

    return-object v0
.end method
