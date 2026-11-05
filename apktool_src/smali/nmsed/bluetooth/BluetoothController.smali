.class public Lnmsed/bluetooth/BluetoothController;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# static fields
.field public static final RESULT_NG:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothController"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableBluetooth()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 182
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 183
    const-string v2, "BluetoothController"

    const-string v3, "BluetoothAdapter is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_0
    return v1

    .line 187
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 190
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :cond_1
    const-string v2, "BluetoothController"

    const-string v3, "Bluetooth is disabled!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableBluetooth()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 141
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 142
    const-string v2, "BluetoothController"

    const-string v3, "BluetoothAdapter is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return v1

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 149
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :cond_1
    const-string v2, "BluetoothController"

    const-string v3, "Bluetooth is opened!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableBluetoothWithConfirmDialog(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v3, "BluetoothController"

    const-string v4, "context is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return v2

    .line 63
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 64
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_1

    .line 65
    const-string v3, "BluetoothController"

    const-string v4, "BluetoothAdapter is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    .end local v1    # "mIntent":Landroid/content/Intent;
    :cond_2
    const-string v3, "BluetoothController"

    const-string v4, "Bluetooth is opened!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 109
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 110
    const-string v1, "BluetoothController"

    const-string v2, "BluetoothAdapter is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    .line 115
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public static startBluetoothSettings(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    invoke-static {}, Lnmsed/bluetooth/BluetoothController;->enableBluetooth()I

    .line 219
    if-nez p0, :cond_0

    .line 220
    const-string v1, "BluetoothController"

    const-string v2, "context is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x1

    .line 232
    :goto_0
    return v1

    .line 224
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method
