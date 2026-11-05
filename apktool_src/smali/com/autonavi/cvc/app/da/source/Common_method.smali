.class public Lcom/autonavi/cvc/app/da/source/Common_method;
.super Ljava/lang/Object;
.source "Common_method.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InttoBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 27
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 28
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 29
    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 30
    ushr-int/lit8 p0, p0, 0x8

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method public static ShorttoBytes(S)[B
    .locals 3
    .param p0, "value"    # S

    .prologue
    .line 36
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 37
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 38
    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 39
    ushr-int/lit8 v2, p0, 0x8

    int-to-short p0, v2

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-object v0
.end method

.method public static bytesToInt([BI)I
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "value":I
    array-length v3, p0

    add-int/lit8 v4, p1, 0x4

    if-ge v3, v4, :cond_0

    .line 49
    const/4 v3, -0x1

    .line 57
    :goto_0
    return v3

    .line 52
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int/lit8 v3, p1, 0x4

    if-ge v0, v3, :cond_2

    .line 53
    aget-byte v3, p0, v0

    if-gez v3, :cond_1

    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    :goto_2
    sub-int v4, v0, p1

    mul-int/lit8 v4, v4, 0x8

    shl-int v1, v3, v4

    .line 55
    .local v1, "n":I
    add-int/2addr v2, v1

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    .end local v1    # "n":I
    :cond_1
    aget-byte v3, p0, v0

    goto :goto_2

    :cond_2
    move v3, v2

    .line 57
    goto :goto_0
.end method

.method public static bytesToShort([BI)S
    .locals 5
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, "value":S
    array-length v3, p0

    add-int/lit8 v4, p1, 0x2

    if-ge v3, v4, :cond_0

    .line 65
    const/4 v3, -0x1

    .line 73
    :goto_0
    return v3

    .line 68
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int/lit8 v3, p1, 0x2

    if-ge v0, v3, :cond_2

    .line 69
    aget-byte v3, p0, v0

    if-gez v3, :cond_1

    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, 0x100

    :goto_2
    sub-int v4, v0, p1

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    int-to-short v1, v3

    .line 71
    .local v1, "n":S
    add-int v3, v2, v1

    int-to-short v2, v3

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    .end local v1    # "n":S
    :cond_1
    aget-byte v3, p0, v0

    int-to-short v3, v3

    goto :goto_2

    :cond_2
    move v3, v2

    .line 73
    goto :goto_0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 16
    const-string v1, ""

    .line 18
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-object v1
.end method

.method public static savelog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11
    .param p0, "strlog"    # Ljava/lang/String;
    .param p1, "strFilename"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    const/4 v10, 0x1

    .line 77
    const-string v8, "\r\n"

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_0
    if-nez p1, :cond_4

    .line 83
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/autonavi/cvc/app/da/data/CommonConstant;->SDCardPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/smartphone.txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "mGPSFileName":Ljava/lang/String;
    :goto_0
    if-ne v10, p2, :cond_5

    .line 89
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss:SSS||"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 90
    .local v7, "sDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "date":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v8, Lcom/autonavi/cvc/app/da/data/CommonConstant;->SDCardPath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "destDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 94
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 96
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 98
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 100
    :cond_2
    new-instance v5, Ljava/io/FileWriter;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 101
    .local v5, "fw":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 102
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 106
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 107
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 108
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 121
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v1    # "date":Ljava/lang/String;
    .end local v2    # "destDir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v6    # "mGPSFileName":Ljava/lang/String;
    .end local v7    # "sDateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    :goto_1
    return-void

    .line 85
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/autonavi/cvc/app/da/data/CommonConstant;->SDCardPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/DA_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "mGPSFileName":Ljava/lang/String;
    goto :goto_0

    .line 111
    :cond_5
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 113
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "mGPSFileName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
