.class final Lcom/autonavi/cvc/app/da/http/HttpConnect$4;
.super Lcom/android/volley/toolbox/StringRequest;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/http/HttpConnect;->post(Ljava/lang/String;Ljava/util/Map;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/android/volley/Response$ErrorListener;

    .prologue
    .line 54
    .local p3, "x2":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Ljava/lang/String;>;"
    iput-object p5, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$4;->val$params:Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$4;->val$params:Ljava/util/Map;

    return-object v0
.end method
