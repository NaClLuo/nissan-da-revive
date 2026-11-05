.class final Lcom/autonavi/cvc/app/da/http/HttpConnect$6;
.super Ljava/lang/Object;
.source "HttpConnect.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/http/HttpConnect;->get(Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;


# direct methods
.method constructor <init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$6;->val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$6;->val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$6;->val$listener:Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    invoke-interface {v0}, Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;->OnError()V

    .line 87
    :cond_0
    return-void
.end method
