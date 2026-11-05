.class public final Lct/ae;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/16 v2, 0x14

    const/16 v1, 0xf

    const/16 v0, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_0

    iput v1, p0, Lct/ae;->a:I

    iput v1, p0, Lct/ae;->b:I

    :goto_0
    return-void

    :pswitch_0
    iput v0, p0, Lct/ae;->a:I

    iput v0, p0, Lct/ae;->b:I

    goto :goto_0

    :pswitch_1
    iput v0, p0, Lct/ae;->a:I

    iput v0, p0, Lct/ae;->b:I

    goto :goto_0

    :pswitch_2
    iput v1, p0, Lct/ae;->a:I

    iput v1, p0, Lct/ae;->b:I

    goto :goto_0

    :pswitch_3
    iput v2, p0, Lct/ae;->a:I

    iput v2, p0, Lct/ae;->b:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
