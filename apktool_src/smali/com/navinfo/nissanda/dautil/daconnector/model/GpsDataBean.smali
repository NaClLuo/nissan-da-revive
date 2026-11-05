.class public Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;
.super Ljava/lang/Object;
.source "GpsDataBean.java"


# instance fields
.field private dateTime:J

.field private gpsDateTime:J

.field private gpsTimeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->dateTime:J

    return-wide v0
.end method

.method public getGpsDateTime()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->gpsDateTime:J

    return-wide v0
.end method

.method public getGpsTimeStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->gpsTimeStr:Ljava/lang/String;

    return-object v0
.end method

.method public setDateTime(J)V
    .locals 1
    .param p1, "dateTime"    # J

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->dateTime:J

    .line 17
    return-void
.end method

.method public setGpsDateTime(J)V
    .locals 1
    .param p1, "gpsDateTime"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->gpsDateTime:J

    .line 29
    return-void
.end method

.method public setGpsTimeStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "gpsTimeStr"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/navinfo/nissanda/dautil/daconnector/model/GpsDataBean;->gpsTimeStr:Ljava/lang/String;

    .line 23
    return-void
.end method
