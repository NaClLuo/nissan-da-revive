.class Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;
.super Landroid/os/Handler;
.source "DaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;


# direct methods
.method constructor <init>(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 416
    :goto_0
    :sswitch_0
    return-void

    .line 324
    :sswitch_1
    const/4 v8, 0x2

    new-array v1, v8, [B

    .line 325
    .local v1, "b1":[B
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput-byte v9, v1, v8

    .line 326
    const/4 v8, 0x1

    const/4 v9, 0x1

    aput-byte v9, v1, v8

    .line 327
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/16 v9, 0x23

    invoke-virtual {v8, v9, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    goto :goto_0

    .line 330
    .end local v1    # "b1":[B
    :sswitch_2
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 331
    .local v0, "b":[B
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput-byte v9, v0, v8

    .line 332
    const/4 v8, 0x1

    const/4 v9, 0x2

    aput-byte v9, v0, v8

    .line 333
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/16 v9, 0x23

    invoke-virtual {v8, v9, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    goto :goto_0

    .line 339
    .end local v0    # "b":[B
    :sswitch_3
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    goto :goto_0

    .line 343
    :sswitch_4
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$300(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V

    goto :goto_0

    .line 347
    :sswitch_5
    :try_start_0
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$100(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v8

    goto :goto_0

    .line 355
    :sswitch_6
    const-string v6, "GPS\u65f6\u95f4:"

    .line 356
    .local v6, "logGPS":Ljava/lang/String;
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->getGpsDateTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->getDateTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 358
    .local v4, "gpsTime":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 359
    .local v3, "gpsdate":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 361
    .local v7, "phonedate":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 362
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 364
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .line 365
    invoke-static {v4, v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->convertToTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Ljava/lang/String;)[B

    move-result-object v10

    .line 364
    invoke-virtual {v8, v9, v10}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .line 367
    invoke-static {v9}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->getGpsDateTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "),"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(\u6821\u9a8c),"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    .end local v3    # "gpsdate":Ljava/util/Date;
    .end local v4    # "gpsTime":J
    .end local v7    # "phonedate":Ljava/util/Date;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 413
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-object v8, v8, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->gps_log_name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v6, v8, v9}, Lcom/autonavi/cvc/app/da/source/Common_method;->savelog(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 370
    .restart local v3    # "gpsdate":Ljava/util/Date;
    .restart local v4    # "gpsTime":J
    .restart local v7    # "phonedate":Ljava/util/Date;
    :cond_0
    const/4 v8, 0x1

    new-array v2, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x3

    aput-byte v9, v2, v8

    .line 373
    .local v2, "bss":[B
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 374
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(gps), "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-wide v10, v9, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " =\u300b\u4fdd\u5b58\u624b\u673a\u65f6\u95f4="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 377
    .end local v2    # "bss":[B
    .end local v3    # "gpsdate":Ljava/util/Date;
    .end local v4    # "gpsTime":J
    .end local v7    # "phonedate":Ljava/util/Date;
    :cond_1
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-boolean v8, v8, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->t:Z

    if-eqz v8, :cond_4

    .line 379
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->getGpsDateTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 380
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->getGpsDateTime()J

    move-result-wide v4

    .line 384
    .restart local v4    # "gpsTime":J
    :goto_2
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-wide v8, v8, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 385
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 386
    .restart local v3    # "gpsdate":Ljava/util/Date;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 388
    .restart local v7    # "phonedate":Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/Date;->getHours()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 389
    invoke-virtual {v3}, Ljava/util/Date;->getMinutes()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/Date;->getMinutes()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 391
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .line 392
    invoke-static {v4, v5}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->convertToTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$500(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;Ljava/lang/String;)[B

    move-result-object v10

    .line 391
    invoke-virtual {v8, v9, v10}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    .line 394
    invoke-static {v9}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    move-result-object v9

    invoke-virtual {v9}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->getGpsDateTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "),"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(\u6821\u9a8c),"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 382
    .end local v3    # "gpsdate":Ljava/util/Date;
    .end local v4    # "gpsTime":J
    .end local v7    # "phonedate":Ljava/util/Date;
    :cond_2
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-static {v8}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->access$400(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;)Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->getDateTime()J

    move-result-wide v4

    .restart local v4    # "gpsTime":J
    goto :goto_2

    .line 397
    .restart local v3    # "gpsdate":Ljava/util/Date;
    .restart local v7    # "phonedate":Ljava/util/Date;
    :cond_3
    const/4 v8, 0x1

    new-array v2, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x3

    aput-byte v9, v2, v8

    .line 400
    .restart local v2    # "bss":[B
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 401
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(gps), "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    iget-wide v10, v9, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->time:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " =\u300b\u4fdd\u5b58\u624b\u673a\u65f6\u95f4="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 405
    .end local v2    # "bss":[B
    .end local v3    # "gpsdate":Ljava/util/Date;
    .end local v4    # "gpsTime":J
    .end local v7    # "phonedate":Ljava/util/Date;
    :cond_4
    const/4 v8, 0x1

    new-array v2, v8, [B

    const/4 v8, 0x0

    const/4 v9, 0x2

    aput-byte v9, v2, v8

    .line 408
    .restart local v2    # "bss":[B
    iget-object v8, p0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService$2;->this$0:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;->sendSerMsg(I[B)Z

    .line 409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "t = false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0xca -> :sswitch_0
        0xcb -> :sswitch_5
        0xcc -> :sswitch_6
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_3
        0x7d3 -> :sswitch_3
        0x7d4 -> :sswitch_3
        0xbb8 -> :sswitch_2
        0xbb9 -> :sswitch_1
    .end sparse-switch
.end method
