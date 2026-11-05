.class Lcom/ximalaya/speechcontrol/SpeechControler$2;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;
.source "SpeechControler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/speechcontrol/SpeechControler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/SpeechControler;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/SpeechControler;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    const-wide/16 v2, -0x64

    invoke-static {v0, p1, v2, v3}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$100(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;J)V

    .line 110
    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v2}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$200(Lcom/ximalaya/speechcontrol/SpeechControler;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 104
    .local v0, "key":J
    iget-object v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$2;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v2, p1, p2, v0, v1}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$000(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;IJ)V

    .line 105
    return-void
.end method
