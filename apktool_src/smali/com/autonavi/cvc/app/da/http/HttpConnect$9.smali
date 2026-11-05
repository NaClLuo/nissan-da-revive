.class final Lcom/autonavi/cvc/app/da/http/HttpConnect$9;
.super Ljava/lang/Object;
.source "HttpConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/cvc/app/da/http/HttpConnect;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadListener:Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;

.field final synthetic val$downloadUrl:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;->val$downloadUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;->val$downloadListener:Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    sget-object v9, Lcom/autonavi/cvc/app/da/data/CommonConstant;->DADBPath:Ljava/lang/String;

    iget-object v10, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;->val$fileName:Ljava/lang/String;

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v3, "file":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v9, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 133
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 134
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 135
    const/16 v9, 0x3a98

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 136
    const-string v9, "GET"

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 137
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 138
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 139
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 140
    .local v7, "response":I
    const/16 v9, 0xc8

    if-eq v7, v9, :cond_1

    .line 167
    if-eqz v5, :cond_0

    .line 170
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "response":I
    .end local v8    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 171
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "response":I
    .restart local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 149
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 150
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 152
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 153
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    .line 154
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 159
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .end local v7    # "response":I
    .end local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 160
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_3
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    if-eqz v5, :cond_3

    .line 170
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 176
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;->val$downloadListener:Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;

    if-eqz v9, :cond_0

    .line 177
    iget-object v9, p0, Lcom/autonavi/cvc/app/da/http/HttpConnect$9;->val$downloadListener:Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;

    invoke-interface {v9, v3}, Lcom/autonavi/cvc/app/da/http/HttpConnect$DownloadListener;->onSuccess(Ljava/io/File;)V

    goto :goto_0

    .line 156
    .restart local v0    # "buffer":[B
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    .restart local v7    # "response":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    if-eqz v5, :cond_3

    .line 170
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 171
    :catch_2
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 171
    .end local v0    # "buffer":[B
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v6    # "len":I
    .end local v7    # "response":I
    .end local v8    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 162
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_7
    invoke-virtual {v2}, Ljava/net/ProtocolException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 167
    if-eqz v5, :cond_3

    .line 170
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 171
    :catch_5
    move-exception v2

    .line 172
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 163
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 164
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 167
    if-eqz v5, :cond_3

    .line 170
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_2

    .line 171
    :catch_7
    move-exception v2

    .line 172
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    if-eqz v5, :cond_5

    .line 170
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 173
    :cond_5
    :goto_3
    throw v9

    .line 171
    :catch_8
    move-exception v2

    .line 172
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
