.class public Lcom/autonavi/cvc/app/da/test/inputTest;
.super Ljava/lang/Object;
.source "inputTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "bArray"    # [B

    .prologue
    .line 78
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 80
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 81
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "sTemp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "sTemp":Ljava/lang/String;
    :cond_1
    const-string v3, " ; \u65f6\u95f4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static bytesToInt([B)I
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 94
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v0, v1, 0xff

    .line 96
    .local v0, "addr":I
    const/4 v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 98
    const/4 v1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 100
    const/4 v1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 102
    return v0
.end method

.method public static bytesToInt([BI)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 142
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int v0, v1, v2

    .line 144
    .local v0, "value":I
    return v0
.end method

.method public static bytesToInt2([BI)I
    .locals 3
    .param p0, "src"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 152
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    .line 154
    .local v0, "value":I
    return v0
.end method

.method public static bytesToLog([B)Ljava/lang/String;
    .locals 8
    .param p0, "bArray"    # [B

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 161
    .local v0, "fig":[B
    aget-byte v2, p0, v3

    if-ne v2, v5, :cond_1

    .line 162
    const-string v2, "1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x9

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    const/16 v2, 0xa

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 164
    const/16 v2, 0xb

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 165
    aput-byte v4, v0, v6

    .line 166
    aput-byte v4, v0, v7

    .line 167
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    const/16 v2, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 169
    const/16 v2, 0xd

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 170
    aput-byte v4, v0, v6

    .line 171
    aput-byte v4, v0, v7

    .line 172
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 200
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 173
    :cond_1
    aget-byte v2, p0, v3

    if-ne v2, v6, :cond_0

    .line 174
    const-string v2, "2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x9

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 175
    const/16 v2, 0xa

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 176
    const/16 v2, 0xb

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 177
    aput-byte v4, v0, v6

    .line 178
    aput-byte v4, v0, v7

    .line 179
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 181
    const/16 v2, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 182
    const/16 v2, 0xd

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 183
    aput-byte v4, v0, v6

    .line 184
    aput-byte v4, v0, v7

    .line 185
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0xe

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 187
    const/16 v2, 0xf

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 188
    const/16 v2, 0x10

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 189
    aput-byte v4, v0, v6

    .line 190
    aput-byte v4, v0, v7

    .line 191
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 193
    const/16 v2, 0x11

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 194
    const/16 v2, 0x12

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 195
    aput-byte v4, v0, v6

    .line 196
    aput-byte v4, v0, v7

    .line 197
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static bytesToPx([B)Ljava/lang/String;
    .locals 8
    .param p0, "bArray"    # [B

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 23
    .local v0, "fig":[B
    aget-byte v2, p0, v3

    if-ne v2, v5, :cond_1

    .line 24
    const-string v2, "\u5355\u6307\u624b\u52bf\uff0c\u624b\u6307ID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x9

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 25
    const/16 v2, 0xa

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 26
    const/16 v2, 0xb

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 27
    aput-byte v4, v0, v6

    .line 28
    aput-byte v4, v0, v7

    .line 29
    const-string v2, " X\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 30
    const/16 v2, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 31
    const/16 v2, 0xd

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 32
    aput-byte v4, v0, v6

    .line 33
    aput-byte v4, v0, v7

    .line 34
    const-string v2, " Y\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 71
    :cond_0
    :goto_0
    const-string v2, " ; \u65f6\u95f4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 35
    :cond_1
    aget-byte v2, p0, v3

    if-ne v2, v6, :cond_0

    .line 36
    const-string v2, "\u53cc\u6307\u6307\u624b\u52bf\uff0c\u624b\u6307ID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x9

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 37
    const/16 v2, 0xa

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 38
    const/16 v2, 0xb

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 39
    aput-byte v4, v0, v6

    .line 40
    aput-byte v4, v0, v7

    .line 41
    const-string v2, " X\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 43
    const/16 v2, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 44
    const/16 v2, 0xd

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 45
    aput-byte v4, v0, v6

    .line 46
    aput-byte v4, v0, v7

    .line 47
    const-string v2, " Y\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 48
    const-string v2, ";\u624b\u6307ID\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0xe

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    const/16 v2, 0xf

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 50
    const/16 v2, 0x10

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 51
    aput-byte v4, v0, v6

    .line 52
    aput-byte v4, v0, v7

    .line 53
    const-string v2, " X\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 55
    const/16 v2, 0x11

    aget-byte v2, p0, v2

    aput-byte v2, v0, v4

    .line 56
    const/16 v2, 0x12

    aget-byte v2, p0, v2

    aput-byte v2, v0, v5

    .line 57
    aput-byte v4, v0, v6

    .line 58
    aput-byte v4, v0, v7

    .line 59
    const-string v2, " Y\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/test/inputTest;->bytesToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static intToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 113
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 114
    .local v0, "src":[B
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 115
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    return-object v0
.end method

.method public static intToBytes2(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 125
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 126
    .local v0, "src":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 128
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 129
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 130
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "arg"    # [Ljava/lang/String;

    .prologue
    .line 8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "--------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    return-void
.end method
