.class public Lcom/navinfo/androidprocess/AndroidProcesses;
.super Ljava/lang/Object;
.source "AndroidProcesses.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/androidprocess/AndroidProcesses$ProcessComparator;
    }
.end annotation


# static fields
.field private static final AID_READPROC:I = 0xbc1

.field public static final TAG:Ljava/lang/String; = "AndroidProcesses"

.field private static loggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/navinfo/androidprocess/AndroidProcesses;->loggingEnabled:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getRunningAppProcessInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_0

    .line 347
    invoke-static {}, Lcom/navinfo/androidprocess/AndroidProcesses;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 348
    .local v4, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v1, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    .line 350
    .local v3, "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v3, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->name:Ljava/lang/String;

    iget v7, v3, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->pid:I

    const/4 v8, 0x0

    invoke-direct {v2, v6, v7, v8}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 351
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->uid:I

    iput v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 353
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    .end local v1    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    .end local v4    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    :cond_0
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 358
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1
    return-object v1
.end method

.method public static getRunningAppProcesses()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/navinfo/androidprocess/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 215
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    new-instance v5, Ljava/io/File;

    const-string v7, "/proc"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 217
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v2, v5

    .line 218
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 221
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 226
    .local v3, "pid":I
    :try_start_1
    new-instance v8, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    invoke-direct {v8, v3}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;-><init>(I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/navinfo/androidprocess/models/AndroidAppProcess$NotAndroidAppProcessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 217
    .end local v3    # "pid":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 228
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Error reading from /proc/%d."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0, v8, v9}, Lcom/navinfo/androidprocess/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pid":I
    :cond_1
    return-object v4

    .line 227
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "pid":I
    :catch_2
    move-exception v8

    goto :goto_1
.end method

.method public static getRunningForegroundApps()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/navinfo/androidprocess/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 280
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v5, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    new-instance v6, Ljava/io/File;

    const-string v8, "/proc"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 283
    .local v2, "files":[Ljava/io/File;
    array-length v8, v2

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v1, v2, v6

    .line 284
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 287
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 292
    .local v3, "pid":I
    :try_start_1
    new-instance v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    invoke-direct {v4, v3}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;-><init>(I)V

    .line 293
    .local v4, "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    iget-boolean v9, v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->foreground:Z

    if-eqz v9, :cond_1

    iget v9, v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->uid:I

    const/16 v10, 0x3e8

    if-lt v9, v10, :cond_0

    iget v9, v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->uid:I

    const/16 v10, 0x270f

    if-le v9, v10, :cond_1

    :cond_0
    iget-object v9, v4, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->name:Ljava/lang/String;

    const-string v10, ":"

    .line 297
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 301
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/navinfo/androidprocess/models/AndroidAppProcess$NotAndroidAppProcessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    .end local v3    # "pid":I
    .end local v4    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "Error reading from /proc/%d."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v0, v9, v10}, Lcom/navinfo/androidprocess/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pid":I
    :cond_2
    return-object v5

    .line 303
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "pid":I
    :catch_2
    move-exception v9

    goto :goto_1
.end method

.method public static getRunningForegroundApps(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/navinfo/androidprocess/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 246
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidAppProcess;>;"
    new-instance v7, Ljava/io/File;

    const-string v9, "/proc"

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 248
    .local v2, "files":[Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 249
    .local v4, "pm":Landroid/content/pm/PackageManager;
    array-length v9, v2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v1, v2, v7

    .line 250
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 253
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 258
    .local v3, "pid":I
    :try_start_1
    new-instance v5, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    invoke-direct {v5, v3}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;-><init>(I)V

    .line 259
    .local v5, "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    iget-boolean v10, v5, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->foreground:Z

    if-eqz v10, :cond_1

    iget v10, v5, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->uid:I

    const/16 v11, 0x3e8

    if-lt v10, v11, :cond_0

    iget v10, v5, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->uid:I

    const/16 v11, 0x270f

    if-le v10, v11, :cond_1

    :cond_0
    iget-object v10, v5, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->name:Ljava/lang/String;

    const-string v11, ":"

    .line 263
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 265
    invoke-virtual {v5}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 266
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/navinfo/androidprocess/models/AndroidAppProcess$NotAndroidAppProcessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 249
    .end local v3    # "pid":I
    .end local v5    # "process":Lcom/navinfo/androidprocess/models/AndroidAppProcess;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 269
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    const-string v10, "Error reading from /proc/%d."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v0, v10, v11}, Lcom/navinfo/androidprocess/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 276
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pid":I
    :cond_2
    return-object v6

    .line 268
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "pid":I
    :catch_2
    move-exception v10

    goto :goto_1
.end method

.method public static getRunningProcesses()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/navinfo/androidprocess/models/AndroidProcess;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/navinfo/androidprocess/models/AndroidProcess;>;"
    new-instance v5, Ljava/io/File;

    const-string v7, "/proc"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 191
    .local v2, "files":[Ljava/io/File;
    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v2, v5

    .line 192
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 200
    .local v3, "pid":I
    :try_start_1
    new-instance v8, Lcom/navinfo/androidprocess/models/AndroidProcess;

    invoke-direct {v8, v3}, Lcom/navinfo/androidprocess/models/AndroidProcess;-><init>(I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .end local v3    # "pid":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 201
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "Error reading from /proc/%d."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0, v8, v9}, Lcom/navinfo/androidprocess/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pid":I
    :cond_1
    return-object v4
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/navinfo/androidprocess/AndroidProcesses;->loggingEnabled:Z

    return v0
.end method

.method public static isMyProcessInTheForeground()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 319
    :try_start_0
    new-instance v2, Lcom/navinfo/androidprocess/models/AndroidAppProcess;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/navinfo/androidprocess/models/AndroidAppProcess;-><init>(I)V

    iget-boolean v1, v2, Lcom/navinfo/androidprocess/models/AndroidAppProcess;->foreground:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 321
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "Error finding our own process"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/navinfo/androidprocess/AndroidProcesses;->log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isProcessInfoHidden()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 163
    const/4 v3, 0x0

    .line 165
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/mounts"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_4

    .line 167
    const-string v7, "\\s+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "columns":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x6

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    aget-object v7, v0, v7

    const-string v8, "/proc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 169
    const/4 v7, 0x3

    aget-object v7, v0, v7

    const-string v8, "hidepid=1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x3

    aget-object v7, v0, v7

    const-string v8, "hidepid=2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    .line 175
    :cond_1
    if-eqz v4, :cond_2

    .line 177
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 182
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_1
    return v5

    .line 166
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    goto :goto_0

    .line 175
    .end local v0    # "columns":[Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_8

    .line 177
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .line 182
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :goto_2
    const-string v7, "readproc"

    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xbc1

    if-ne v7, v8, :cond_7

    :goto_3
    move v5, v6

    goto :goto_1

    .line 178
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    move-object v3, v4

    .line 179
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 172
    .end local v2    # "line":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v7, "AndroidProcesses"

    const-string v8, "Error reading /proc/mounts. Checking if UID \'readproc\' exists."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    if-eqz v3, :cond_5

    .line 177
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 178
    :catch_2
    move-exception v7

    goto :goto_2

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v3, :cond_6

    .line 177
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 179
    :cond_6
    :goto_6
    throw v5

    :cond_7
    move v6, v5

    .line 182
    goto :goto_3

    .line 178
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    goto :goto_6

    .line 175
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 172
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_8
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 133
    sget-boolean v0, Lcom/navinfo/androidprocess/AndroidProcesses;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "AndroidProcesses"

    array-length v1, p1

    if-nez v1, :cond_1

    .end local p0    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    return-void

    .line 134
    .restart local p0    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static varargs log(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 149
    sget-boolean v0, Lcom/navinfo/androidprocess/AndroidProcesses;->loggingEnabled:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "AndroidProcesses"

    array-length v1, p2

    if-nez v1, :cond_1

    .end local p1    # "message":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :cond_0
    return-void

    .line 150
    .restart local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 113
    sput-boolean p0, Lcom/navinfo/androidprocess/AndroidProcesses;->loggingEnabled:Z

    .line 114
    return-void
.end method
