.class public final Lct/x;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lct/z;)Lct/aa;
    .locals 6

    invoke-static {}, Lct/bd;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    new-instance v0, Lct/ac;

    invoke-direct {v0, p0}, Lct/ac;-><init>(Lct/z;)V

    invoke-virtual {v0}, Lct/ac;->a()Lct/aa;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "doRequest,end... costTime:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->b()V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lct/aa;

    invoke-direct {v0}, Lct/aa;-><init>()V

    const/16 v1, -0x13

    iput v1, v0, Lct/aa;->a:I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[B)Lct/z;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lct/ah;
        }
    .end annotation

    invoke-static {p0, p1}, Lct/x;->b(Ljava/lang/String;[B)Lct/z;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;[B)Lct/z;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lct/ah;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {p0}, Lct/be;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    aput v3, v1, v2

    new-instance v2, Lct/z;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lct/z;-><init>(Ljava/lang/String;[I)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v2, Lct/z;->a:Z

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lct/z;->g:Ljava/lang/String;

    iput-object p1, v2, Lct/z;->j:[B

    iput-object p0, v2, Lct/z;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v0, Lct/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url format error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lct/ah;-><init>(Ljava/lang/String;)V

    throw v0
.end method
