.class public Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;
.super Ljava/lang/Object;
.source "DialogInfo.java"


# static fields
.field public static final DIALOG_CARRUNNING:I = 0xcc

.field public static final DIALOG_DOWNLOAD:I = 0xce

.field public static final DIALOG_DOWNLOADING:I = 0xd0

.field public static final DIALOG_DOWNLOAD_COMPLETE:I = 0xd1

.field public static final DIALOG_INSTALL:I = 0xc9

.field public static final DIALOG_QUIT:I = 0xca

.field public static final DIALOG_UPGRAGE:I = 0xcf

.field public static final MIRACAST:I = 0x6b


# instance fields
.field private final event:I

.field private final message:Ljava/lang/String;

.field private final negative:Ljava/lang/String;

.field private final positive:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positive"    # Ljava/lang/String;
    .param p4, "negative"    # Ljava/lang/String;
    .param p5, "event"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->title:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->message:Ljava/lang/String;

    .line 32
    iput p5, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->event:I

    .line 33
    iput-object p3, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->positive:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->negative:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getEvent()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->event:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/ui/model/DialogInfo;->title:Ljava/lang/String;

    return-object v0
.end method
