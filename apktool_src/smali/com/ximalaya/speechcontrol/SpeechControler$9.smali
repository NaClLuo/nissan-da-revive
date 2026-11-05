.class Lcom/ximalaya/speechcontrol/SpeechControler$9;
.super Ljava/lang/Object;
.source "SpeechControler.java"

# interfaces
.implements Lcom/ximalaya/speechcontrol/IMainDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ximalaya/speechcontrol/SpeechControler;->collectAlbum(JLcom/ximalaya/speechcontrol/ICollectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

.field final synthetic val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/SpeechControler;JLcom/ximalaya/speechcontrol/ICollectCallback;)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    iput-wide p2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->val$id:J

    iput-object p4, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/ICollectCallback;->defail()V

    .line 542
    return-void
.end method

.method public successCallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$500(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    move-result-object v0

    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->collectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    .line 529
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    iget-wide v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->val$id:J

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->isCollectedAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/ICollectCallback;->success()V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$9;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/ICollectCallback;->defail()V

    goto :goto_0
.end method
