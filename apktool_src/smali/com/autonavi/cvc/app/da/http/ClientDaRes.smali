.class public Lcom/autonavi/cvc/app/da/http/ClientDaRes;
.super Ljava/lang/Object;
.source "ClientDaRes.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7a694efe0e11a496L


# instance fields
.field private recordCount:Ljava/lang/Integer;

.field private recordTime:J

.field private retCode:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRecordCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->recordCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecordTime()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->recordTime:J

    return-wide v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setRecordCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "recordCount"    # Ljava/lang/Integer;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->recordCount:Ljava/lang/Integer;

    .line 24
    return-void
.end method

.method public setRecordTime(J)V
    .locals 1
    .param p1, "recordTime"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->recordTime:J

    .line 18
    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "retCode"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->retCode:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/autonavi/cvc/app/da/http/ClientDaRes;->retMsg:Ljava/lang/String;

    .line 36
    return-void
.end method
