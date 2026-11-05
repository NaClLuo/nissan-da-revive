.class public final Lct/aa;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:[B

.field public d:Ljava/io/InputStream;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lct/aa;->a:I

    iput-object v1, p0, Lct/aa;->b:Ljava/lang/String;

    iput-object v1, p0, Lct/aa;->c:[B

    iput-object v1, p0, Lct/aa;->d:Ljava/io/InputStream;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lct/aa;->g:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lct/aa;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lct/aa;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lct/aa;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lct/aa;->c:[B

    return-object v0
.end method
