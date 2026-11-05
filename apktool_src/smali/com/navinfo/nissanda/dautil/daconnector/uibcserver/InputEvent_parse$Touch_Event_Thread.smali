.class Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;
.super Ljava/lang/Thread;
.source "InputEvent_parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Touch_Event_Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;


# direct methods
.method private constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .param p2, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 193
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$200()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 195
    :try_start_0
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3

    move-result v7

    if-nez v7, :cond_3

    .line 197
    const-wide/16 v8, 0x1

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    .line 202
    :goto_1
    :try_start_2
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Ljava/util/Queue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 203
    .local v4, "msg_recv":[B
    const/4 v7, 0x6

    aget-byte v5, v4, v7

    .line 204
    .local v5, "touch_value":B
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "touch_value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 205
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_1
    const/4 v7, 0x2

    const/16 v8, 0x8

    aget-byte v8, v4, v8

    if-ne v7, v8, :cond_0

    .line 208
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7, v4}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$600(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;[B)V

    .line 209
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$702(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Z)Z

    .line 210
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$900()I

    move-result v9

    int-to-float v9, v9

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1000()I

    move-result v10

    int-to-float v10, v10

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1100()I

    move-result v11

    int-to-float v11, v11

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1200()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1300(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;FFFF)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v7, v8, v9}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$802(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;D)D
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 264
    .end local v4    # "msg_recv":[B
    .end local v5    # "touch_value":B
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 267
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "InputEvent_parse"

    const-string v8, "Touch_Event_Thread exception"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "msg_recv":[B
    .restart local v5    # "touch_value":B
    :pswitch_2
    const/4 v7, 0x2

    const/16 v8, 0x8

    :try_start_4
    aget-byte v8, v4, v8

    if-ne v7, v8, :cond_0

    .line 215
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7, v4}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$600(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;[B)V

    .line 216
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-nez v7, :cond_1

    .line 217
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$900()I

    move-result v9

    int-to-float v9, v9

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1000()I

    move-result v10

    int-to-float v10, v10

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1100()I

    move-result v11

    int-to-float v11, v11

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1200()I

    move-result v12

    int-to-float v12, v12

    invoke-static {v8, v9, v10, v11, v12}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1300(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;FFFF)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v7, v8, v9}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$802(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;D)D

    .line 219
    :cond_1
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$900()I

    move-result v8

    int-to-float v8, v8

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1000()I

    move-result v9

    int-to-float v9, v9

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1100()I

    move-result v10

    int-to-float v10, v10

    invoke-static {}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1200()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1300(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;FFFF)F

    move-result v7

    float-to-double v2, v7

    .line 220
    .local v2, "fingerDistance":D
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$700(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 221
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)D

    move-result-wide v8

    sub-double/2addr v8, v2

    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1400(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    int-to-double v10, v7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_2

    .line 222
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$702(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Z)Z

    .line 223
    new-instance v6, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;-><init>(I)V

    .line 224
    .local v6, "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7, v6}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 269
    .end local v2    # "fingerDistance":D
    .end local v4    # "msg_recv":[B
    .end local v5    # "touch_value":B
    .end local v6    # "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    :catch_3
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Error;
    const-string v7, "InputEvent_parse"

    const-string v8, "Touch_Event_Thread error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 225
    .end local v0    # "e":Ljava/lang/Error;
    .restart local v2    # "fingerDistance":D
    .restart local v4    # "msg_recv":[B
    .restart local v5    # "touch_value":B
    :cond_2
    :try_start_5
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$800(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)D

    move-result-wide v8

    sub-double v8, v2, v8

    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1400(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    int-to-double v10, v7

    cmpl-double v7, v8, v10

    if-lez v7, :cond_0

    .line 226
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$702(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Z)Z

    .line 227
    new-instance v6, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;-><init>(I)V

    .line 228
    .restart local v6    # "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7, v6}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V

    goto/16 :goto_0

    .line 234
    .end local v2    # "fingerDistance":D
    .end local v6    # "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    :pswitch_3
    const/4 v7, 0x2

    const/16 v8, 0x8

    aget-byte v8, v4, v8

    if-ne v7, v8, :cond_0

    .line 235
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7, v4}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$600(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;[B)V

    .line 236
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$702(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Z)Z

    .line 237
    new-instance v6, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;-><init>(I)V

    .line 238
    .restart local v6    # "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7, v6}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V

    .line 239
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$802(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;D)D

    goto/16 :goto_0

    .line 245
    .end local v6    # "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    :pswitch_4
    const/16 v7, 0xa

    invoke-static {v4, v7}, Lcom/autonavi/cvc/app/da/source/Common_method;->bytesToShort([BI)S

    move-result v1

    .line 246
    .local v1, "keycode":S
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keycode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 247
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 249
    :pswitch_5
    const-string v7, "InputEvent_parse HomeKey"

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 250
    new-instance v6, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;-><init>(I)V

    .line 251
    .restart local v6    # "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7, v6}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V

    .line 252
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1600(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->intentDA(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 262
    .end local v1    # "keycode":S
    .end local v4    # "msg_recv":[B
    .end local v5    # "touch_value":B
    .end local v6    # "touchevent":Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;
    :cond_3
    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 273
    :cond_4
    iget-object v7, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-static {v7}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->access$1700(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    return-void

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 247
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method
