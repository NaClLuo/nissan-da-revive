.class final Lct/cd$a;
.super Ljava/lang/Object;
.source "TL"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/Intent;

.field private synthetic c:Lct/cd;


# direct methods
.method public constructor <init>(Lct/cd;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lct/cd$a;->c:Lct/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lct/cd$a;->a:Landroid/content/Context;

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lct/cd$a;->b:Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lct/cd$a;->b:Landroid/content/Intent;

    const-string v1, "noConnectivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lct/cd$a;->c:Lct/cd;

    invoke-static {v0}, Lct/cd;->a(Lct/cd;)Lct/bk;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lct/cd$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lct/cd$a;->c:Lct/cd;

    invoke-static {v0}, Lct/cd;->a(Lct/cd;)Lct/bk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lct/cd$a;->c:Lct/cd;

    invoke-static {v0}, Lct/cd;->a(Lct/cd;)Lct/bk;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lct/bk;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method
