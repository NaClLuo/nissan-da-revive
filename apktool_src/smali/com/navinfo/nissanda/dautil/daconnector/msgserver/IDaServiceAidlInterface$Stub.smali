.class public abstract Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;
.super Landroid/os/Binder;
.source "IDaServiceAidlInterface.java"

# interfaces
.implements Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

.field static final TRANSACTION_getDaInfo:I = 0x1

.field static final TRANSACTION_sendSerMsg:I = 0x3

.field static final TRANSACTION_setCallback:I = 0x2

.field static final TRANSACTION_startLocating:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

    invoke-virtual {p0, p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v1, "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 44
    :sswitch_0
    const-string v4, "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :sswitch_1
    const-string v4, "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;->getDaInfo()Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-result-object v2

    .line 51
    .local v2, "_result":Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {v2, p3, v3}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 57
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 63
    .end local v2    # "_result":Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    :sswitch_2
    const-string v4, "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    move-result-object v0

    .line 66
    .local v0, "_arg0":Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;
    invoke-virtual {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;->setCallback(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;
    :sswitch_3
    const-string v4, "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 76
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 77
    .local v1, "_arg1":[B
    invoke-virtual {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;->sendSerMsg(I[B)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[B
    :sswitch_4
    const-string v4, "com.navinfo.nissanda.dautil.daconnector.msgserver.IDaServiceAidlInterface"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;->startLocating()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
