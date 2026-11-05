.class public Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
.super Ljava/lang/Object;
.source "DaTouchEvent.java"


# static fields
.field public static final HOME_KEY_UP:I = 0x4

.field public static final TOUCH_UP:I = 0x3

.field public static final ZOOM_IN:I = 0x2

.field public static final ZOOM_OUT:I = 0x1


# instance fields
.field private touchEvent:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "event"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;->touchEvent:I

    .line 15
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;->touchEvent:I

    .line 16
    return-void
.end method


# virtual methods
.method public getTouchEvent()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;->touchEvent:I

    return v0
.end method
