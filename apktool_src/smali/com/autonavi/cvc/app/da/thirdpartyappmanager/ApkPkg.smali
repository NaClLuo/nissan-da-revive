.class public Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;
.super Ljava/lang/Object;
.source "ApkPkg.java"


# static fields
.field public static final ELONG:Ljava/lang/String; = "ELONG"

.field public static final JINRITOUTIAO:Ljava/lang/String; = "JINRITOUTIAO"

.field public static KUWO:Ljava/lang/String; = null

.field public static final MEITUAN:Ljava/lang/String; = "MEITUAN"

.field public static final QQNEWS:Ljava/lang/String; = "QQNEWS"

.field public static final TUNIU:Ljava/lang/String; = "TUNIU"

.field public static final VUI_MUSIC:Ljava/lang/String; = "com.navinfo.weuimusic"

.field public static final VUI_NAVIGATION:Ljava/lang/String; = "com.navinfo.vuinavigation"

.field public static final VUI_NEWS:Ljava/lang/String; = "com.navinfo.weuinews"

.field public static final VUI_WEATHER:Ljava/lang/String; = "com.navinfo.weuiweather"

.field public static final XIECHENG:Ljava/lang/String; = "XIECHENG"

.field public static final XIMALAYA:Ljava/lang/String; = "com.ximalaya.ting.android.car"

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;->debug:Z

    .line 12
    const-string v0, "cn.kuwo.kwmusiccar"

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;->KUWO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppUpgradeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;->debug:Z

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "http://192.168.1.104:8080/httpfileserver/nissanapks.do"

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://wdapp.navinfo.com/httpfileserver/nissanapks.do"

    goto :goto_0
.end method

.method public static getDaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;->debug:Z

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "http://192.168.1.104:8080/httpfileserver/nissanmain.do"

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://wdapp.navinfo.com/httpfileserver/nissanmain.do"

    goto :goto_0
.end method
