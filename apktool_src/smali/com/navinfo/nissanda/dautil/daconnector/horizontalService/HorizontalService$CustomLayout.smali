.class Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;
.super Landroid/view/WindowManager$LayoutParams;
.source "HorizontalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;


# direct methods
.method constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;I)V
    .locals 6
    .param p2, "paramInt"    # I

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService;

    .line 89
    const/16 v3, 0x7f6

    const/16 v4, 0x408

    const/4 v5, 0x2

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 92
    const-string v0, "---------\ufffd\ufffd"

    const-string v1, "server------------------>52"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/16 v0, 0x30

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;->gravity:I

    .line 95
    iput p2, p0, Lcom/navinfo/nissanda/dautil/daconnector/horizontalService/HorizontalService$CustomLayout;->screenOrientation:I

    .line 96
    const-string v0, "---------\ufffd\ufffd"

    const-string v1, "server------------------>56"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method
