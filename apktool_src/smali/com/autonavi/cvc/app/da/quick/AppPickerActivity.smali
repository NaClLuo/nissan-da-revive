.class public Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;
.super Landroid/app/Activity;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;,
        Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;
    }
.end annotation


# instance fields
.field private adapter:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;

.field private final allItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private counter:Landroid/widget/TextView;

.field private final iconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;",
            ">;"
        }
    .end annotation
.end field

.field private query:Ljava/lang/String;

.field private final selected:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->allItems:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->query:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->iconCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->applyFilter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->adapter:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->updateCounter()V

    return-void
.end method

.method static synthetic access$700(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->allItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/lang/String;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->query:Ljava/lang/String;

    return-object p0
.end method

.method private applyFilter(Ljava/lang/String;)V
    .registers 7

    .line 256
    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->query:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 259
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_22

    .line 260
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;

    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->allItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5e

    .line 262
    :cond_22
    iget-object v1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->allItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;

    .line 263
    iget-object v3, v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->label:Ljava/lang/String;

    if-nez v3, :cond_3a

    move-object v3, v0

    goto :goto_40

    :cond_3a
    iget-object v3, v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->label:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 264
    :goto_40
    iget-object v4, v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    if-nez v4, :cond_46

    move-object v4, v0

    goto :goto_4c

    :cond_46
    iget-object v4, v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 265
    :goto_4c
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 266
    :cond_58
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 270
    :cond_5e
    :goto_5e
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->adapter:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;

    if-eqz p1, :cond_65

    .line 271
    invoke-virtual {p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->notifyDataSetChanged()V

    :cond_65
    return-void
.end method

.method private loadApps()V
    .registers 3

    .line 204
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;

    invoke-direct {v1, p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$6;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateCounter()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->counter:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / 12"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, -0xf1ece8

    .line 61
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 63
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 65
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0x18

    .line 66
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v6

    .line 67
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0xc

    invoke-static {p0, v8}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v9

    .line 66
    invoke-virtual {v1, v5, v6, v7, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 69
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 70
    const-string v6, "\u9009\u62e9\u684c\u9762\u5e94\u7528"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x1

    .line 71
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41b00000    # 22.0f

    .line 72
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v2, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->counter:Landroid/widget/TextView;

    const v7, -0x804920

    .line 77
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->counter:Landroid/widget/TextView;

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 79
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->counter:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 83
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    const-string v5, "\u6700\u591a 12 \u4e2a\uff0c\u5206\u4e24\u9875\u663e\u793a\uff0c\u957f\u6309\u684c\u9762\u56fe\u6807\u53ef\u91cd\u65b0\u9009\u62e9"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, -0x77665a

    .line 85
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 86
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 87
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    const/16 v11, 0x8

    invoke-static {p0, v11}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v1, v5, v2, v7, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 91
    const-string v5, "\u641c\u7d22\u5e94\u7528\u540d"

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const v5, -0x93857a

    .line 92
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 93
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setTextColor(I)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 94
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextSize(F)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    const v5, -0xe5dbd2

    .line 96
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/16 v5, 0xe

    .line 97
    invoke-static {p0, v5}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-static {p0, v11}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v12

    .line 98
    invoke-static {p0, v5}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v11}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v13

    .line 97
    invoke-virtual {v1, v7, v12, v5, v13}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 99
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 102
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 103
    invoke-static {p0, v11}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 104
    invoke-virtual {p1, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v5, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;

    invoke-direct {v5, p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 123
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1080014

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 125
    new-instance v5, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;)V

    iput-object v5, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->adapter:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;

    .line 126
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    new-instance v5, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;

    invoke-direct {v5, p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$2;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v2, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 149
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v5

    invoke-static {p0, v8}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v6

    .line 150
    invoke-static {p0, v4}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-static {p0, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v3

    .line 149
    invoke-virtual {v1, v5, v6, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 152
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 153
    const-string v4, "\u6e05\u7a7a"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    new-instance v4, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$3;

    invoke-direct {v4, p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$3;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 169
    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$4;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$4;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 179
    const-string v2, "\u4fdd\u5b58"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    new-instance v2, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;

    invoke-direct {v2, p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$5;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 191
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->setContentView(Landroid/view/View;)V

    .line 194
    iget-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;

    invoke-static {p0}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->loadApps()V

    .line 196
    invoke-direct {p0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->updateCounter()V

    return-void
.end method
