.class Lcn/kuwo/autosdk/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcn/kuwo/autosdk/v;
    .locals 2

    new-instance v0, Lcn/kuwo/autosdk/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/kuwo/autosdk/v;-><init>(Landroid/os/Parcel;Lcn/kuwo/autosdk/v;)V

    return-object v0
.end method

.method public a(I)[Lcn/kuwo/autosdk/v;
    .locals 1

    new-array v0, p1, [Lcn/kuwo/autosdk/v;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/autosdk/w;->a(Landroid/os/Parcel;)Lcn/kuwo/autosdk/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcn/kuwo/autosdk/w;->a(I)[Lcn/kuwo/autosdk/v;

    move-result-object v0

    return-object v0
.end method
