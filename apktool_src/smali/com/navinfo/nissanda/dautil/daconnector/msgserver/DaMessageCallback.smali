.class public interface abstract Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;
.super Ljava/lang/Object;
.source "DaMessageCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCarConnect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract receiveMessage(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
