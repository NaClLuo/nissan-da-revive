.class public final Lct/co;
.super Ljava/lang/Object;
.source "TL"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lct/co;->a:Z

    .line 158
    new-instance v0, Lct/co$1;

    invoke-direct {v0}, Lct/co$1;-><init>()V

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 305
    packed-switch p0, :pswitch_data_0

    .line 318
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 310
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method
