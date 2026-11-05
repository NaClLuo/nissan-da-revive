.class public Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
.super Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
.source "Radio.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field private endTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_time"
    .end annotation
.end field

.field private programName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "program_name"
    .end annotation
.end field

.field private radioDesc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radio_desc"
    .end annotation
.end field

.field private radioName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radio_name"
    .end annotation
.end field

.field private radioPlayCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radio_play_count"
    .end annotation
.end field

.field private rate24AacUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate24_aac_url"
    .end annotation
.end field

.field private rate24TsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate24_ts_url"
    .end annotation
.end field

.field private rate64AacUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate64_aac_url"
    .end annotation
.end field

.field private rate64TsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rate64_ts_url"
    .end annotation
.end field

.field private scheduleID:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "schedule_id"
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_time"
    .end annotation
.end field

.field private supportBitrates:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "support_bitrates"
    .end annotation
.end field

.field private updateAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->endTime:J

    return-wide v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioPlayCount()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioPlayCount:I

    return v0
.end method

.method public getRate24AacUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate24TsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64AacUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRate64TsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleID()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->scheduleID:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->startTime:J

    return-wide v0
.end method

.method public getSupportBitrates()[I
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    return-object v0
.end method

.method public getUpdateAt()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->updateAt:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRadioName(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRadioDesc(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setProgramName(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setScheduleID(J)V

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setStartTime(J)V

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setEndTime(J)V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    .local v1, "length":I
    if-lez v1, :cond_0

    .line 246
    new-array v0, v1, [I

    .line 247
    .local v0, "bt":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setSupportBitrates([I)V

    .line 250
    .end local v0    # "bt":[I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate24AacUrl(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate24TsUrl(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate64AacUrl(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRate64TsUrl(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setRadioPlayCount(I)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setCoverUrlSmall(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setCoverUrlLarge(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->setUpdateAt(J)V

    .line 258
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlLarge"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlLarge:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlSmall"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlSmall:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->endTime:J

    .line 110
    return-void
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "programName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->programName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setRadioDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioDesc"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioDesc:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setRadioName(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioName"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setRadioPlayCount(I)V
    .locals 0
    .param p1, "radioPlayCount"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioPlayCount:I

    .line 170
    return-void
.end method

.method public setRate24AacUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate24AacUrl"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24AacUrl:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setRate24TsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate24TsUrl"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24TsUrl:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setRate64AacUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate64AacUrl"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64AacUrl:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setRate64TsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "rate64TsUrl"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64TsUrl:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setScheduleID(J)V
    .locals 1
    .param p1, "scheduleID"    # J

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->scheduleID:J

    .line 90
    return-void
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->startTime:J

    .line 100
    return-void
.end method

.method public setSupportBitrates([I)V
    .locals 0
    .param p1, "supportBitrates"    # [I

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    .line 120
    return-void
.end method

.method public setUpdateAt(J)V
    .locals 1
    .param p1, "updateAt"    # J

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->updateAt:J

    .line 200
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 212
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioDesc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->programName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->scheduleID:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 216
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->startTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->endTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 219
    .local v0, "length":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    if-lez v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate24TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->rate64TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->radioPlayCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->updateAt:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    return-void

    .line 218
    .end local v0    # "length":I
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->supportBitrates:[I

    array-length v0, v1

    goto :goto_0
.end method
