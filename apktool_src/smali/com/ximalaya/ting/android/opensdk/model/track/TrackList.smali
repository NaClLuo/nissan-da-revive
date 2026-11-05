.class public Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;
.super Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;
.source "TrackList.java"


# instance fields
.field private albumId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_id"
    .end annotation
.end field

.field private albumTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_title"
    .end annotation
.end field

.field private categoryId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category_id"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/model/track/CommonTrackList;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->albumId:I

    return v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->categoryId:I

    return v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumId(I)V
    .locals 0
    .param p1, "albumId"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->albumId:I

    .line 29
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->albumTitle:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "categoryId"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->categoryId:I

    .line 49
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlLarge"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlLarge:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setCoverUrlMiddle(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlMiddle"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlMiddle:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlSmall"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlSmall:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackList [albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->albumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->categoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/track/TrackList;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
