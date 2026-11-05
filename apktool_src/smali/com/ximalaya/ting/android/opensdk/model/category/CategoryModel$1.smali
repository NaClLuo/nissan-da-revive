.class final Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel$1;
.super Ljava/lang/Object;
.source "CategoryModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;
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
        "Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 45
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;-><init>()V

    .line 46
    .local v0, "categoryModel":Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;->setCategoryId(I)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;->setCategoryName(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    new-array v0, p1, [Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel$1;->newArray(I)[Lcom/ximalaya/ting/android/opensdk/model/category/CategoryModel;

    move-result-object v0

    return-object v0
.end method
