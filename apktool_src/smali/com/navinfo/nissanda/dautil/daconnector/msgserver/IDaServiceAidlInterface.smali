.class public interface abstract Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;
.super Ljava/lang/Object;
.source "IDaServiceAidlInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDaInfo()Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendSerMsg(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setCallback(Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startLocating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
