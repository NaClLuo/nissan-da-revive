.class public Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;
.super Ljava/lang/Object;
.source "RecordModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field device:I

.field deviceName:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "device"    # I
    .param p3, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    .line 22
    iput p2, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    .line 23
    iput-object p3, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getDevice()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->setType(I)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->setDevice(I)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->setDeviceName(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setDevice(I)V
    .locals 0
    .param p1, "device"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    .line 40
    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    .line 32
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 57
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->device:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
