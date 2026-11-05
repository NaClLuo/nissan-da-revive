.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult;
.super Ljava/lang/Object;
.source "WebAppsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;
    }
.end annotation


# instance fields
.field code:I

.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/autonavi/cvc/app/da/thirdpartyappmanager/WebAppsResult$WebAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
