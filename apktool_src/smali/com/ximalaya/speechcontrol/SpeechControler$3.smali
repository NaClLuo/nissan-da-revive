.class Lcom/ximalaya/speechcontrol/SpeechControler$3;
.super Ljava/lang/Object;
.source "SpeechControler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ximalaya/speechcontrol/SpeechControler;->loadSuccessBack(Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

.field final synthetic val$callback:Lcom/ximalaya/speechcontrol/IMainDataCallback;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$key:J

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ximalaya/speechcontrol/SpeechControler;Ljava/lang/String;Lcom/ximalaya/speechcontrol/IMainDataCallback;Ljava/lang/Object;J)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    iput-object p2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$callback:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    iput-object p4, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$object:Ljava/lang/Object;

    iput-wide p5, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$key:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$300(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/IMainDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$300(Lcom/ximalaya/speechcontrol/SpeechControler;)Lcom/ximalaya/speechcontrol/IMainDataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$content:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$callback:Lcom/ximalaya/speechcontrol/IMainDataCallback;

    iget-object v1, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$object:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/ximalaya/speechcontrol/IMainDataCallback;->successCallBack(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->this$0:Lcom/ximalaya/speechcontrol/SpeechControler;

    invoke-static {v0}, Lcom/ximalaya/speechcontrol/SpeechControler;->access$400(Lcom/ximalaya/speechcontrol/SpeechControler;)Ljava/util/Map;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/speechcontrol/SpeechControler$3;->val$key:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method
