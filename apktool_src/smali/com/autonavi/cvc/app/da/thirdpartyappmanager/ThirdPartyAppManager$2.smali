.class Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;
.super Ljava/lang/Object;
.source "ThirdPartyAppManager.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->downloadImage(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;Ljava/lang/String;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

.field final synthetic val$linkedAppBean:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

.field final synthetic val$upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->val$linkedAppBean:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    iput-object p3, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->val$upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->val$linkedAppBean:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;->setIconFilePath(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/autonavi/cvc/app/da/db/DBHelper;->getDatabase()Lcom/autonavi/cvc/app/da/db/DaDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/cvc/app/da/db/DaDatabase;->appDao()Lcom/autonavi/cvc/app/da/db/dao/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->val$linkedAppBean:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;

    invoke-interface {v0, v1}, Lcom/autonavi/cvc/app/da/db/dao/AppDao;->insertApp(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/LinkedAppBean;)V

    .line 282
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$500(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->val$upDateAppsListener:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;

    iget-object v1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$2;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;

    invoke-static {v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;->access$000(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppManager$UpDateAppsListener;->onUpdateSuccess(Ljava/util/List;)V

    .line 285
    :cond_0
    return-void
.end method
