.class public Lcom/autonavi/cvc/app/da/source/HomeInfo;
.super Ljava/lang/Object;
.source "HomeInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;
    }
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public isDefault:Z

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public runningInfo:Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/app/ActivityManager;)V
    .locals 1
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->isDefault:Z

    .line 19
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->name:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->packageName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->label:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-virtual {p0, p3}, Lcom/autonavi/cvc/app/da/source/HomeInfo;->calcHomeRunningInfo(Landroid/app/ActivityManager;)V

    .line 25
    return-void
.end method


# virtual methods
.method public calcHomeRunningInfo(Landroid/app/ActivityManager;)V
    .locals 1
    .param p1, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;->getHomeRunningInfo(Ljava/lang/String;Landroid/app/ActivityManager;)Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->runningInfo:Lcom/autonavi/cvc/app/da/source/HomeInfo$HomeRunningInfo;

    .line 33
    return-void
.end method

.method public checkDefault(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/source/HomeInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
