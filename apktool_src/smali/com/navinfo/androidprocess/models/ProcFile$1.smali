.class final Lcom/navinfo/androidprocess/models/ProcFile$1;
.super Ljava/lang/Object;
.source "ProcFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/androidprocess/models/ProcFile;
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
        "Lcom/navinfo/androidprocess/models/ProcFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/navinfo/androidprocess/models/ProcFile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Lcom/navinfo/androidprocess/models/ProcFile;

    invoke-direct {v0, p1}, Lcom/navinfo/androidprocess/models/ProcFile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/navinfo/androidprocess/models/ProcFile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/navinfo/androidprocess/models/ProcFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/navinfo/androidprocess/models/ProcFile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 91
    new-array v0, p1, [Lcom/navinfo/androidprocess/models/ProcFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/navinfo/androidprocess/models/ProcFile$1;->newArray(I)[Lcom/navinfo/androidprocess/models/ProcFile;

    move-result-object v0

    return-object v0
.end method
