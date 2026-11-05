.class public Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
.super Ljava/lang/Object;
.source "DaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private carDrived:Z

.field private carType:I

.field private connected:Z

.field private linuxVersion:Ljava/lang/String;

.field private screenHeight:I

.field private screenStream:Z

.field private screenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo$1;

    invoke-direct {v0}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo$1;-><init>()V

    sput-object v0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenWidth:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenHeight:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenStream:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->connected:Z

    .line 24
    return-void

    :cond_0
    move v0, v2

    .line 22
    goto :goto_0

    :cond_1
    move v1, v2

    .line 23
    goto :goto_1
.end method


# virtual methods
.method public connected()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->connected:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getLinuxVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->linuxVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenWidth:I

    return v0
.end method

.method public isScreenStream()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenStream:Z

    return v0
.end method

.method public setCarDrived(Z)V
    .locals 0
    .param p1, "carDrived"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->carDrived:Z

    .line 88
    return-void
.end method

.method public setCarType(I)V
    .locals 0
    .param p1, "carType"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->carType:I

    .line 92
    return-void
.end method

.method public setConnected(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->connected:Z

    .line 84
    return-void
.end method

.method public setLinuxVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "linuxVersion"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->linuxVersion:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0
    .param p1, "screenHeight"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenHeight:I

    .line 51
    return-void
.end method

.method public setScreenStream(Z)V
    .locals 0
    .param p1, "screenStream"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenStream:Z

    .line 63
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenWidth:I

    .line 43
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->screenStream:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    iget-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->connected:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 80
    return-void

    :cond_0
    move v0, v2

    .line 78
    goto :goto_0

    :cond_1
    move v1, v2

    .line 79
    goto :goto_1
.end method
