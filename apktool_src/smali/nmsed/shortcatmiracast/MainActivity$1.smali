.class Lnmsed/shortcatmiracast/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnmsed/shortcatmiracast/MainActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnmsed/shortcatmiracast/MainActivity;


# direct methods
.method constructor <init>(Lnmsed/shortcatmiracast/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnmsed/shortcatmiracast/MainActivity$1;->this$0:Lnmsed/shortcatmiracast/MainActivity;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lnmsed/shortcatmiracast/MainActivity$1;->this$0:Lnmsed/shortcatmiracast/MainActivity;

    invoke-static {v0}, Lnmsed/shortcatmiracast/ShortcutMiracast;->startMiracastDeviceList(Landroid/content/Context;)I

    .line 40
    return-void
.end method
