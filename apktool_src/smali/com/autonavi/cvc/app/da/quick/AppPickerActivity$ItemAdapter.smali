.class final Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;


# direct methods
.method private constructor <init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$1;)V
    .registers 3

    .line 275
    invoke-direct {p0, p1}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;-><init>(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$200(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$200(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    .line 294
    const-string p3, "check"

    const-string v0, "label"

    const-string v1, "icon"

    const/4 v2, 0x0

    if-nez p2, :cond_a0

    .line 295
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {p2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 297
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 298
    iget-object v4, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    const/16 v5, 0x18

    invoke-static {v4, v5}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v4

    iget-object v6, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    .line 299
    invoke-static {v8, v5}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v5

    iget-object v8, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-static {v8, v7}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    .line 298
    invoke-virtual {p2, v4, v6, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 300
    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    const/16 v7, 0x28

    invoke-static {v6, v7}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v6

    iget-object v8, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    .line 302
    invoke-static {v8, v7}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 301
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x1

    .line 306
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41800000    # 16.0f

    .line 307
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v5, 0x1

    .line 308
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 309
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 310
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 311
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-static {v6, v3}, Lcom/autonavi/cvc/app/da/quick/QuickDesk;->dp(Landroid/content/Context;I)I

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 312
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 315
    new-instance v3, Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    invoke-direct {v3, v4}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 317
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 318
    invoke-virtual {v3, p3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a2

    .line 321
    :cond_a0
    check-cast p2, Landroid/widget/LinearLayout;

    .line 323
    :goto_a2
    iget-object v3, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->items:Ljava/util/List;
    invoke-static {v3}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$200(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;

    .line 324
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 325
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 327
    iget-object v3, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_ca

    .line 328
    iget-object v3, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d0

    :cond_ca
    const v3, 0x1080093

    .line 330
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 332
    :goto_d0
    iget-object v1, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {v0}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 334
    iget-object p3, p0, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$ItemAdapter;->this$0:Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;

    # getter for: Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->selected:Ljava/util/Set;
    invoke-static {p3}, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;->access$300(Lcom/autonavi/cvc/app/da/quick/AppPickerActivity;)Ljava/util/Set;

    move-result-object p3

    iget-object p1, p1, Lcom/autonavi/cvc/app/da/quick/AppPickerActivity$Item;->pkg:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    const v2, -0xe4d5ca

    :cond_f5
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object p2
.end method
