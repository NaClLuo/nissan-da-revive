.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;
.super Ljava/lang/Object;
.source "WebAppsResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebAppInfo"
.end annotation


# instance fields
.field public apptype:Ljava/lang/String;

.field public filenamechinese:Ljava/lang/String;

.field public filenameenglish:Ljava/lang/String;

.field imgurl:Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;->this$0:Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
