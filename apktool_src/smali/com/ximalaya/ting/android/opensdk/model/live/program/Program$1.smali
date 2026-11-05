.class final Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;
.super Ljava/lang/Object;
.source "Program.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
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
        "Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 211
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;-><init>()V

    .line 212
    .local v0, "program":Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->readFromParcel(Landroid/os/Parcel;)V

    .line 213
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 219
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    return-object v0
.end method
