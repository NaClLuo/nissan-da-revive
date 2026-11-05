.class final Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio$1;
.super Ljava/lang/Object;
.source "Radio.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
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
        "Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 272
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;-><init>()V

    .line 273
    .local v0, "radio":Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->readFromParcel(Landroid/os/Parcel;)V

    .line 274
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 266
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v0

    return-object v0
.end method
