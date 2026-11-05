.class public Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;
.super Ljava/lang/Object;
.source "DaConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;
    }
.end annotation


# static fields
.field public static final QUIT_LAUNCHER:Ljava/lang/String; = "com.navinfo.panasonic.launcherGone"

.field private static daConnector:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;


# instance fields
.field private daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

.field private daServiceConnection:Landroid/content/ServiceConnection;

.field private isConnected:Z

.field private mContext:Landroid/content/Context;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private messageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

.field private onConnectListener:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    invoke-direct {v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;-><init>()V

    sput-object v0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daConnector:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$1;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 67
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$2;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daServiceConnection:Landroid/content/ServiceConnection;

    .line 103
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;

    invoke-direct {v0, p0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$3;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->messageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    return-object v0
.end method

.method static synthetic access$002(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;
    .param p1, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Landroid/os/IBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->startDaService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->messageCallback:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaMessageCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected:Z

    return v0
.end method

.method static synthetic access$502(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;)Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->onConnectListener:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;

    return-object v0
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daConnector:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;

    return-object v0
.end method

.method private startDaService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/DaService;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->bindService(Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method public appChange(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    const/16 v2, 0x1c

    invoke-static {p1, p2}, Lcom/navinfo/nissanda/dautil/DaUtil;->pkgName2Bytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;->sendSerMsg(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDaInfo()Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return-object v1

    .line 151
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    invoke-interface {v2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;->getDaInfo()Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->getDaInfo()Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;

    move-result-object v0

    .line 128
    .local v0, "daInfo":Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/model/DaInfo;->connected()Z

    move-result v1

    iput-boolean v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected:Z

    .line 132
    :cond_0
    iget-boolean v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->isConnected:Z

    return v1
.end method

.method public removeOnConnectListener(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->onConnectListener:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;

    .line 91
    return-void
.end method

.method public sendMessageToDa(I[B)V
    .locals 2
    .param p1, "message"    # I
    .param p2, "payload"    # [B

    .prologue
    .line 136
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->daService:Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;

    invoke-interface {v1, p1, p2}, Lcom/navinfo/nissanda/dautil/daconnector/msgserver/IDaServiceAidlInterface;->sendSerMsg(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setOnConnectListener(Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->onConnectListener:Lcom/navinfo/nissanda/dautil/daconnector/DaConnector$OnConnectListener;

    .line 100
    return-void
.end method

.method public startConnecting(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/DaConnector;->startDaService(Landroid/content/Context;)V

    .line 36
    return-void
.end method
