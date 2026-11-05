.class public Lnmsed/shortcatmiracast/ShortcutMiracast;
.super Ljava/lang/Object;
.source "ShortcutMiracast.java"


# static fields
.field public static final RESULT_NG:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field public static final START_TYPE_1:I = 0x1

.field public static final START_TYPE_2:I = 0x2

.field public static final START_TYPE_3:I = 0x3

.field public static final START_TYPE_4:I = 0x4

.field public static final START_TYPE_5:I = 0x5

.field public static final START_TYPE_6:I = 0x6

.field public static final START_TYPE_7:I = 0x7

.field public static final START_TYPE_8:I = 0x8

.field public static final START_TYPE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShortcutMiracast"

.field private static actions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 116
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 117
    const-string v2, "com.samsung.wfd.PICK_WFD_NETWORK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 118
    const-string v2, "android.settings.WIFI_DISPLAY_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 119
    const-string v2, "com.qualcomm.wfd.service.WFD_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 120
    const-string v2, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 121
    const-string v2, "com.sonymobile.tvout.wifidisplay.intent.action.CONTROL_FROM_SMART_TAGS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 122
    const-string v2, "com.nvidia.settings.MIRACAST_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 123
    const-string v2, "com.letv.leui.settings.LeWifiDisplaySettings"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 124
    const-string v2, "com.android.settings.wfd.MiuiWifiDisplaySettings"

    aput-object v2, v0, v1

    .line 116
    sput-object v0, Lnmsed/shortcatmiracast/ShortcutMiracast;->actions:[Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidOsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 352
    .local v0, "androidVer":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 357
    :cond_0
    return-object v0
.end method

.method public static getPhoneList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 505
    const/4 v2, 0x0

    .line 508
    .local v2, "phoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    if-eqz v3, :cond_0

    sget-object v3, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 510
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "phoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .restart local v2    # "phoneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v3, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 530
    .end local v0    # "i":I
    :cond_0
    return-object v2

    .line 514
    .restart local v0    # "i":I
    :cond_1
    sget-object v3, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 517
    .local v1, "phoneInfo":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 520
    aget-object v3, v1, v4

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 512
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_3
    aget-object v3, v1, v4

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getPhoneType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 372
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 375
    .local v0, "productModel":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 380
    :cond_0
    return-object v0
.end method

.method public static getStartPattern()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-static {}, Lnmsed/shortcatmiracast/ShortcutMiracast;->getPhoneType()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "productModel":Ljava/lang/String;
    invoke-static {}, Lnmsed/shortcatmiracast/ShortcutMiracast;->getAndroidOsVersion()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "androidVer":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 310
    :cond_0
    const-string v4, "ShortcutMiracast"

    const-string v5, "androidVer or productModel is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-object v3

    .line 315
    :cond_1
    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 318
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v4, v4

    if-lt v1, v4, :cond_3

    .line 332
    .end local v1    # "i":I
    :cond_2
    const-string v4, "ShortcutMiracast"

    const-string v5, "start pattern is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    .restart local v1    # "i":I
    :cond_3
    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 324
    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 326
    sget-object v3, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    goto :goto_0

    .line 318
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static hasStartPattern()Z
    .locals 6

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 439
    .local v1, "hasStartPattern":Z
    invoke-static {}, Lnmsed/shortcatmiracast/ShortcutMiracast;->getPhoneType()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "productModel":Ljava/lang/String;
    invoke-static {}, Lnmsed/shortcatmiracast/ShortcutMiracast;->getAndroidOsVersion()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "androidVer":Ljava/lang/String;
    sget-object v5, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 448
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v5, v5

    if-lt v2, v5, :cond_1

    .line 469
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 450
    .restart local v2    # "i":I
    :cond_1
    sget-object v5, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 453
    .local v3, "phoneInfo":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 456
    if-eqz v4, :cond_2

    .line 457
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 458
    if-eqz v0, :cond_2

    .line 459
    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 460
    const/4 v5, 0x2

    aget-object v5, v3, v5

    if-eqz v5, :cond_2

    .line 462
    const/4 v1, 0x1

    .line 463
    goto :goto_1

    .line 448
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isPhoneEnable()Z
    .locals 5

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 398
    .local v1, "isPhoneEnable":Z
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 401
    .local v3, "productModel":Ljava/lang/String;
    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_0

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_1

    .line 421
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 406
    .restart local v0    # "i":I
    :cond_1
    sget-object v4, Lnmsed/shortcatmiracast/PhoneInfo;->START_PATTERN_ARRAY:[[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 409
    .local v2, "phoneInfo":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 412
    if-eqz v3, :cond_2

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 414
    const/4 v1, 0x1

    .line 415
    goto :goto_1

    .line 404
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static startMiracastDeviceList(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    # Android 16 compatibility patch:
    # 1) no Build.MODEL / Android version whitelist
    # 2) try modern Cast settings first, then legacy/OEM WFD activities
    const/4 v0, 0x1

    if-eqz p0, :ctx_null
    goto :ctx_ok

    :ctx_null
    return v0

    :ctx_ok
    :try_start_wifi
    const-string v1, "wifi"
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    move-result v2
    if-nez v2, :wifi_done
    const/4 v2, 0x1
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :wifi_done
    :try_end_wifi
    .catch Ljava/lang/Exception; {:try_start_wifi .. :try_end_wifi} :catch_wifi
    goto :try_xiaomi

    :catch_wifi
    move-exception v1

    :try_xiaomi
    :try_start_xiaomi
    new-instance v1, Landroid/content/ComponentName;
    const-string v2, "com.android.settings"
    const-string v3, "com.android.settings.wfd.WifiDisplaySettings"
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    new-instance v2, Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    const/high16 v1, 0x10000000
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    const/4 v0, 0x0
    return v0
    :try_end_xiaomi
    .catch Ljava/lang/Exception; {:try_start_xiaomi .. :try_end_xiaomi} :catch_xiaomi

    :catch_xiaomi
    move-exception v1

    :try_cast
    :try_start_cast
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    const-string v2, "android.settings.WIFI_DISPLAY_SETTINGS"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    const/4 v0, 0x0
    return v0
    :try_end_cast
    .catch Ljava/lang/Exception; {:try_start_cast .. :try_end_cast} :catch_cast

    :catch_cast
    move-exception v1

    :try_wfd
    :try_start_wfd
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    const-string v2, "android.settings.CAST_SETTINGS"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    const/4 v0, 0x0
    return v0
    :try_end_wfd
    .catch Ljava/lang/Exception; {:try_start_wfd .. :try_end_wfd} :catch_wfd

    :catch_wfd
    move-exception v1

    :try_samsung
    :try_start_samsung
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    const-string v2, "com.samsung.wfd.PICK_WFD_NETWORK"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    const/4 v0, 0x0
    return v0
    :try_end_samsung
    .catch Ljava/lang/Exception; {:try_start_samsung .. :try_end_samsung} :catch_samsung

    :catch_samsung
    move-exception v1

    :try_miui
    :try_start_miui
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    const-string v2, "com.android.settings.wfd.MiuiWifiDisplaySettings"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    const/4 v0, 0x0
    return v0
    :try_end_miui
    .catch Ljava/lang/Exception; {:try_start_miui .. :try_end_miui} :catch_miui

    :catch_miui
    move-exception v1

    :try_qcom
    :try_start_qcom
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    const-string v2, "com.qualcomm.wfd.service.WFD_SETTINGS"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    const-string v2, "android.intent.category.DEFAULT"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    const/4 v0, 0x0
    return v0
    :try_end_qcom
    .catch Ljava/lang/Exception; {:try_start_qcom .. :try_end_qcom} :catch_qcom

    :catch_qcom
    move-exception v1

    :try_fallback
    :try_start_fallback
    new-instance v1, Landroid/content/Intent;
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V
    const-string v2, "android.settings.WIFI_SETTINGS"
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    const/4 v0, 0x0
    return v0
    :try_end_fallback
    .catch Ljava/lang/Exception; {:try_start_fallback .. :try_end_fallback} :catch_fallback

    :catch_fallback
    move-exception v1
    const/4 v0, 0x1
    return v0
.end method
