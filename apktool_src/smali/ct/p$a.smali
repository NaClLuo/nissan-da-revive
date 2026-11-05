.class final enum Lct/p$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lct/p$a;

.field public static final enum b:Lct/p$a;

.field private static enum c:Lct/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lct/p$a;

    const-string v1, "DEV"

    invoke-direct {v0, v1, v2}, Lct/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lct/p$a;->a:Lct/p$a;

    new-instance v0, Lct/p$a;

    const-string v1, "GRAY"

    invoke-direct {v0, v1, v3}, Lct/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lct/p$a;->c:Lct/p$a;

    new-instance v0, Lct/p$a;

    const-string v1, "OFFICIAL"

    invoke-direct {v0, v1, v4}, Lct/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lct/p$a;->b:Lct/p$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lct/p$a;

    sget-object v1, Lct/p$a;->a:Lct/p$a;

    aput-object v1, v0, v2

    sget-object v1, Lct/p$a;->c:Lct/p$a;

    aput-object v1, v0, v3

    sget-object v1, Lct/p$a;->b:Lct/p$a;

    aput-object v1, v0, v4

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
