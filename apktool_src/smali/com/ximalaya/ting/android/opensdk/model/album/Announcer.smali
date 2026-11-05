.class public Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
.super Ljava/lang/Object;
.source "Announcer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private announcerId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private announcerPosition:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "announcer_position"
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private followerCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "follower_count"
    .end annotation
.end field

.field private followingCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "following_count"
    .end annotation
.end field

.field private kind:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private releasedAlbumCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "released_album_count"
    .end annotation
.end field

.field private releasedTrackCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "released_track_count"
    .end annotation
.end field

.field private vCategoryId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vcategory_id"
    .end annotation
.end field

.field private vdesc:Ljava/lang/String;

.field private verified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_verified"
    .end annotation
.end field

.field private vsignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnouncerId()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    return-wide v0
.end method

.method public getAnnouncerPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowerCount()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    return-wide v0
.end method

.method public getFollowingCount()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    return-wide v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getReleasedAlbumCount()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    return-wide v0
.end method

.method public getReleasedTrackCount()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    return-wide v0
.end method

.method public getVdesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getVsignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    return-object v0
.end method

.method public getvCategoryId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    return-wide v0
.end method

.method public isVerified()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    .line 189
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 190
    .local v0, "temp":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 191
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    .line 201
    return-void
.end method

.method public setAnnouncerId(J)V
    .locals 1
    .param p1, "announcerId"    # J

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    .line 53
    return-void
.end method

.method public setAnnouncerPosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "announcerPosition"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setFollowerCount(J)V
    .locals 1
    .param p1, "followerCount"    # J

    .prologue
    .line 130
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    .line 131
    return-void
.end method

.method public setFollowingCount(J)V
    .locals 1
    .param p1, "followingCount"    # J

    .prologue
    .line 138
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    .line 139
    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0
    .param p1, "kind"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setReleasedAlbumCount(J)V
    .locals 1
    .param p1, "releasedAlbumCount"    # J

    .prologue
    .line 146
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    .line 147
    return-void
.end method

.method public setReleasedTrackCount(J)V
    .locals 1
    .param p1, "releasedTrackCount"    # J

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    .line 155
    return-void
.end method

.method public setVdesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "vdesc"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setVerified(Z)V
    .locals 0
    .param p1, "verified"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    .line 83
    return-void
.end method

.method public setVsignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "vsignature"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setvCategoryId(J)V
    .locals 1
    .param p1, "vCategoryId"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Announcer [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVerified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->nickname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->verified:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 173
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->kind:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vCategoryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vdesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->vsignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->announcerPosition:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followerCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->followingCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedAlbumCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->releasedTrackCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    return-void
.end method
