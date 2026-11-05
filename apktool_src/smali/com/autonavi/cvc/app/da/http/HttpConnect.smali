.class public Lcom/autonavi/cvc/app/da/http/HttpConnect;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;,
        Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;
    }
.end annotation


# static fields
.field static requestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAll()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v1, Lcom/autonavi/cvc/app/da/http/HttpConnect$1;

    invoke-direct {v1}, Lcom/autonavi/cvc/app/da/http/HttpConnect$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 33
    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;)V
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "downloadListener"    # Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;

    .prologue
    .line 122
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "l"    # Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    .prologue
    .line 71
    move-object v0, p1

    .line 72
    .local v0, "listener":Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v2, 0x0

    new-instance v3, Lcom/autonavi/cvc/app/da/http/HttpConnect$5;

    invoke-direct {v3, v0}, Lcom/autonavi/cvc/app/da/http/HttpConnect$5;-><init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    new-instance v4, Lcom/autonavi/cvc/app/da/http/HttpConnect$6;

    invoke-direct {v4, v0}, Lcom/autonavi/cvc/app/da/http/HttpConnect$6;-><init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 89
    .local v1, "s":Lcom/android/volley/toolbox/StringRequest;
    sget-object v2, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    .line 90
    sget-object v2, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 91
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 187
    return-void
.end method

.method public static post(Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "l"    # Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;

    .prologue
    .line 95
    move-object v0, p1

    .line 96
    .local v0, "listener":Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;
    new-instance v1, Lcom/android/volley/toolbox/StringRequest;

    const/4 v2, 0x1

    new-instance v3, Lcom/autonavi/cvc/app/da/http/HttpConnect$7;

    invoke-direct {v3, v0}, Lcom/autonavi/cvc/app/da/http/HttpConnect$7;-><init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    new-instance v4, Lcom/autonavi/cvc/app/da/http/HttpConnect$8;

    invoke-direct {v4, v0}, Lcom/autonavi/cvc/app/da/http/HttpConnect$8;-><init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/volley/toolbox/StringRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 113
    .local v1, "s":Lcom/android/volley/toolbox/StringRequest;
    sget-object v2, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    .line 114
    sget-object v2, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 115
    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p2, "l"    # Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v6, p2

    .line 37
    .local v6, "listener":Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;
    new-instance v0, Lcom/autonavi/cvc/app/da/http/HttpConnect$4;

    const/4 v1, 0x1

    new-instance v3, Lcom/autonavi/cvc/app/da/http/HttpConnect$2;

    invoke-direct {v3, v6}, Lcom/autonavi/cvc/app/da/http/HttpConnect$2;-><init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    new-instance v4, Lcom/autonavi/cvc/app/da/http/HttpConnect$3;

    invoke-direct {v4, v6}, Lcom/autonavi/cvc/app/da/http/HttpConnect$3;-><init>(Lcom/autonavi/cvc/app/da/http/HttpConnect$Listener;)V

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/cvc/app/da/http/HttpConnect$4;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    .line 60
    .local v0, "s":Lcom/android/volley/toolbox/StringRequest;
    sget-object v1, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/volley/Cache;->clear()V

    .line 61
    sget-object v1, Lcom/autonavi/cvc/app/da/http/HttpConnect;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 62
    return-void
.end method
