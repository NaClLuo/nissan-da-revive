.class public Lcom/ximalaya/ting/android/opensdk/model/album/Album;
.super Ljava/lang/Object;
.source "Album.java"


# instance fields
.field private albumIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_intro"
    .end annotation
.end field

.field private albumTags:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_tags"
    .end annotation
.end field

.field private albumTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_title"
    .end annotation
.end field

.field private announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer"
    .end annotation
.end field

.field private basedRelativeAlbumId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "based_relative_album_id"
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

.field private favoriteCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "favorite_count"
    .end annotation
.end field

.field private id:J

.field private includeTrackCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "include_track_count"
    .end annotation
.end field

.field private isFinished:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_finished"
    .end annotation
.end field

.field private lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_uptrack"
    .end annotation
.end field

.field private playCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "play_count"
    .end annotation
.end field

.field private recommendTrace:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend_trace"
    .end annotation
.end field

.field private recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend_track"
    .end annotation
.end field

.field private recommentSrc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recommend_src"
    .end annotation
.end field

.field private shareCount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "share_count"
    .end annotation
.end field

.field private soundLastListenId:J

.field private tracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field

.field private updatedAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTags:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    return-object v0
.end method

.method public getBasedRelativeAlbumId()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->basedRelativeAlbumId:J

    return-wide v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->createdAt:J

    return-wide v0
.end method

.method public getFavoriteCount()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->favoriteCount:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->id:J

    return-wide v0
.end method

.method public getIncludeTrackCount()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->includeTrackCount:J

    return-wide v0
.end method

.method public getIsFinished()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->isFinished:I

    return v0
.end method

.method public getLastUptrack()Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    return-object v0
.end method

.method public getPlayCount()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->playCount:J

    return-wide v0
.end method

.method public getRecommendTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendTrack()Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;

    return-object v0
.end method

.method public getRecommentSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommentSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getShareCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->shareCount:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundLastListenId()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->soundLastListenId:J

    return-wide v0
.end method

.method public getTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->tracks:Ljava/util/List;

    return-object v0
.end method

.method public getUpdatedAt()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->updatedAt:J

    return-wide v0
.end method

.method public setAlbumIntro(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumIntro"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumIntro:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setAlbumTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTags"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTags:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTitle:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setAnnouncer(Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;)V
    .locals 0
    .param p1, "announcer"    # Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    .line 130
    return-void
.end method

.method public setBasedRelativeAlbumId(J)V
    .locals 1
    .param p1, "basedRelativeAlbumId"    # J

    .prologue
    .line 239
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->basedRelativeAlbumId:J

    .line 240
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlLarge"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlLarge:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setCoverUrlMiddle(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlMiddle"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlMiddle:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlSmall"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlSmall:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCreatedAt(J)V
    .locals 1
    .param p1, "createdAt"    # J

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->createdAt:J

    .line 200
    return-void
.end method

.method public setFavoriteCount(J)V
    .locals 1
    .param p1, "favoriteCount"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->favoriteCount:J

    .line 150
    return-void
.end method

.method public setId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->id:J

    .line 60
    return-void
.end method

.method public setIncludeTrackCount(J)V
    .locals 1
    .param p1, "includeTrackCount"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->includeTrackCount:J

    .line 160
    return-void
.end method

.method public setIsFinished(I)V
    .locals 0
    .param p1, "isFinished"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->isFinished:I

    .line 220
    return-void
.end method

.method public setLastUptrack(Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;)V
    .locals 0
    .param p1, "lastUptrack"    # Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    .line 170
    return-void
.end method

.method public setPlayCount(J)V
    .locals 1
    .param p1, "playCount"    # J

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->playCount:J

    .line 140
    return-void
.end method

.method public setRecommendTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommendTrace"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrace:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setRecommendTrack(Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;)V
    .locals 0
    .param p1, "recommendTrack"    # Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;

    .line 180
    return-void
.end method

.method public setRecommentSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "recommentSrc"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommentSrc:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setShareCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareCount"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->shareCount:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setSoundLastListenId(J)V
    .locals 1
    .param p1, "soundLastListenId"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->soundLastListenId:J

    .line 210
    return-void
.end method

.method public setTracks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->tracks:Ljava/util/List;

    .line 268
    return-void
.end method

.method public setUpdatedAt(J)V
    .locals 1
    .param p1, "updatedAt"    # J

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->updatedAt:J

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Album [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumTags:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumIntro="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->albumIntro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", announcer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->announcer:Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->playCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", favoriteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->favoriteCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeTrackCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->includeTrackCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUptrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->lastUptrack:Lcom/ximalaya/ting/android/opensdk/model/album/LastUpTrack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommendTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrack:Lcom/ximalaya/ting/android/opensdk/model/album/RecommendTrack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->updatedAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->createdAt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", soundLastListenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->soundLastListenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->isFinished:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommentSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommentSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", basedRelativeAlbumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->basedRelativeAlbumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recommendTrace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->recommendTrace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shareCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Album;->shareCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
