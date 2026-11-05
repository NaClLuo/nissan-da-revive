.class final Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;
.super Ljava/lang/Object;
.source "SubordinatedAlbum.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 155
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;-><init>()V

    .line 156
    .local v0, "info":Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;->readFromParcel(Landroid/os/Parcel;)V

    .line 157
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/album/SubordinatedAlbum;

    move-result-object v0

    return-object v0
.end method
