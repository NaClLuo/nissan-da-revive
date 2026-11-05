.class public Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
.super Ljava/lang/Object;
.source "InputEvent_parse.java"

# interfaces
.implements Lcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;,
        Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InputEvent_parse"

.field private static UIBC1_x:I = 0x0

.field private static UIBC1_y:I = 0x0

.field private static UIBC2_x:I = 0x0

.field private static UIBC2_y:I = 0x0

.field private static final delayms_norecv:I = 0x5

.field private static final delayms_recv:I = 0x1

.field private static enable_flag:Z

.field private static final instance:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;


# instance fields
.field private final HomeKey:S

.field private final KeyDown:B

.field private final KeyUp:B

.field private final MenuKey:S

.field private final ReturnKey:S

.field private final TouchDown:B

.field private final TouchMove:B

.field private final TouchUp:B

.field private isZoomed:Z

.field private keyDownListenerList:Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

.field private mContext:Landroid/content/Context;

.field private mRecvQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mic_Touch_Event_Thread:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mic_server_recv_UIBC_socket_connect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private scale_x:I

.field private scale_y:I

.field private screenHeight:I

.field private screenStreamHeight:I

.field private screenStreamWidth:I

.field private screenWidth:I

.field private socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

.field private touchDownDistance:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_x:I

    .line 48
    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_y:I

    .line 50
    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_x:I

    .line 52
    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_y:I

    .line 66
    sput-boolean v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->enable_flag:Z

    .line 86
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    invoke-direct {v0}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;-><init>()V

    sput-object v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->instance:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x1e0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mRecvQueue:Ljava/util/Queue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_Touch_Event_Thread:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_server_recv_UIBC_socket_connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenWidth:I

    .line 70
    const/16 v0, 0x320

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenHeight:I

    .line 72
    const/16 v0, 0x280

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamWidth:I

    .line 74
    iput v5, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamHeight:I

    .line 76
    const/16 v0, 0x4000

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_x:I

    .line 78
    const/16 v0, 0x4000

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_y:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->keyDownListenerList:Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

    .line 176
    iput-byte v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->TouchDown:B

    .line 177
    iput-byte v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->TouchUp:B

    .line 178
    iput-byte v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->TouchMove:B

    .line 179
    iput-byte v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->KeyDown:B

    .line 180
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->KeyUp:B

    .line 182
    iput-short v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->HomeKey:S

    .line 183
    iput-short v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->ReturnKey:S

    .line 184
    iput-short v4, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->MenuKey:S

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->touchDownDistance:D

    .line 187
    iput-boolean v2, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->isZoomed:Z

    .line 90
    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_y:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_x:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_y:I

    return v0
.end method

.method static synthetic access$1300(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;FFFF)F
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->spacing(FFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)I
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .param p1, "x1"    # Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->callBackTouchListener(Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_Touch_Event_Thread:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->enable_flag:Z

    return v0
.end method

