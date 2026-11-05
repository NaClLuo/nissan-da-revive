.class public Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;
.super Ljava/lang/Object;
.source "LiveAnnouncer.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private liveAnnouncerId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveAnnouncerId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->liveAnnouncerId:J

    return-wide v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->avatarUrl:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setLiveAnnouncerId(J)V
    .locals 1
    .param p1, "liveAnnouncerId"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->liveAnnouncerId:J

    .line 32
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->nickName:Ljava/lang/String;

    .line 42
    return-void
.end method
