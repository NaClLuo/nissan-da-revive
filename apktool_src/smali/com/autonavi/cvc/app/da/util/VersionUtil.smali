.class public Lcom/autonavi/cvc/app/da/util/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "newVer"    # Ljava/lang/String;
    .param p1, "localVer"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v8

    .line 17
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v8, v9

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v8, v10

    .line 20
    goto :goto_0

    .line 22
    :cond_3
    const-string v11, "[^a-zA-Z0-9]+"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr1":[Ljava/lang/String;
    const-string v11, "[^a-zA-Z0-9]+"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "arr2":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "ii":I
    array-length v11, v0

    array-length v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "max":I
    :goto_1
    if-gt v5, v6, :cond_0

    .line 27
    array-length v11, v0

    if-ne v5, v11, :cond_4

    .line 28
    array-length v10, v1

    if-eq v5, v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 29
    :cond_4
    array-length v11, v1

    if-ne v5, v11, :cond_5

    move v8, v10

    .line 30
    goto :goto_0

    .line 33
    :cond_5
    :try_start_0
    aget-object v11, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 39
    .local v2, "i1":I
    :goto_2
    :try_start_1
    aget-object v11, v1, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 44
    .local v3, "i2":I
    :goto_3
    if-eq v2, v3, :cond_6

    .line 45
    sub-int v8, v2, v3

    goto :goto_0

    .line 34
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    :catch_0
    move-exception v7

    .line 35
    .local v7, "x":Ljava/lang/Exception;
    const v2, 0x7fffffff

    .restart local v2    # "i1":I
    goto :goto_2

    .line 40
    .end local v7    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 41
    .restart local v7    # "x":Ljava/lang/Exception;
    const v3, 0x7fffffff

    .restart local v3    # "i2":I
    goto :goto_3

    .line 48
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_6
    aget-object v11, v0, v5

    aget-object v12, v1, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 50
    .local v4, "i3":I
    if-eqz v4, :cond_7

    move v8, v4

    .line 51
    goto :goto_0

    .line 26
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
