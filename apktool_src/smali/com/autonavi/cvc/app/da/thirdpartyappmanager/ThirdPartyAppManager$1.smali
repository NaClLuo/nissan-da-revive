.class Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;
.super Ljava/lang/Object;
.source "ThirdPartyAppManager.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->updateApps(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/io/File;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->val$upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError()V
    .locals 1

    .prologue
    .line 216
    const-string v0, "onError"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->e(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 9
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->val$file:Ljava/io/File;

    invoke-static {v6, p1}, Lcom/autonavi/cvc/app/da/util/FileUtil;->writeString(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 190
    .local v0, "gson":Lcom/google/gson/Gson;
    :try_start_0
    const-class v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    invoke-virtual {v0, p1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    .line 191
    .local v3, "newWebAppsResult":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;
    if-eqz v3, :cond_2

    iget v6, v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;->code:I

    if-nez v6, :cond_2

    .line 192
    iget-object v5, v3, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;->data:Ljava/util/List;

    .line 193
    .local v5, "webAppsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;>;"
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    iget-object v7, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$000(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$100(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/util/List;Ljava/util/List;)V

    .line 194
    iget-object v6, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    iget-object v7, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-static {v7}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$000(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$200(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/util/List;)V

    .line 195
    if-eqz v5, :cond_2

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 197
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;

    .line 198
    .local v4, "newinfo":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;
    if-nez v4, :cond_1

    .line 196
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_1
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    iget-object v6, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-static {v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$000(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-virtual {v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->getVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v4, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->version:Ljava/lang/String;

    invoke-static {v7, v6, v8}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$300(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    iget-object v2, v4, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->imgurl:Ljava/lang/String;

    .line 203
    .local v2, "imageUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    iget-object v6, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-static {v6}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$000(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    iget-object v8, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$1;->val$upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    invoke-static {v7, v6, v2, v8}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$400(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;Ljava/lang/String;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    .end local v1    # "i":I
    .end local v2    # "imageUrl":Ljava/lang/String;
    .end local v3    # "newWebAppsResult":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;
    .end local v4    # "newinfo":Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;
    .end local v5    # "webAppsInfo":Ljava/util/List;, "Ljava/util/List<Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;>;"
    :catch_0
    move-exception v6

    .line 212
    :cond_2
    return-void
.end method
