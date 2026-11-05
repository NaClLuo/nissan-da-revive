.class public final Lcom/autonavi/cvc/app/da/quick/QuickDesk;
.super Ljava/lang/Object;
.source "QuickDesk.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "pkgs"

.field public static final PAGES:I = 0x2

.field public static final PAGE_SIZE:I = 0x6

.field public static final PREF:Ljava/lang/String; = "da_quick_apps"

.field public static final SLOTS:I = 0xc

.field private static sPage:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .registers 1

    .line 30
    sput p0, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->sPage:I

    return p0
.end method

.method static synthetic access$100(Landroid/app/Activity;I)V
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->bindDots(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->openPicker(Landroid/app/Activity;)V

    return-void
.end method

.method private static addCastButton(Landroid/app/Activity;)V
    .registers 7

    .line 249
    const-string v0, "da_cast_btn"

    const v1, 0x1020002

    :try_start_5
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_e

    return-void

    .line 253
    :cond_e
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 255
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    :cond_17
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 260
    const-string v0, "\u6295\u5c4f"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, -0x1

    .line 261
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 262
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, 0x11

    .line 263
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x12

    .line 264
    invoke-static {p0, v0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x9

    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 266
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    .line 267
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v3, 0x26ffffff

    .line 268
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v3, 0xc

    .line 269
    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v4, 0x1

    .line 270
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v4

    const v5, 0x4dffffff    # 5.3687088E8f

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 271
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 273
    new-instance v0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$6;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x35

    .line 292
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 293
    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 294
    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 295
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_91
    .catchall {:try_start_5 .. :try_end_91} :catchall_91

    :catchall_91
    return-void
.end method

.method private static bindDots(Landroid/app/Activity;I)V
    .registers 8

    .line 143
    const-string v0, "drawable"

    :try_start_2
    const-string v1, "centerWidget"

    invoke-static {p0, v1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_11

    return-void

    .line 147
    :cond_11
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "page01_select"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "page01"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz v2, :cond_52

    if-nez p0, :cond_32

    goto :goto_52

    :cond_32
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 153
    :goto_34
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_52

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 155
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_4f

    :cond_45
    if-ne v3, p1, :cond_49

    move v5, v2

    goto :goto_4a

    :cond_49
    move v5, p0

    .line 158
    :goto_4a
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_4d
    .catchall {:try_start_2 .. :try_end_4d} :catchall_52

    add-int/lit8 v3, v3, 0x1

    :goto_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :catchall_52
    :cond_52
    :goto_52
    return-void
.end method

.method private static cell(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;
    .registers 11

    .line 172
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 173
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    .line 174
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v3, 0x4

    .line 175
    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4, v6, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 177
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x32

    invoke-static {p0, v7}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v8

    invoke-static {p0, v7}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v5, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v5, 0x1080093

    .line 180
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v7, -0x1

    .line 183
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41500000    # 13.0f

    .line 184
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 186
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x60

    .line 188
    invoke-static {p0, v1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 189
    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v5, v6, v1, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 191
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eqz p1, :cond_a4

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_75

    goto :goto_a4

    .line 206
    :cond_75
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    :try_start_79
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_82

    .line 210
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    :cond_82
    invoke-virtual {v1, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_8e

    goto :goto_93

    .line 214
    :catchall_8e
    const-string v2, "\u672a\u5b89\u88c5"

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_93
    new-instance v2, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;

    invoke-direct {v2, v1, p1, p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk$4;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance p1, Lcom/autonavi/cvc/app/da/quick/QuickDesk$5;

    invoke-direct {p1, p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object v0

    .line 195
    :cond_a4
    :goto_a4
    const-string p1, "\u6dfb\u52a0"

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x108002b

    .line 196
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    new-instance p1, Lcom/autonavi/cvc/app/da/quick/QuickDesk$3;

    invoke-direct {p1, p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private static cellLp()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .line 166
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v1, 0x10

    .line 167
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method static dp(Landroid/content/Context;I)I
    .registers 2

    int-to-float p1, p1

    .line 340
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static id(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static load(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :try_start_5
    const-string v1, "da_quick_apps"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "pkgs"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_35

    .line 312
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 313
    array-length v1, p0

    :goto_23
    if-ge v2, v1, :cond_35

    aget-object v3, p0, v2

    if-eqz v3, :cond_32

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_32

    .line 315
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_35

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :catchall_35
    :cond_35
    return-object v0
.end method

.method private static openPicker(Landroid/app/Activity;)V
    .registers 3

    .line 302
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    return-void
.end method

.method public static overlay(Landroid/app/Activity;)V
    .registers 12

    .line 46
    const-string v0, "da_quick_pager"

    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->addCastButton(Landroid/app/Activity;)V

    .line 48
    :try_start_5
    const-string v1, "desk_app_link"

    invoke-static {p0, v1}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_12

    return-void

    .line 52
    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_1b

    return-void

    .line 56
    :cond_1b
    const-string v3, "da_quick_bar"

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 61
    :cond_26
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_2f
    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3a
    const/4 v7, 0x2

    if-ge v6, v7, :cond_73

    .line 69
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v8, 0x10

    .line 71
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v8, 0x0

    :goto_4b
    const/4 v9, 0x6

    if-ge v8, v9, :cond_6d

    mul-int/lit8 v9, v6, 0x6

    add-int/2addr v9, v8

    .line 74
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5e

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_5f

    :cond_5e
    const/4 v9, 0x0

    .line 75
    :goto_5f
    invoke-static {p0, v9}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->cell(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    invoke-static {}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->cellLp()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 77
    :cond_6d
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 80
    :cond_73
    new-instance v3, Landroid/support/v4/view/ViewPager;

    invoke-direct {v3, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0x54

    .line 82
    invoke-static {p0, v0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setMinimumHeight(I)V

    .line 83
    new-instance v0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$1;

    invoke-direct {v0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 106
    new-instance v0, Lcom/autonavi/cvc/app/da/quick/QuickDesk$2;

    invoke-direct {v0, p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x2

    invoke-direct {v0, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    .line 126
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 127
    const-string v4, "buttom_layout"

    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_ab

    .line 129
    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_ab
    const/16 v4, 0x8

    .line 131
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    sget v0, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->sPage:I

    if-lez v0, :cond_ba

    .line 134
    invoke-virtual {v3, v0, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 136
    :cond_ba
    sget v0, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->sPage:I

    invoke-static {p0, v0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->bindDots(Landroid/app/Activity;I)V
    :try_end_bf
    .catchall {:try_start_5 .. :try_end_bf} :catchall_bf

    :catchall_bf
    return-void
.end method

.method public static save(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 326
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    const/16 v3, 0xc

    if-ge v2, v3, :cond_24

    if-lez v2, :cond_18

    const/16 v3, 0x2c

    .line 328
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 330
    :cond_18
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 332
    :cond_24
    const-string p1, "da_quick_apps"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pkgs"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
