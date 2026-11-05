.class public Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
.super Ljava/lang/Object;
.source "PlayableModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND_RADIO:Ljava/lang/String; = "radio"

.field public static final KIND_SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final KIND_TRACK:Ljava/lang/String; = "track"


# instance fields
.field private dataId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private kind:Ljava/lang/String;

.field private lastPlayedMills:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 87
    if-ne p0, p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v5

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v5, v6

    goto :goto_0

    .line 90
    :cond_2
    instance-of v7, p1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v7, :cond_5

    instance-of v7, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v7, :cond_5

    move v3, v5

    .line 91
    .local v3, "isTrack":Z
    :goto_1
    instance-of v7, p1, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v7, :cond_6

    instance-of v7, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v7, :cond_6

    move v1, v5

    .line 92
    .local v1, "isRadio":Z
    :goto_2
    instance-of v7, p1, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    if-eqz v7, :cond_7

    instance-of v7, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    if-eqz v7, :cond_7

    move v2, v5

    .line 93
    .local v2, "isSchedule":Z
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-ne v7, v8, :cond_8

    move v0, v5

    .line 95
    .local v0, "isEqualClass":Z
    :goto_4
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move-object v4, p1

    .line 96
    check-cast v4, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 97
    .local v4, "other":Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    iget-wide v8, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    iget-wide v10, v4, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .end local v4    # "other":Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    :cond_4
    move v5, v6

    .line 99
    goto :goto_0

    .end local v0    # "isEqualClass":Z
    .end local v1    # "isRadio":Z
    .end local v2    # "isSchedule":Z
    .end local v3    # "isTrack":Z
    :cond_5
    move v3, v6

    .line 90
    goto :goto_1

    .restart local v3    # "isTrack":Z
    :cond_6
    move v1, v6

    .line 91
    goto :goto_2

    .restart local v1    # "isRadio":Z
    :cond_7
    move v2, v6

    .line 92
    goto :goto_3

    .restart local v2    # "isSchedule":Z
    :cond_8
    move v0, v6

    .line 93
    goto :goto_4
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    return-wide v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLastPlayedMills()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->lastPlayedMills:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 78
    const/16 v0, 0x1f

    .line 79
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 80
    .local v1, "result":I
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 81
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setDataId(J)V

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setKind(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->setLastPlayedMills(I)V

    .line 121
    return-void
.end method

.method public setDataId(J)V
    .locals 1
    .param p1, "dataId"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    .line 53
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setLastPlayedMills(I)V
    .locals 0
    .param p1, "lastPlayedMills"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->lastPlayedMills:I

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->dataId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->lastPlayedMills:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return-void
.end method
