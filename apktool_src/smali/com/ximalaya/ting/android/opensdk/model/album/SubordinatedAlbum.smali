.class public Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
.super Ljava/lang/Object;
.source "SubordinatedAlbum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private albumTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "album_title"
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

.field private recSrc:Ljava/lang/String;

.field private recTrack:Ljava/lang/String;

.field private uptoDateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;-><init>()V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumId:J

    return-wide v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverUrlSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getRecSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getRecTrack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recTrack:Ljava/lang/String;

    return-object v0
.end method

.method public getUptoDateTime()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->uptoDateTime:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumId:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumTitle:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlSmall:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlMiddle:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlLarge:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recSrc:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recTrack:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setAlbumId(J)V
    .locals 1
    .param p1, "albumId"    # J

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumId:J

    .line 77
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "albumTitle"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumTitle:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setCoverUrlLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlLarge"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlLarge:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setCoverUrlMiddle(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlMiddle"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlMiddle:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setCoverUrlSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "coverUrlSmall"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlSmall:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRecSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "recSrc"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recSrc:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setRecTrack(Ljava/lang/String;)V
    .locals 0
    .param p1, "recTrack"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recTrack:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUptoDateTime(J)V
    .locals 1
    .param p1, "uptoDateTime"    # J

    .prologue
    .line 68
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->uptoDateTime:J

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubordinatedAlbum [albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlSmall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlMiddle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", coverUrlLarge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recSrc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recSrc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recTrack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recTrack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 128
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->albumTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlMiddle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->coverUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->recTrack:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return-void
.end method
