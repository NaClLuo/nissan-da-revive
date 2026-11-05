.class public Lcom/ximalaya/ting/android/opensdk/model/track/Track;
.super Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
.source "Track.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subordinated_album"
    .end annotation
.end field

.field private announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer"
    .end annotation
.end field

.field private authorized:Z

.field private blockIndex:I

.field private blockNum:I

.field private commentCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment_count"
    .end annotation
.end field

.field private coverUrlLarge:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_large"
    .end annotation
.end field

.field private coverUrlMiddle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_middle"
    .end annotation
.end field

.field private coverUrlSmall:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cover_url_small"
    .end annotation
.end field

.field private createdAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private discountedPrice:D

.field private downloadCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_count"
    .end annotation
.end field

.field private downloadSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_size"
    .end annotation
.end field

.field private downloadStatus:I

.field private downloadTime:J

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "download_url"
    .end annotation
.end field

.field private downloadedSaveFilePath:Ljava/lang/String;

.field private downloadedSize:J

.field private duration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private endTime:Ljava/lang/String;

.field public extra:Ljava/lang/Object;

.field private favoriteCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field private free:Z

.field private insertSequence:I

.field private isAutoPaused:Z

.field private isLike:Z

.field private isPaid:Z

.field private orderNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "order_num"
    .end annotation
.end field

.field private orderPositon:I

.field private playCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_count"
    .end annotation
.end field

.field private playPathHq:Ljava/lang/String;

.field private playSize24M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_24_m4a"
    .end annotation
.end field

.field private playSize32:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_32"
    .end annotation
.end field

.field private playSize64:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_64"
    .end annotation
.end field

.field private playSize64m4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_size_64_m4a"
    .end annotation
.end field

.field private playSource:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_source"
    .end annotation
.end field

.field private playUrl24M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_24_m4a"
    .end annotation
.end field

.field private playUrl32:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_32"
    .end annotation
.end field

.field private playUrl64:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_64"
    .end annotation
.end field

.field private playUrl64M4a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_url_64_m4a"
    .end annotation
.end field

.field private price:D

.field private priceTypeId:I

.field private programId:J

.field private protocolVersion:I

.field private radioId:J

.field private radioName:Ljava/lang/String;

.field private radioRate24AacUrl:Ljava/lang/String;

.field private radioRate24TsUrl:Ljava/lang/String;

.field private radioRate64AacUrl:Ljava/lang/String;

.field private radioRate64TsUrl:Ljava/lang/String;

.field private scheduleId:J

.field private sequenceId:Ljava/lang/String;

.field private source:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field private startTime:Ljava/lang/String;

.field private timeline:J

.field private trackIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_intro"
    .end annotation
.end field

.field private trackStatus:I

.field private trackTags:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_tags"
    .end annotation
.end field

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "track_title"
    .end annotation
.end field

.field private uid:J

.field private updatedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 724
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;-><init>()V

    .line 79
    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderPositon:I

    .line 98
    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    .line 99
    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    return-object v0
.end method

.method public getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;-><init>()V

    .line 197
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    goto :goto_0
.end method

.method public getBlockIndex()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockIndex:I

    return v0
.end method

.method public getBlockNum()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockNum:I

    return v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    return v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    return-wide v0
.end method

.method public getDiscountedPrice()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    return-wide v0
.end method

.method public getDownloadCount()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    return v0
.end method

.method public getDownloadSize()J
    .locals 2

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    return-wide v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    return v0
.end method

.method public getDownloadTime()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadTime:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSaveFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 477
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    return-object v0
.end method

.method public getFavoriteCount()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    return v0
.end method

.method public getInsertSequence()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    return v0
.end method

.method public getOrderNum()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    return v0
.end method

.method public getOrderPositon()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderPositon:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    return v0
.end method

.method public getPlayPathHq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySize24M4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySize32()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    return v0
.end method

.method public getPlaySize64()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    return v0
.end method

.method public getPlaySize64m4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaySource()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    return v0
.end method

.method public getPlayUrl24M4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl32()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl64M4a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()D
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    return-wide v0
.end method

.method public getPriceTypeId()I
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    return v0
.end method

.method public getProgramId()J
    .locals 2

    .prologue
    .line 581
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    return-wide v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->protocolVersion:I

    return v0
.end method

.method public getRadioId()J
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    return-wide v0
.end method

.method public getRadioName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate24AacUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate24TsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate64AacUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioRate64TsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScheduleId()J
    .locals 2

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    return-wide v0
.end method

