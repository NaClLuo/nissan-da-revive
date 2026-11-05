.class final Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/model/track/Track;
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
        "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 733
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;-><init>()V

    .line 734
    .local v0, "info":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->readFromParcel(Landroid/os/Parcel;)V

    .line 735
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 728
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 724
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v0

    return-object v0
.end method
