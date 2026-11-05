.class public Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;
.super Landroid/view/View;
.source "MyLetterListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;
    }
.end annotation


# instance fields
.field b:[Ljava/lang/String;

.field choose:I

.field onTouchingLetterChangedListener:Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;

.field paint:Landroid/graphics/Paint;

.field showBkg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    .line 24
    iput-boolean v3, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->showBkg:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    .line 24
    iput-boolean v3, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->showBkg:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    .line 24
    iput-boolean v3, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->showBkg:Z

    .line 29
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 75
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 76
    .local v4, "y":F
    iget v3, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    .line 77
    .local v3, "oldChoose":I
    iget-object v2, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->onTouchingLetterChangedListener:Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;

    .line 78
    .local v2, "listener":Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v4, v5

    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 80
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return v7

    .line 82
    :pswitch_0
    iput-boolean v7, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->showBkg:Z

    .line 83
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 85
    if-lez v1, :cond_0

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 87
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 88
    iput v1, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    .line 89
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->invalidate()V

    goto :goto_0

    .line 95
    :pswitch_1
    if-eq v3, v1, :cond_0

    if-eqz v2, :cond_0

    .line 97
    if-lez v1, :cond_0

    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 99
    iget-object v5, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-interface {v2, v5}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 100
    iput v1, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    .line 101
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->invalidate()V

    goto :goto_0

    .line 106
    :pswitch_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->showBkg:Z

    .line 107
    const/4 v5, -0x1

    iput v5, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    .line 108
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->invalidate()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget-boolean v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->showBkg:Z

    if-eqz v6, :cond_0

    .line 47
    const-string v6, "#40000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->getHeight()I

    move-result v0

    .line 51
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->getWidth()I

    move-result v3

    .line 52
    .local v3, "width":I
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    array-length v6, v6

    div-int v2, v0, v6

    .line 53
    .local v2, "singleHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 55
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 57
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->choose:I

    if-ne v1, v6, :cond_1

    .line 60
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    const-string v7, "#3399ff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 63
    :cond_1
    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    .line 64
    .local v4, "xPos":F
    mul-int v6, v2, v1

    add-int/2addr v6, v2

    int-to-float v5, v6

    .line 65
    .local v5, "yPos":F
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->b:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->reset()V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v4    # "xPos":F
    .end local v5    # "yPos":F
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchingLetterChangedListener(Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;)V
    .locals 0
    .param p1, "onTouchingLetterChangedListener"    # Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView;->onTouchingLetterChangedListener:Lcom/autonavi/cvc/app/da/ui/adapter/MyLetterListView$OnTouchingLetterChangedListener;

    .line 123
    return-void
.end method