.method public getSequenceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeline()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    return-wide v0
.end method

.method public getTrackIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackStatus()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    return v0
.end method

.method public getTrackTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->uid:J

    return-wide v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    return-wide v0
.end method

.method public isAuthorized()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    return v0
.end method

.method public isAutoPaused()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    return v0
.end method

.method public isLike()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    return v0
.end method

.method public isPaid()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 662
    invoke-super {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->readFromParcel(Landroid/os/Parcel;)V

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    .line 669
    const-class v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    .line 688
    const-class v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    .line 694
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    .line 705
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    .line 706
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    .line 707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    .line 709
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    .line 710
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    .line 711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    .line 712
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    .line 713
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    .line 716
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    .line 717
    return-void

    :cond_0
    move v0, v2

    .line 704
    goto :goto_0

    :cond_1
    move v0, v2

    .line 705
    goto :goto_1

    :cond_2
    move v0, v2

    .line 711
    goto :goto_2

    :cond_3
    move v0, v2

    .line 712
    goto :goto_3

    :cond_4
    move v1, v2

    .line 713
    goto :goto_4
.end method

.method public setAlbum(Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;)V
    .locals 0
    .param p1, "album"    # Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    .line 458
    return-void
.end method

.method public setAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)V
    .locals 0
    .param p1, "announcer"    # Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .line 306
    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0
    .param p1, "authorized"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    .line 171
    return-void
.end method

.method public setAutoPaused(Z)V
    .locals 0
    .param p1, "isAutoPaused"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    .line 210
    return-void
.end method

.method public setBlockIndex(I)V
    .locals 0
    .param p1, "blockIndex"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockIndex:I

    .line 187
    return-void
.end method

.method public setBlockNum(I)V
    .locals 0
    .param p1, "blockNum"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->blockNum:I

    .line 183
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0
    .param p1, "commentCount"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    .line 338
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlLarge"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setCoverUrlMiddle(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlMiddle"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlSmall"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setCreatedAt(J)V
    .locals 1
    .param p1, "createdAt"    # J

    .prologue
    .line 465
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    .line 466
    return-void
.end method

.method public setDiscountedPrice(D)V
    .locals 1
    .param p1, "discountedPrice"    # D

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    .line 155
    return-void
.end method

.method public setDownloadCount(I)V
    .locals 0
    .param p1, "downloadCount"    # I

    .prologue
    .line 345
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    .line 346
    return-void
.end method

.method public setDownloadSize(J)V
    .locals 1
    .param p1, "downloadSize"    # J

    .prologue
    .line 433
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    .line 434
    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0
    .param p1, "downloadStatus"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    .line 498
    return-void
.end method

