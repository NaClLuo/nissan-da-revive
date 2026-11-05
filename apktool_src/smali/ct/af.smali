.class public final Lct/af;
.super Ljava/lang/Object;

# interfaces
.implements Lct/ab;


# static fields
.field private static a:Lct/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lct/af;->a:Lct/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lct/af;
    .locals 2

    const-class v1, Lct/af;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lct/af;->a:Lct/af;

    if-nez v0, :cond_0

    new-instance v0, Lct/af;

    invoke-direct {v0}, Lct/af;-><init>()V

    sput-object v0, Lct/af;->a:Lct/af;

    :cond_0
    sget-object v0, Lct/af;->a:Lct/af;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lct/ag;)V
    .locals 2

    sget-object v0, Lct/p;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lct/o;->a()Lct/o;

    move-result-object v0

    new-instance v1, Lct/ai;

    invoke-direct {v1, p1}, Lct/ai;-><init>(Lct/ag;)V

    invoke-virtual {v0, v1}, Lct/o;->a(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p1}, Lct/ag;->toString()Ljava/lang/String;

    invoke-static {}, Lct/bd;->a()V

    return-void
.end method
