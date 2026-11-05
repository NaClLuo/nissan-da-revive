.class final Lct/cf$a;
.super Ljava/lang/Object;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/cf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final d:Lct/cf$a;


# instance fields
.field final a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:J

.field private final e:I

.field private final f:[B

.field private final g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lct/cf$a;

    invoke-direct {v0}, Lct/cf$a;-><init>()V

    sput-object v0, Lct/cf$a;->d:Lct/cf$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lct/cf$a;->h:I

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lct/cf$a;->e:I

    .line 334
    iput-object v1, p0, Lct/cf$a;->f:[B

    .line 335
    iput-object v1, p0, Lct/cf$a;->g:Ljava/lang/String;

    .line 336
    iput-object v1, p0, Lct/cf$a;->a:Ljava/lang/Object;

    .line 337
    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/4 v0, 0x1

    iput v0, p0, Lct/cf$a;->h:I

    .line 341
    iput p1, p0, Lct/cf$a;->e:I

    .line 342
    iput-object p2, p0, Lct/cf$a;->f:[B

    .line 343
    iput-object p3, p0, Lct/cf$a;->g:Ljava/lang/String;

    .line 344
    iput-object p4, p0, Lct/cf$a;->a:Ljava/lang/Object;

    .line 345
    return-void
.end method

.method static synthetic a(Lct/cf$a;)[B
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lct/cf$a;->f:[B

    return-object v0
.end method

.method static synthetic b(Lct/cf$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lct/cf$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lct/cf$a;)I
    .locals 2

    .prologue
    .line 317
    iget v0, p0, Lct/cf$a;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lct/cf$a;->h:I

    return v0
.end method

.method static synthetic d(Lct/cf$a;)I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lct/cf$a;->e:I

    return v0
.end method

.method static synthetic e(Lct/cf$a;)I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lct/cf$a;->h:I

    return v0
.end method
