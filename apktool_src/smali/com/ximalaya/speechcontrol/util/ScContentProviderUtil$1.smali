.class Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;
.super Landroid/database/ContentObserver;
.source "ScContentProviderUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x74

    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 57
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri\u53d1\u751f\u6539\u53d8\u4e86   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 60
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 74
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/16 v2, 0x70

    invoke-static {v1, p1, v2, v4}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p1, v5, v2}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p1, v5, v2}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    .line 68
    :pswitch_2
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/16 v2, 0x72

    invoke-static {v1, p1, v2, v4}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    .line 71
    :pswitch_3
    iget-object v1, p0, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil$1;->this$0:Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    const/16 v2, 0x6f

    invoke-static {v1, p1, v2, v4}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->access$000(Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;ZILjava/lang/Object;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