.method public setDownloadTime(J)V
    .locals 1
    .param p1, "downloadTime"    # J

    .prologue
    .line 261
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadTime:J

    .line 262
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setDownloadedSaveFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadedSaveFilePath"    # Ljava/lang/String;

    .prologue
    .line 473
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 1
    .param p1, "downloadedSize"    # J

    .prologue
    .line 481
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    .line 482
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    .line 314
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setExtra(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/Object;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    .line 522
    return-void
.end method

.method public setFavoriteCount(I)V
    .locals 0
    .param p1, "favoriteCount"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    .line 330
    return-void
.end method

.method public setFree(Z)V
    .locals 0
    .param p1, "free"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    .line 163
    return-void
.end method

.method public setInsertSequence(I)V
    .locals 0
    .param p1, "insertSequence"    # I

    .prologue
    .line 513
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    .line 514
    return-void
.end method

.method public setLike(Z)V
    .locals 0
    .param p1, "isLike"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    .line 602
    return-void
.end method

.method public setOrderNum(I)V
    .locals 0
    .param p1, "orderNum"    # I

    .prologue
    .line 417
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    .line 418
    return-void
.end method

.method public setOrderPositon(I)V
    .locals 0
    .param p1, "orderPositon"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderPositon:I

    .line 254
    return-void
.end method

.method public setPaid(Z)V
    .locals 0
    .param p1, "isPaid"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    .line 135
    return-void
.end method

.method public setPlayCount(I)V
    .locals 0
    .param p1, "playCount"    # I

    .prologue
    .line 321
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    .line 322
    return-void
.end method

.method public setPlayPathHq(Ljava/lang/String;)V
    .locals 0
    .param p1, "playPathHq"    # Ljava/lang/String;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    .line 783
    return-void
.end method

.method public setPlaySize24M4a(Ljava/lang/String;)V
    .locals 0
    .param p1, "playSize24M4a"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setPlaySize32(I)V
    .locals 0
    .param p1, "playSize32"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    .line 362
    return-void
.end method

.method public setPlaySize64(I)V
    .locals 0
    .param p1, "playSize64"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    .line 378
    return-void
.end method

.method public setPlaySize64m4a(Ljava/lang/String;)V
    .locals 0
    .param p1, "playSize64m4a"    # Ljava/lang/String;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setPlaySource(I)V
    .locals 0
    .param p1, "playSource"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    .line 238
    return-void
.end method

.method public setPlayUrl24M4a(Ljava/lang/String;)V
    .locals 0
    .param p1, "playUrl24M4a"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setPlayUrl32(Ljava/lang/String;)V
    .locals 0
    .param p1, "playUrl32"    # Ljava/lang/String;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setPlayUrl64(Ljava/lang/String;)V
    .locals 0
    .param p1, "playUrl64"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setPlayUrl64M4a(Ljava/lang/String;)V
    .locals 0
    .param p1, "playUrl64M4a"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setPrice(D)V
    .locals 1
    .param p1, "price"    # D

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    .line 147
    return-void
.end method

.method public setPriceTypeId(I)V
    .locals 0
    .param p1, "priceTypeId"    # I

    .prologue
    .line 790
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    .line 791
    return-void
.end method

.method public setProgramId(J)V
    .locals 1
    .param p1, "programId"    # J

    .prologue
    .line 585
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    .line 586
    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0
    .param p1, "protocolVersion"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->protocolVersion:I

    .line 202
    return-void
.end method

.method public setRadioId(J)V
    .locals 1
    .param p1, "radioId"    # J

    .prologue
    .line 593
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    .line 594
    return-void
.end method

.method public setRadioName(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioName"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setRadioRate24AacUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioRate24AacUrl"    # Ljava/lang/String;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    .line 554
    return-void
.end method

.method public setRadioRate24TsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioRate24TsUrl"    # Ljava/lang/String;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setRadioRate64AacUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioRate64AacUrl"    # Ljava/lang/String;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    .line 570
    return-void
.end method

.method public setRadioRate64TsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "radioRate64TsUrl"    # Ljava/lang/String;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setScheduleId(J)V
    .locals 1
    .param p1, "scheduleId"    # J

    .prologue
    .line 545
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    .line 546
    return-void
.end method

.method public setSequenceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sequenceId"    # Ljava/lang/String;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    .line 442
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setTimeline(J)V
    .locals 1
    .param p1, "timeline"    # J

    .prologue
    .line 774
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    .line 775
    return-void
.end method

.method public setTrackIntro(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackIntro"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setTrackStatus(I)V
    .locals 0
    .param p1, "trackStatus"    # I

    .prologue
    .line 489
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    .line 490
    return-void
.end method

.method public setTrackTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackTags"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setTrackTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "trackTitle"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setUid(J)V
    .locals 1
    .param p1, "uid"    # J

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->uid:J

    .line 127
    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 1
    .param p1, "updatedAt"    # J

    .prologue
    .line 449
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    .line 450
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track [trackTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackIntro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", announcer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize64="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl24M4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize24M4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playUrl64M4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSize64m4a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", album="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedSaveFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trackStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sequenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAutoPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", insertSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->insertSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scheduleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", programId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate24AacUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate24TsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate64AacUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioRate64TsUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLike="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 606
    invoke-super {p0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 607
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->trackIntro:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 614
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->favoriteCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->commentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl32:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize32:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl24M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize24M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playUrl64M4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSize64m4a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->orderNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 630
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSize:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 631
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->album:Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 632
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->source:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->updatedAt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->createdAt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 635
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->downloadedSaveFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->extra:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->scheduleId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 640
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate24TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64AacUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioRate64TsUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->programId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 645
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 646
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isLike:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 647
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isAutoPaused:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->radioName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 649
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    iget-wide v4, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->timeline:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 651
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->sequenceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->playPathHq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->free:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->authorized:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->isPaid:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->price:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 657
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->discountedPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 658
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->priceTypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    return-void

    :cond_0
    move v0, v2

    .line 646
    goto :goto_0

    :cond_1
    move v0, v2

    .line 647
    goto :goto_1

    :cond_2
    move v0, v2

    .line 653
    goto :goto_2

    :cond_3
    move v0, v2

    .line 654
    goto :goto_3

    :cond_4
    move v1, v2

    .line 655
    goto :goto_4
.end method
