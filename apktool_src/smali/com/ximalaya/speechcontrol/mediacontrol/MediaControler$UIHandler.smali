.class public Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;
.super Landroid/os/Handler;
.source "MediaControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;


# direct methods
.method public constructor <init>(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    .line 905
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 906
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 910
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 992
    :goto_0
    :pswitch_0
    return-void

    .line 912
    :pswitch_1
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 916
    :pswitch_2
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 920
    :pswitch_3
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 924
    :pswitch_4
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 928
    :pswitch_5
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 932
    :pswitch_6
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Z)V

    goto :goto_0

    .line 936
    :pswitch_7
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V

    goto :goto_0

    .line 940
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 941
    .local v0, "args":[Ljava/lang/Object;
    iget-object v3, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-static {v3, v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1700(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;)V

    goto :goto_0

    .line 954
    .end local v0    # "args":[Ljava/lang/Object;
    :pswitch_9
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1800(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;I)V

    goto :goto_0

    .line 958
    :pswitch_a
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;

    invoke-static {v2, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$1900(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerException;)V

    goto :goto_0

    .line 962
    :pswitch_b
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2000(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 966
    :pswitch_c
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;

    invoke-static {v2, v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2100(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;)V

    goto :goto_0

    .line 970
    :pswitch_d
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2200(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 974
    :pswitch_e
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2300(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto :goto_0

    .line 978
    :pswitch_f
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v1, v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2400(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;I)V

    goto/16 :goto_0

    .line 982
    :pswitch_10
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    invoke-static {v1}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2500(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;)V

    goto/16 :goto_0

    .line 986
    :pswitch_11
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler$UIHandler;->this$0:Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;->access$2600(Lcom/ximalaya/speechcontrol/mediacontrol/MediaControler;II)V

    goto/16 :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method
