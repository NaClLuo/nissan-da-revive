.class public final Lct/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lct/p$a;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:I

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field private static h:Lct/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lct/p$a;->b:Lct/p$a;

    sput-object v0, Lct/p;->h:Lct/p$a;

    const/4 v0, 0x0

    sput-object v0, Lct/p;->a:Landroid/content/Context;

    const-string v0, ""

    sput-object v0, Lct/p;->b:Ljava/lang/String;

    const-string v0, "null"

    sput-object v0, Lct/p;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lct/p;->d:I

    const-string v0, ""

    sput-object v0, Lct/p;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lct/p;->f:Ljava/lang/String;

    const-string v0, "1.6.4.1101"

    sput-object v0, Lct/p;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lct/p;->a:Landroid/content/Context;

    sput-object p1, Lct/p;->b:Ljava/lang/String;

    sput-object p3, Lct/p;->e:Ljava/lang/String;

    sput-object p2, Lct/p;->f:Ljava/lang/String;

    const-string v0, "1.6.4.1101"

    sput-object v0, Lct/p;->g:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lct/p;->c:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lct/p;->d:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    sget-object v0, Lct/p;->h:Lct/p$a;

    sget-object v1, Lct/p$a;->a:Lct/p$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
