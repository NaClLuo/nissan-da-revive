.class public Lcom/autonavi/cvc/app/da/util/ShareMethod;
.super Ljava/lang/Object;
.source "ShareMethod.java"


# static fields
.field static builderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AlertDialog$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public static pd:Landroid/app/ProgressDialog;

.field static screens:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->builderMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BCC_Check([B)B
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 105
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 106
    .local v0, "BCC":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 107
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 108
    aget-byte v2, v0, v4

    aget-byte v3, p0, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 106
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    aget-byte v2, v0, v4

    return v2
.end method

.method public static apkExists(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 59
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v2

    .restart local v0    # "apkPath":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    move-object v2, v3

    .line 64
    goto :goto_0

    .line 66
    .end local v0    # "apkPath":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 67
    goto :goto_0
.end method

.method public static byteArrayInt([BI)I
    .locals 7
    .param p0, "b"    # [B
    .param p1, "offSet"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 301
    new-array v0, v5, [B

    .line 302
    .local v0, "a":[B
    invoke-static {p0, p1, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    const/4 v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v1, v5, 0x18

    .line 304
    .local v1, "v0":I
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v2, v5, 0x10

    .line 305
    .local v2, "v1":I
    const/4 v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v3, v5, 0x8

    .line 306
    .local v3, "v2":I
    aget-byte v5, v0, v6

    and-int/lit16 v4, v5, 0xff

    .line 307
    .local v4, "v3":I
    add-int v5, v1, v2

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    return v5
.end method

.method public static clearAlertDialog()V
    .locals 1

    .prologue
    .line 366
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->builderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 367
    return-void
.end method

.method public static convertToTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 116
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "ddMMyy-HHmmssSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 118
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createFile(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 462
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createProgressDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->pd:Landroid/app/ProgressDialog;

    .line 217
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 218
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 219
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 220
    return-void
.end method

.method public static deleteApkFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 155
    .local v1, "efd":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "apkPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static dialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Ljava/lang/Integer;Ljava/lang/Object;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "negative"    # Ljava/lang/String;
    .param p5, "dh"    # Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;
    .param p6, "whichDialog"    # Ljava/lang/Integer;
    .param p7, "object"    # Ljava/lang/Object;

    .prologue
    .line 373
    sget-object v2, Lcom/autonavi/cvc/app/da/util/ShareMethod;->builderMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog$Builder;

    .line 374
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_0

    .line 376
    const/4 v2, 0x0

    .line 393
    :goto_0
    return-object v2

    .line 378
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 379
    .local v0, "adb":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 380
    if-eqz p1, :cond_1

    .line 381
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 383
    :cond_1
    if-eqz p2, :cond_2

    .line 384
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 386
    :cond_2
    new-instance v2, Lcom/autonavi/cvc/app/da/util/ShareMethod$1;

    invoke-direct {v2, p2}, Lcom/autonavi/cvc/app/da/util/ShareMethod$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    sget-object v2, Lcom/autonavi/cvc/app/da/util/ShareMethod;->builderMap:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v2, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;

    invoke-direct {v2, p6, p5, v0, p7}, Lcom/autonavi/cvc/app/da/util/ShareMethod$3;-><init>(Ljava/lang/Integer;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Landroid/app/AlertDialog$Builder;Ljava/lang/Object;)V

    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/autonavi/cvc/app/da/util/ShareMethod$2;

    invoke-direct {v3, p6, p5, v0}, Lcom/autonavi/cvc/app/da/util/ShareMethod$2;-><init>(Ljava/lang/Integer;Lcom/autonavi/cvc/app/da/interfaces/DialogHandler;Landroid/app/AlertDialog$Builder;)V

    .line 401
    invoke-virtual {v2, p4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 409
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method public static dialogDismiss()V
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 225
    sget-object v0, Lcom/autonavi/cvc/app/da/util/ShareMethod;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 227
    :cond_0
    return-void
.end method

.method public static fileDel(Ljava/lang/String;)V
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autonavi/cvc/app/da/data/CommonConstant;->SDCardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DA_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 75
    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/autonavi/cvc/app/da/data/CommonConstant;->SDCardPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DA_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "M\u6708d\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 494
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 495
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 496
    .local v0, "curDate":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public static getCurrentWeek()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    const-string v2, "window"

    .line 513
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 514
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 519
    .local v0, "dp":Landroid/view/Display;
    invoke-static {}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->getInstace()Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;

    move-result-object v2

    const-string v3, "screenX"

    .line 520
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 519
    invoke-virtual {v2, v3, v4}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->putIntValue(Ljava/lang/String;I)V

    .line 521
    invoke-static {}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->getInstace()Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;

    move-result-object v2

    const-string v3, "screenY"

    .line 522
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 521
    invoke-virtual {v2, v3, v4}, Lcom/autonavi/cvc/app/da/data/SharedPreferencesHelper;->putIntValue(Ljava/lang/String;I)V

    .line 523
    return-void
.end method

.method public static getDisplayScreen(Landroid/content/Context;)[I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 170
    const-string v3, "window"

    .line 171
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 172
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 173
    .local v0, "dp":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 174
    .local v1, "outSize":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 175
    const/4 v3, 0x2

    new-array v3, v3, [I

    sput-object v3, Lcom/autonavi/cvc/app/da/util/ShareMethod;->screens:[I

    .line 176
    sget-object v3, Lcom/autonavi/cvc/app/da/util/ShareMethod;->screens:[I

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    aput v5, v3, v4

    .line 177
    sget-object v3, Lcom/autonavi/cvc/app/da/util/ShareMethod;->screens:[I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    aput v4, v3, v6

    .line 178
    const-string v3, "frank"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screens[1]==="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/autonavi/cvc/app/da/util/ShareMethod;->screens:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v3, Lcom/autonavi/cvc/app/da/util/ShareMethod;->screens:[I

    return-object v3
.end method

.method public static getDpi(Landroid/content/Context;)[I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 526
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 527
    .local v5, "screen":[I
    const-string v7, "window"

    .line 528
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 529
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 530
    .local v2, "dp":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 534
    .local v1, "dm":Landroid/util/DisplayMetrics;
    :try_start_0
    const-string v7, "android.view.Display"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 536
    .local v0, "c":Ljava/lang/Class;
    const-string v7, "getRealMetrics"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/util/DisplayMetrics;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 537
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const/4 v7, 0x0

    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v8, v5, v7

    .line 539
    const/4 v7, 0x1

    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v8, v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    .end local v0    # "c":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v5

    .line 541
    :catch_0
    move-exception v3

    .line 542
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception==="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "b"    # [B

    .prologue
    .line 321
    const-string v1, ""

    .line 323
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 325
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

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-object v1
.end method

.method public static getLinuxVersion()Ljava/lang/String;
    .locals 12

    .prologue
    .line 333
    const/4 v7, 0x0

    .line 335
    .local v7, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "cat /proc/version"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 341
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 342
    .local v6, "outs":Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 343
    .local v4, "isrout":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v1, v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 344
    .local v1, "brout":Ljava/io/BufferedReader;
    const-string v8, ""

    .line 348
    .local v8, "result":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 349
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_1

    .line 336
    .end local v1    # "brout":Ljava/io/BufferedReader;
    .end local v4    # "isrout":Ljava/io/InputStreamReader;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "outs":Ljava/io/InputStream;
    .end local v8    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "brout":Ljava/io/BufferedReader;
    .restart local v4    # "isrout":Ljava/io/InputStreamReader;
    .restart local v6    # "outs":Ljava/io/InputStream;
    .restart local v8    # "result":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 353
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 356
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 357
    const-string v0, "."

    .line 359
    .local v0, "Keyword":Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 360
    .local v3, "index":I
    add-int/lit8 v11, v3, -0x1

    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "-"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    :goto_2
    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 363
    .end local v0    # "Keyword":Ljava/lang/String;
    .end local v3    # "index":I
    :goto_3
    return-object v9

    .line 360
    .restart local v0    # "Keyword":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_1
    const-string v10, "("

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    goto :goto_2

    .line 363
    .end local v0    # "Keyword":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_2
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 414
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 415
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 416
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 418
    .local v2, "state":Landroid/net/NetworkInfo$State;
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 419
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 421
    .end local v2    # "state":Landroid/net/NetworkInfo$State;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public static final getSdcardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTopApp(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 235
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 236
    .local v1, "am":Landroid/app/ActivityManager;
    const-string v3, ""

    .line 237
    .local v3, "getname":Ljava/lang/String;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v10, v11, :cond_1

    .line 239
    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 240
    .local v2, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 261
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    const-string v10, ""

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 264
    invoke-static {p0}, Lcom/navinfo/androidprocess/AndroidProcesses;->getRunningForegroundApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    .line 265
    .local v8, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    const-string v10, "bububu"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    .line 267
    .local v4, "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    const-string v11, "bububu"

    invoke-virtual {v4}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 243
    .end local v4    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    .end local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    :cond_1
    const/4 v0, 0x2

    .line 244
    .local v0, "PROCESS_STATE_TOP":I
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 246
    .local v6, "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :try_start_0
    const-class v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v11, "processState"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 247
    .local v7, "processStateField":Ljava/lang/reflect/Field;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 248
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v12, 0x64

    if-ne v11, v12, :cond_2

    iget v11, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v11, :cond_2

    .line 251
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    .line 252
    .local v9, "state":I
    const/4 v11, 0x2

    if-ne v11, v9, :cond_2

    .line 253
    iget-object v10, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v3, v10, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_0

    .line 269
    .end local v0    # "PROCESS_STATE_TOP":I
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v6    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v7    # "processStateField":Ljava/lang/reflect/Field;
    .end local v9    # "state":I
    .restart local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 271
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    .line 272
    .restart local v4    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    invoke-virtual {v4}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".input"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 274
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-le v10, v13, :cond_4

    .line 276
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    check-cast v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    .line 279
    .restart local v4    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    :cond_4
    invoke-virtual {v4}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 288
    .end local v3    # "getname":Ljava/lang/String;
    .end local v4    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    .end local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    :cond_5
    return-object v3

    .line 258
    .restart local v0    # "PROCESS_STATE_TOP":I
    .restart local v3    # "getname":Ljava/lang/String;
    .restart local v6    # "processInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method public static final gpsIsOPen(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v3, "location"

    .line 123
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 125
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    .line 126
    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 128
    .local v0, "gps":Z
    const-string v3, "network"

    .line 129
    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 130
    .local v2, "network":Z
    if-eqz v0, :cond_0

    .line 131
    const/4 v3, 0x1

    .line 133
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static installApk(Ljava/io/File;Landroid/content/Context;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v1, "it":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 140
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "application/vnd.android.package-archive"

    .line 142
    .local v2, "type":Ljava/lang/String;
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static intToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 292
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 293
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 294
    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 295
    ushr-int/lit8 p0, p0, 0x8

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-object v0
.end method

.method public static isNetworkVailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    const-string v2, "connectivity"

    .line 480
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 481
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 482
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    const/4 v2, 0x1

    .line 485
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static judgeAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 434
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 439
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 442
    :goto_1
    return v2

    .line 435
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 442
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static readSDFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/autonavi/cvc/app/da/data/CommonConstant;->SDCardPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DA_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 93
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 96
    .end local v0    # "c":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 101
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 95
    .restart local v0    # "c":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 98
    .end local v0    # "c":I
    .end local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static shortToBytes(S)[B
    .locals 3
    .param p0, "value"    # S

    .prologue
    .line 311
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 312
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 313
    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 314
    ushr-int/lit8 v2, p0, 0x8

    int-to-short p0, v2

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-object v0
.end method
