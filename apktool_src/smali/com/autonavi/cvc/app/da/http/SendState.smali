.class public final enum Lcom/autonavi/cvc/app/da/http/SendState;
.super Ljava/lang/Enum;
.source "SendState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/autonavi/cvc/app/da/http/SendState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/cvc/app/da/http/SendState;

.field public static final enum Close:Lcom/autonavi/cvc/app/da/http/SendState;

.field public static final enum Finished:Lcom/autonavi/cvc/app/da/http/SendState;

.field public static final enum NotSend:Lcom/autonavi/cvc/app/da/http/SendState;

.field public static final enum Other:Lcom/autonavi/cvc/app/da/http/SendState;

.field public static final enum Sending:Lcom/autonavi/cvc/app/da/http/SendState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/autonavi/cvc/app/da/http/SendState;

    const-string v1, "NotSend"

    invoke-direct {v0, v1, v2}, Lcom/autonavi/cvc/app/da/http/SendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/cvc/app/da/http/SendState;->NotSend:Lcom/autonavi/cvc/app/da/http/SendState;

    .line 10
    new-instance v0, Lcom/autonavi/cvc/app/da/http/SendState;

    const-string v1, "Sending"

    invoke-direct {v0, v1, v3}, Lcom/autonavi/cvc/app/da/http/SendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/cvc/app/da/http/SendState;->Sending:Lcom/autonavi/cvc/app/da/http/SendState;

    .line 11
    new-instance v0, Lcom/autonavi/cvc/app/da/http/SendState;

    const-string v1, "Finished"

    invoke-direct {v0, v1, v4}, Lcom/autonavi/cvc/app/da/http/SendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/cvc/app/da/http/SendState;->Finished:Lcom/autonavi/cvc/app/da/http/SendState;

    .line 12
    new-instance v0, Lcom/autonavi/cvc/app/da/http/SendState;

    const-string v1, "Other"

    invoke-direct {v0, v1, v5}, Lcom/autonavi/cvc/app/da/http/SendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/cvc/app/da/http/SendState;->Other:Lcom/autonavi/cvc/app/da/http/SendState;

    .line 13
    new-instance v0, Lcom/autonavi/cvc/app/da/http/SendState;

    const-string v1, "Close"

    invoke-direct {v0, v1, v6}, Lcom/autonavi/cvc/app/da/http/SendState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/cvc/app/da/http/SendState;->Close:Lcom/autonavi/cvc/app/da/http/SendState;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/autonavi/cvc/app/da/http/SendState;

    sget-object v1, Lcom/autonavi/cvc/app/da/http/SendState;->NotSend:Lcom/autonavi/cvc/app/da/http/SendState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/autonavi/cvc/app/da/http/SendState;->Sending:Lcom/autonavi/cvc/app/da/http/SendState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/autonavi/cvc/app/da/http/SendState;->Finished:Lcom/autonavi/cvc/app/da/http/SendState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/autonavi/cvc/app/da/http/SendState;->Other:Lcom/autonavi/cvc/app/da/http/SendState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/autonavi/cvc/app/da/http/SendState;->Close:Lcom/autonavi/cvc/app/da/http/SendState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/autonavi/cvc/app/da/http/SendState;->$VALUES:[Lcom/autonavi/cvc/app/da/http/SendState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/cvc/app/da/http/SendState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/autonavi/cvc/app/da/http/SendState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/autonavi/cvc/app/da/http/SendState;

    return-object v0
.end method

.method public static values()[Lcom/autonavi/cvc/app/da/http/SendState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/autonavi/cvc/app/da/http/SendState;->$VALUES:[Lcom/autonavi/cvc/app/da/http/SendState;

    invoke-virtual {v0}, [Lcom/autonavi/cvc/app/da/http/SendState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/cvc/app/da/http/SendState;

    return-object v0
.end method
