.class final Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis$1;
.super Ljava/lang/Object;
.source "Advertis.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
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
        "Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 180
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;-><init>()V

    .line 181
    .local v0, "ad":Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;->readFromParcel(Landroid/os/Parcel;)V

    .line 182
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 174
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/advertis/Advertis;

    move-result-object v0

    return-object v0
.end method
