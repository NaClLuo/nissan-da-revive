.class Lcom/autonavi/cvc/app/da/data/DataStatics$1;
.super Ljava/lang/Object;
.source "DataStatics.java"

# interfaces
.implements Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/data/DataStatics;->firstTimeStatics(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/cvc/app/da/data/DataStatics;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/data/DataStatics;)V
    .locals 0
    .param p1, "this$0"    # Lcom/autonavi/cvc/app/da/data/DataStatics;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/data/DataStatics$1;->this$0:Lcom/autonavi/cvc/app/da/data/DataStatics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnError()V
    .locals 2

    .prologue
    .line 59
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public OnSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, ""

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method
