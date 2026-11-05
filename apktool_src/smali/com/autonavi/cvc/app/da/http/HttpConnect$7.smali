.class final Lcom/autonavi/cvc/app/da/http/HttpConnect$7;
.super Ljava/lang/Object;
.source "HttpConnect.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/http/HttpConnect;->post(Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$7;->val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/autonavi/cvc/app/da/http/HttpConnect$7;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$7;->val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$7;->val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    invoke-interface {v0, p1}, Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;->OnSuccess(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method
