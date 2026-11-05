.class Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$OnePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "DaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;


# direct methods
.method constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$OnePhoneStateListener;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1419
    packed-switch p1, :pswitch_data_0

    .line 1430
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 1431
    return-void

    .line 1421
    :pswitch_0
    sput-boolean v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isCalling:Z

    goto :goto_0

    .line 1424
    :pswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isCalling:Z

    goto :goto_0

    .line 1427
    :pswitch_2
    sput-boolean v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->isCalling:Z

    goto :goto_0

    .line 1419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
