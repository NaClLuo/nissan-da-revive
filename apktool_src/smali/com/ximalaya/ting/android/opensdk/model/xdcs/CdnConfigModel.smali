.class public Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;
.super Ljava/lang/Object;
.source "CdnConfigModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cdnNotWifiAlertRate:I

.field public cdnNotWifiConnectTimeout:I

.field public cdnUrl:Ljava/lang/String;

.field public cdnWifiAlertRate:I

.field public cdnWifiConnectTimeout:I

.field public doMain:Ljava/lang/String;

.field public map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public netType:I

.field public path:Ljava/lang/String;

.field public userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiConnectTimeout:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiConnectTimeout:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiAlertRate:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiConnectTimeout:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->netType:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnUrl:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->userAgent:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->doMain:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->path:Ljava/lang/String;

    .line 177
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->map:Ljava/util/HashMap;

    .line 178
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public getCdnNotWifiAlertRate()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiAlertRate:I

    return v0
.end method

.method public getCdnNotWifiConnectTimeout()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiConnectTimeout:I

    return v0
.end method

.method public getCdnUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCdnWifiAlertRate()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiAlertRate:I

    return v0
.end method

.method public getCdnWifiConnectTimeout()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiConnectTimeout:I

    return v0
.end method

.method public getDoMain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->doMain:Ljava/lang/String;

    return-object v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->map:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNetType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->netType:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setCdnNotWifiAlertRate(I)V
    .locals 0
    .param p1, "cdnNotWifiAlertRate"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiAlertRate:I

    .line 127
    return-void
.end method

.method public setCdnNotWifiConnectTimeout(I)V
    .locals 0
    .param p1, "cdnNotWifiConnectTimeout"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiConnectTimeout:I

    .line 107
    return-void
.end method

.method public setCdnUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "cdnUrl"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnUrl:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setCdnWifiAlertRate(I)V
    .locals 0
    .param p1, "cdnWifiAlertRate"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiAlertRate:I

    .line 117
    return-void
.end method

.method public setCdnWifiConnectTimeout(I)V
    .locals 0
    .param p1, "cdnWifiConnectTimeout"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiConnectTimeout:I

    .line 97
    return-void
.end method

.method public setDoMain(Ljava/lang/String;)V
    .locals 0
    .param p1, "doMain"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->doMain:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->map:Ljava/util/HashMap;

    .line 55
    return-void
.end method

.method public setNetType(I)V
    .locals 0
    .param p1, "netType"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->netType:I

    .line 87
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->path:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->userAgent:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 137
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiConnectTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiConnectTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnWifiAlertRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnNotWifiAlertRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->netType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->cdnUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->userAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->doMain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->map:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 147
    return-void
.end method
