.class public Lcn/kuwo/autosdk/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final f:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/kuwo/autosdk/w;

    invoke-direct {v0}, Lcn/kuwo/autosdk/w;-><init>()V

    sput-object v0, Lcn/kuwo/autosdk/v;->f:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/autosdk/v;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/kuwo/autosdk/v;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/kuwo/autosdk/v;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/kuwo/autosdk/v;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/kuwo/autosdk/v;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/kuwo/autosdk/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/v;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcn/kuwo/autosdk/v;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/kuwo/autosdk/v;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/kuwo/autosdk/v;->b:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/kuwo/autosdk/v;->c:I

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/kuwo/autosdk/v;->d:I

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/kuwo/autosdk/v;->e:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xe

    aget-object v0, v0, v1

    iput-object v0, p0, Lcn/kuwo/autosdk/v;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcn/kuwo/autosdk/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/kuwo/autosdk/v;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/v;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcn/kuwo/autosdk/v;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcn/kuwo/autosdk/v;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcn/kuwo/autosdk/v;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcn/kuwo/autosdk/v;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
