.class Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;
.super Ljava/lang/Object;
.source "ThirdPartyAppConfig.java"


# static fields
.field public static APP_ICON_FILE_NAME:[Ljava/lang/String;

.field public static APP_LINK_ICON:[I

.field public static APP_LINK_NAME:[Ljava/lang/String;

.field public static APP_LINK_PKG:[Ljava/lang/String;

.field public static final APP_URL:[Ljava/lang/String;

.field static AssertsFile:Ljava/lang/String;

.field public static final WEB_APP_ICON:[I

.field public static WEB_APP_ICON_FILE_NAME:[Ljava/lang/String;

.field public static WEB_APP_NAME:[Ljava/lang/String;

.field public static final WEB_APP_PKG:[Ljava/lang/String;

.field public static final WEB_URL:[Ljava/lang/String;

.field public static appInfoFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 11
    const-string v0, "thirtypartyappsconfig"

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->AssertsFile:Ljava/lang/String;

    .line 12
    const-string v0, "appInfo.text"

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->appInfoFileName:Ljava/lang/String;

    .line 13
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://wdapp.navinfo.com/downloadfileserver/apk/navigation/common/navigation_navinfo.apk"

    aput-object v1, v0, v4

    const-string v1, "http://wdapp.navinfo.com/downloadfileserver/apk/music/common/music_navinfo.apk"

    aput-object v1, v0, v5

    const-string v1, "http://wdapp.navinfo.com/downloadfileserver/apk/news/common/news_navinfo.apk"

    aput-object v1, v0, v6

    const-string v1, "http://wdapp.navinfo.com/downloadfileserver/apk/weather/common/weather_navinfo.apk"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "http://wdapp.navinfo.com/downloadfileserver/apk/kuwo/normal/kwplay_navinfo.apk"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://wdapp.navinfo.com/downloadfileserver/apk/ximalaya/common/TingCarApp_navinfo.apk"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_URL:[Ljava/lang/String;

    .line 22
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.navinfo.vuinavigation"

    aput-object v1, v0, v4

    const-string v1, "com.navinfo.weuimusic"

    aput-object v1, v0, v5

    const-string v1, "com.navinfo.weuinews"

    aput-object v1, v0, v6

    const-string v1, "com.navinfo.weuiweather"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ApkPkg;->KUWO:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ximalaya.ting.android.car"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_PKG:[Ljava/lang/String;

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "http://m.ctrip.com/html5/"

    aput-object v1, v0, v4

    const-string v1, "http://m.elong.com/"

    aput-object v1, v0, v5

    const-string v1, "http://m.tuniu.com/"

    aput-object v1, v0, v6

    const-string v1, "http://m.toutiao.com"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "http://xw.qq.com/m/news/index.htm"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://i.meituan.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_URL:[Ljava/lang/String;

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "XIECHENG"

    aput-object v1, v0, v4

    const-string v1, "ELONG"

    aput-object v1, v0, v5

    const-string v1, "TUNIU"

    aput-object v1, v0, v6

    const-string v1, "JINRITOUTIAO"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "QQNEWS"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MEITUAN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_PKG:[Ljava/lang/String;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u5bfc\u822a"

    aput-object v1, v0, v4

    const-string v1, "\u97f3\u4e50"

    aput-object v1, v0, v5

    const-string v1, "\u65b0\u95fb"

    aput-object v1, v0, v6

    const-string v1, "\u5929\u6c14"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u9177\u6211\u97f3\u4e50"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u559c\u9a6c\u62c9\u96c5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_NAME:[Ljava/lang/String;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "\u643a\u7a0b"

    aput-object v1, v0, v4

    const-string v1, "\u827a\u9f99"

    aput-object v1, v0, v5

    const-string v1, "\u9014\u725b"

    aput-object v1, v0, v6

    const-string v1, "\u4eca\u65e5\u5934\u6761"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u817e\u8baf\u65b0\u95fb"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u7f8e\u56e2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_NAME:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_LINK_ICON:[I

    .line 60
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_ICON:[I

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "navigation.png"

    aput-object v1, v0, v4

    const-string v1, "music.png"

    aput-object v1, v0, v5

    const-string v1, "news.png"

    aput-object v1, v0, v6

    const-string v1, "weather.png"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "kuwo.png"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ximalaya.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->APP_ICON_FILE_NAME:[Ljava/lang/String;

    .line 67
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "ctrip.png"

    aput-object v1, v0, v4

    const-string v1, "elong.png"

    aput-object v1, v0, v5

    const-string v1, "tuniu.png"

    aput-object v1, v0, v6

    const-string v1, "toutiao.png"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "qqnews.png"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "meituan.png"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/cvc/app/da/thirdpartyappmanager/ThirdPartyAppConfig;->WEB_APP_ICON_FILE_NAME:[Ljava/lang/String;

    return-void

    .line 56
    :array_0
    .array-data 4
        0x7f020029
        0x7f020028
        0x7f02002a
        0x7f02002b
        0x7f02002d
        0x7f02004d
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x7f020018
        0x7f02001b
        0x7f02003d
        0x7f02003c
        0x7f020033
        0x7f02002f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
