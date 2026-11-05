.class Lcom/ximalaya/speechcontrol/SpeechControler$10;
.super Ljava/lang/Object;
.source "SpeechControler.java"

# interfaces
.implements Lcom/ximalaya/speechcontrol/IMainDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ximalaya/speechcontrol/SpeechControler;->unCollectAlbum(JLcom/ximalaya/speechcontrol/ICollectCallback;)V
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
    .line 552
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    iput-wide p2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->val$id:J

    iput-object p4, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public errCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/ICollectCallback;->defail()V

    .line 569
    return-void
.end method

.method public successCallBack(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$500(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;

    move-result-object v0

    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/album/Album;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/ximalaya/speechcontrol/util/ScContentProviderUtil;->unCollectAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/Album;)V

    .line 556
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    iget-wide v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->val$id:J

    invoke-virtual {v0, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->isCollectedAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/ICollectCallback;->defail()V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$10;->val$collectCallback:Lcom/ximalaya/speechcontrol/ICollectCallback;

    invoke-interface {v0}, Lcom/ximalaya/speechcontrol/ICollectCallback;->success()V

    goto :goto_0
.end method
