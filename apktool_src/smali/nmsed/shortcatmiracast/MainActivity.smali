.class public Lnmsed/shortcatmiracast/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field private androidVersion:Landroid/widget/TextView;

.field private productModel:Landroid/widget/TextView;

.field private start:Landroid/widget/Button;

.field private startPattern:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 27
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lnmsed/shortcatmiracast/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->productModel:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lnmsed/shortcatmiracast/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->androidVersion:Landroid/widget/TextView;

    .line 29
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lnmsed/shortcatmiracast/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->startPattern:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lnmsed/shortcatmiracast/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->start:Landroid/widget/Button;

    .line 32
    iget-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->productModel:Landroid/widget/TextView;

    invoke-static {}, Lnmsed/shortcatmiracast/ShortcutMiracast;->getPhoneType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->androidVersion:Landroid/widget/TextView;

    invoke-static {}, Lnmsed/shortcatmiracast/ShortcutMiracast;->getAndroidOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->startPattern:Landroid/widget/TextView;

    invoke-static {}, Lnmsed/shortcatmiracast/ShortcutMiracast;->getStartPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lnmsed/shortcatmiracast/MainActivity;->start:Landroid/widget/Button;

    new-instance v1, Lnmsed/shortcatmiracast/MainActivity$1;

    invoke-direct {v1, p0}, Lnmsed/shortcatmiracast/MainActivity$1;-><init>(Lnmsed/shortcatmiracast/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lnmsed/shortcatmiracast/MainActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lnmsed/shortcatmiracast/MainActivity;->initView()V

    .line 24
    return-void
.end method
