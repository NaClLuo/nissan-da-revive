.class public Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;
.super Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;
.source "AdvertisList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private advertisList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private responseId:I

.field private ret:I

.field private source:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;-><init>()V

    .line 39
    const/4 v0, -0x2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvertisList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseId()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    return v0
.end method

.method public getRet()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setResponseId(I)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setRet(I)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setSource(I)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setMsg(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;>;"
    const-class v2, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->setAdvertisList(Ljava/util/List;)V

    .line 113
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;>;"
    :cond_0
    return-void
.end method

.method public setAdvertisList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "advertisList":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;>;"
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setResponseId(I)V
    .locals 0
    .param p1, "responseId"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    .line 92
    return-void
.end method

.method public setRet(I)V
    .locals 0
    .param p1, "ret"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    .line 62
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisList [advertisList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 117
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->responseId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->ret:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->source:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->msg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 122
    .local v0, "len":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    if-lez v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 127
    :cond_0
    return-void

    .line 121
    .end local v0    # "len":I
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/advertis/AdvertisList;->advertisList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