.method static synthetic access$300(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    return-object v0
.end method

.method static synthetic access$400(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_server_recv_UIBC_socket_connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mRecvQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .param p1, "x1"    # [B

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->parseTouchPoints([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)Z
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->isZoomed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->isZoomed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;)D
    .locals 2
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->touchDownDistance:D

    return-wide v0
.end method

.method static synthetic access$802(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;D)D
    .locals 1
    .param p0, "x0"    # Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .param p1, "x1"    # D

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->touchDownDistance:D

    return-wide p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_x:I

    return v0
.end method

.method private callBackTouchListener(Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V
    .locals 1
    .param p1, "touchevent"    # Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->keyDownListenerList:Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->keyDownListenerList:Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

    invoke-interface {v0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;->onKeyEvent(Lcom/navinfo/nissanda/dautil/daconnector/DaTouchEvent;)V

    .line 280
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->instance:Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;

    return-object v0
.end method

.method private parseTouchPoints([B)V
    .locals 2
    .param p1, "msg_recv"    # [B

    .prologue
    .line 283
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/autonavi/cvc/app/da/source/Common_method;->bytesToShort([BI)S

    move-result v0

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_x:I

    .line 284
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_x:I

    sget v1, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_x:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xe

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_x:I

    .line 285
    const/16 v0, 0xc

    invoke-static {p1, v0}, Lcom/autonavi/cvc/app/da/source/Common_method;->bytesToShort([BI)S

    move-result v0

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_y:I

    .line 286
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_y:I

    sget v1, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_y:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xe

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC1_y:I

    .line 287
    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/autonavi/cvc/app/da/source/Common_method;->bytesToShort([BI)S

    move-result v0

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_x:I

    .line 288
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_x:I

    sget v1, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_x:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xe

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_x:I

    .line 289
    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/autonavi/cvc/app/da/source/Common_method;->bytesToShort([BI)S

    move-result v0

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_y:I

    .line 290
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_y:I

    sget v1, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_y:I

    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0xe

    sput v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->UIBC2_y:I

    .line 291
    return-void
.end method

.method private printBytes([B)Ljava/lang/String;
    .locals 4
    .param p1, "msg_one"    # [B

    .prologue
    .line 445
    const-string v0, ""

    .line 446
    .local v0, "hex":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_1
    return-object v0
.end method

.method private scale_xy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 324
    if-lez p1, :cond_0

    .line 325
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenHeight:I

    iget v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenWidth:I

    if-le v0, v1, :cond_2

    .line 326
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenHeight:I

    shl-int/lit8 v0, v0, 0xe

    div-int/2addr v0, p1

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_x:I

    .line 331
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 332
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenHeight:I

    iget v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenWidth:I

    if-le v0, v1, :cond_3

    .line 333
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenWidth:I

    shl-int/lit8 v0, v0, 0xe

    div-int/2addr v0, p2

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_y:I

    .line 338
    :cond_1
    :goto_1
    return-void

    .line 328
    :cond_2
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenWidth:I

    shl-int/lit8 v0, v0, 0xe

    div-int/2addr v0, p1

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_x:I

    goto :goto_0

    .line 335
    :cond_3
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenHeight:I

    shl-int/lit8 v0, v0, 0xe

    div-int/2addr v0, p2

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_y:I

    goto :goto_1
.end method

.method private spacing(FFFF)F
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 363
    sub-float v0, p3, p1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p4, p2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public InputEvent_parse_init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    if-nez v0, :cond_0

    .line 112
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenWidth:I

    .line 114
    invoke-static {p1}, Lcom/autonavi/cvc/app/da/util/ShareMethod;->getDpi(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenHeight:I

    .line 115
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamWidth:I

    iget v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamHeight:I

    invoke-direct {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_xy(II)V

    .line 116
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    const/16 v1, 0x270c

    invoke-direct {v0, v1, p0}, Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;-><init>(ILcom/navinfo/nissanda/dautil/daconnector/socketserver/IMessageCon;)V

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->socket_server:Lcom/navinfo/nissanda/dautil/daconnector/socketserver/Socket_server;

    .line 118
    :cond_0
    return-void
.end method

.method public Input_event_parse_ctrl(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    sput-boolean p1, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->enable_flag:Z

    .line 123
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_server_recv_UIBC_socket_connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :goto_0
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_Touch_Event_Thread:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;

    invoke-direct {v0, p0, v2}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$1;)V

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$server_recv_UIBC_socket_connect;->start()V

    .line 129
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_server_recv_UIBC_socket_connect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;

    invoke-direct {v0, p0, v2}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;-><init>(Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$1;)V

    invoke-virtual {v0}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse$Touch_Event_Thread;->start()V

    .line 144
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mic_Touch_Event_Thread:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1
.end method

.method public addKeyDownListener(Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->keyDownListenerList:Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

    .line 153
    return-void
.end method

.method public deviceClose(Z)V
    .locals 1
    .param p1, "isClose"    # Z

    .prologue
    .line 420
    const-string v0, "deviceClose"

    invoke-static {v0}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public deviceOpen(Ljava/net/Socket;Z)V
    .locals 11
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "isOpen"    # Z

    .prologue
    .line 369
    if-nez p2, :cond_1

    .line 416
    :cond_0
    return-void

    .line 373
    :cond_1
    if-eqz p1, :cond_0

    .line 374
    iget-object v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mContext:Landroid/content/Context;

    const-string v10, "media_router"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaRouter;

    .line 375
    .local v6, "mediarouter":Landroid/media/MediaRouter;
    invoke-virtual {v6}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v5

    .line 376
    .local v5, "mediaCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 377
    invoke-virtual {v6, v3}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v8

    .line 378
    .local v8, "routeInfo":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 380
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v9, "getDeviceAddress"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 381
    .local v4, "m1":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    .line 382
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 383
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 384
    .local v1, "deviceAddress":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 385
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 386
    .local v7, "point":Landroid/graphics/Point;
    invoke-virtual {v8}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 387
    iget v9, v7, Landroid/graphics/Point;->x:I

    iput v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamHeight:I

    .line 388
    iget v9, v7, Landroid/graphics/Point;->y:I

    iput v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamWidth:I

    .line 389
    iget v9, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamWidth:I

    iget v10, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamHeight:I

    invoke-direct {p0, v9, v10}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_xy(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 376
    .end local v1    # "deviceAddress":Ljava/lang/String;
    .end local v4    # "m1":Ljava/lang/reflect/Method;
    .end local v7    # "point":Landroid/graphics/Point;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 408
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 410
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 411
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public disconnect_notify()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public intentDA(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 294
    const-string v9, "intentDA"

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 295
    const/4 v4, 0x0

    .line 297
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 301
    :goto_0
    if-nez v4, :cond_1

    .line 321
    :cond_0
    :goto_1
    return-void

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    .local v7, "resolveIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v7, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 308
    .local v8, "resolveinfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 309
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_0

    .line 310
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 311
    .local v5, "packageName":Ljava/lang/String;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 312
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v3, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intentDA "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 317
    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 319
    const-string v9, "intentDA end"

    invoke-static {v9}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public receiveMessage([B)V
    .locals 5
    .param p1, "mes"    # [B

    .prologue
    .line 427
    if-eqz p1, :cond_0

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "len_total":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_one:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->printBytes([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 430
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 431
    array-length v3, p1

    add-int/lit8 v4, v0, 0x6

    if-ge v3, v4, :cond_1

    .line 442
    .end local v0    # "len_total":I
    :cond_0
    return-void

    .line 434
    .restart local v0    # "len_total":I
    :cond_1
    add-int/lit8 v3, v0, 0x2

    invoke-static {p1, v3}, Lcom/autonavi/cvc/app/da/source/Common_method;->bytesToShort([BI)S

    move-result v2

    .line 435
    .local v2, "uibcLength":I
    new-array v1, v2, [B

    .line 436
    .local v1, "msg_one":[B
    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    add-int/2addr v0, v2

    .line 438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg_one:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->printBytes([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/autonavi/cvc/app/da/util/FlowLog;->d(Ljava/lang/String;)V

    .line 439
    iget-object v3, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mRecvQueue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeKeyDownListenr(Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

    .prologue
    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->keyDownListenerList:Lcom/navinfo/nissanda/dautil/daconnector/KeyEventListener;

    .line 157
    return-void
.end method

.method public setScreenStream(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 342
    iput p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamWidth:I

    .line 343
    iput p2, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamHeight:I

    .line 344
    iget v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamWidth:I

    iget v1, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->screenStreamHeight:I

    invoke-direct {p0, v0, v1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->scale_xy(II)V

    .line 345
    return-void
.end method

.method public startInputEventService(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->InputEvent_parse_init(Landroid/content/Context;)V

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->Input_event_parse_ctrl(Z)V

    .line 108
    return-void
.end method

.method public unInit()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/uibcserver/InputEvent_parse;->mContext:Landroid/content/Context;

    .line 101
    :cond_0
    return-void
.end method
