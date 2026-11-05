.class final Lcom/ximalaya/ting/android/opensdk/model/album/Announcer$1;
.super Ljava/lang/Object;
.source "Announcer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
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
        "Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 215
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;-><init>()V

    .line 216
    .local v0, "info":Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->readFromParcel(Landroid/os/Parcel;)V

    .line 217
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 209
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    move-result-object v0

    return-object v0
.end method
