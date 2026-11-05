.class public abstract Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;
.super Landroid/os/Binder;
.source "IXmPlayer.java"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

.field static final TRANSACTION_addPlayList:I = 0x1c

.field static final TRANSACTION_browseAlbums:I = 0x35

.field static final TRANSACTION_clearPlayCache:I = 0x21

.field static final TRANSACTION_getAlbumByCategoryId:I = 0x44

.field static final TRANSACTION_getAlbumById:I = 0x26

.field static final TRANSACTION_getAlbumInfo:I = 0x40

.field static final TRANSACTION_getCategoryModelList:I = 0x39

.field static final TRANSACTION_getCurPlayUrl:I = 0x2f

.field static final TRANSACTION_getCurrIndex:I = 0xe

.field static final TRANSACTION_getDefultPageSize:I = 0x43

.field static final TRANSACTION_getDuration:I = 0xf

.field static final TRANSACTION_getHotContent:I = 0x3a

.field static final TRANSACTION_getMainHotContent:I = 0x42

.field static final TRANSACTION_getMyCollect:I = 0x3f

.field static final TRANSACTION_getNextPlayList:I = 0x2a

.field static final TRANSACTION_getParam:I = 0x1f

.field static final TRANSACTION_getParseDeviceInfo:I = 0x45

.field static final TRANSACTION_getPlayCurrPosition:I = 0x10

.field static final TRANSACTION_getPlayList:I = 0x1e

.field static final TRANSACTION_getPlayListSize:I = 0x20

.field static final TRANSACTION_getPlayMode:I = 0x19

.field static final TRANSACTION_getPlaySourceType:I = 0x17

.field static final TRANSACTION_getPlayerStatus:I = 0xd

.field static final TRANSACTION_getPositiveSeq:I = 0x2e

.field static final TRANSACTION_getPrePlayList:I = 0x2b

.field static final TRANSACTION_getRadio:I = 0x16

.field static final TRANSACTION_getRank:I = 0x41

.field static final TRANSACTION_getSourseLists:I = 0x34

.field static final TRANSACTION_getTrack:I = 0x15

.field static final TRANSACTION_getTrackListByLastTrack:I = 0x3b

.field static final TRANSACTION_getUserInfo:I = 0x3e

.field static final TRANSACTION_hasNextSound:I = 0xc

.field static final TRANSACTION_hasPreSound:I = 0xb

.field static final TRANSACTION_init:I = 0x30

.field static final TRANSACTION_isAdsActive:I = 0x12

.field static final TRANSACTION_isDLNAState:I = 0x47

.field static final TRANSACTION_isOnlineSource:I = 0xa

.field static final TRANSACTION_isPlaying:I = 0x11

.field static final TRANSACTION_needContinuePlay:I = 0x48

.field static final TRANSACTION_pausePlay:I = 0x7

.field static final TRANSACTION_permutePlayList:I = 0x2d

.field static final TRANSACTION_play:I = 0x4

.field static final TRANSACTION_playNext:I = 0x3

.field static final TRANSACTION_playPre:I = 0x2

.field static final TRANSACTION_playRadio:I = 0x1d

.field static final TRANSACTION_registeAdsListener:I = 0x27

.field static final TRANSACTION_registeCustomDataCallBack:I = 0x31

.field static final TRANSACTION_registeMainDataSupportCallBack:I = 0x3c

.field static final TRANSACTION_registePlayerListener:I = 0x24

.field static final TRANSACTION_removeListByIndex:I = 0x4f

.field static final TRANSACTION_resetPlayList:I = 0x4e

.field static final TRANSACTION_seekTo:I = 0x9

.field static final TRANSACTION_setAdsDataHandlerClassName:I = 0x4c

.field static final TRANSACTION_setAppSecret:I = 0x23

.field static final TRANSACTION_setCategoryId:I = 0x38

.field static final TRANSACTION_setDLNAState:I = 0x46

.field static final TRANSACTION_setDownloadPlayPathCallback:I = 0x29

.field static final TRANSACTION_setNotification:I = 0x22

.field static final TRANSACTION_setPageSize:I = 0x1a

.field static final TRANSACTION_setPlayByAlbumTracks:I = 0x37

.field static final TRANSACTION_setPlayByTrack:I = 0x36

.field static final TRANSACTION_setPlayCdnConfigureModel:I = 0x4d

.field static final TRANSACTION_setPlayIndex:I = 0x5

.field static final TRANSACTION_setPlayList:I = 0x1b

.field static final TRANSACTION_setPlayListChangeListener:I = 0x2c

.field static final TRANSACTION_setPlayMode:I = 0x18

.field static final TRANSACTION_setPlayModel:I = 0x33

.field static final TRANSACTION_setPlayStatisticClassName:I = 0x4b

.field static final TRANSACTION_setProxy:I = 0x1

.field static final TRANSACTION_setRecordModel:I = 0x49

.field static final TRANSACTION_setVolume:I = 0x4a

.field static final TRANSACTION_startPlay:I = 0x6

.field static final TRANSACTION_stopPlay:I = 0x8

.field static final TRANSACTION_unregisteAdsListener:I = 0x28

.field static final TRANSACTION_unregisteCustomDataCallBack:I = 0x32

.field static final TRANSACTION_unregisteMainDataSupportCallBack:I = 0x3d

.field static final TRANSACTION_unregistePlayerListener:I = 0x25

.field static final TRANSACTION_updateTrackDownloadUrlInPlayList:I = 0x13

.field static final TRANSACTION_updateTrackInPlayList:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-virtual {p0, p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 42
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 877
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v4, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 53
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v41

    .line 56
    .local v41, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v8

    .line 57
    .local v8, "_arg3":Ljava/util/Map;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 58
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    const/4 v4, 0x1

    goto :goto_0

    .line 63
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":Ljava/util/Map;
    .end local v41    # "cl":Ljava/lang/ClassLoader;
    :sswitch_2
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playPre()Z

    move-result v39

    .line 65
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v39, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v4, 0x1

    goto :goto_0

    .line 66
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 71
    .end local v39    # "_result":Z
    :sswitch_3
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playNext()Z

    move-result v39

    .line 73
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v39, :cond_1

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v4, 0x1

    goto :goto_0

    .line 74
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 79
    .end local v39    # "_result":Z
    :sswitch_4
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 82
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->play(I)Z

    move-result v39

    .line 83
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v39, :cond_2

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 84
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 89
    .end local v5    # "_arg0":I
    .end local v39    # "_result":Z
    :sswitch_5
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 92
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayIndex(I)Z

    move-result v39

    .line 93
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v39, :cond_3

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 94
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 99
    .end local v5    # "_arg0":I
    .end local v39    # "_result":Z
    :sswitch_6
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->startPlay()Z

    move-result v39

    .line 101
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v39, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 102
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 107
    .end local v39    # "_result":Z
    :sswitch_7
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->pausePlay()Z

    move-result v39

    .line 109
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v39, :cond_5

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 110
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 115
    .end local v39    # "_result":Z
    :sswitch_8
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->stopPlay()Z

    move-result v39

    .line 117
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v39, :cond_6

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 118
    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    .line 123
    .end local v39    # "_result":Z
    :sswitch_9
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 126
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->seekTo(I)Z

    move-result v39

    .line 127
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v39, :cond_7

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 128
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 133
    .end local v5    # "_arg0":I
    .end local v39    # "_result":Z
    :sswitch_a
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isOnlineSource()Z

    move-result v39

    .line 135
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v39, :cond_8

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 136
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 141
    .end local v39    # "_result":Z
    :sswitch_b
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->hasPreSound()Z

    move-result v39

    .line 143
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v39, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 144
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 149
    .end local v39    # "_result":Z
    :sswitch_c
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->hasNextSound()Z

    move-result v39

    .line 151
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v39, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 152
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 157
    .end local v39    # "_result":Z
    :sswitch_d
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayerStatus()I

    move-result v39

    .line 159
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 165
    .end local v39    # "_result":I
    :sswitch_e
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getCurrIndex()I

    move-result v39

    .line 167
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 173
    .end local v39    # "_result":I
    :sswitch_f
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getDuration()I

    move-result v39

    .line 175
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 181
    .end local v39    # "_result":I
    :sswitch_10
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayCurrPosition()I

    move-result v39

    .line 183
    .restart local v39    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 189
    .end local v39    # "_result":I
    :sswitch_11
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isPlaying()Z

    move-result v39

    .line 191
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v39, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 192
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 197
    .end local v39    # "_result":Z
    :sswitch_12
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isAdsActive()Z

    move-result v39

    .line 199
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v39, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 200
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 205
    .end local v39    # "_result":Z
    :sswitch_13
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 208
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 213
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->updateTrackDownloadUrlInPlayList(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v5, :cond_e

    .line 216
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v4}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->writeToParcel(Landroid/os/Parcel;I)V

    .line 222
    :goto_f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 211
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    goto :goto_e

    .line 220
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 226
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :sswitch_14
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 229
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 234
    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->updateTrackInPlayList(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Z

    move-result v39

    .line 235
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v39, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    if-eqz v5, :cond_11

    .line 238
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v4}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    :goto_12
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 232
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .end local v39    # "_result":Z
    :cond_f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    goto :goto_10

    .line 236
    .restart local v39    # "_result":Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .line 242
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 248
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    .end local v39    # "_result":Z
    :sswitch_15
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 251
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getTrack(I)Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    move-result-object v39

    .line 252
    .local v39, "_result":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v39, :cond_12

    .line 254
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->writeToParcel(Landroid/os/Parcel;I)V

    .line 260
    :goto_13
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 258
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 264
    .end local v5    # "_arg0":I
    .end local v39    # "_result":Lcom/ximalaya/ting/android/opensdk/model/track/Track;
    :sswitch_16
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v39

    .line 266
    .local v39, "_result":Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v39, :cond_13

    .line 268
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/4 v4, 0x1

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->writeToParcel(Landroid/os/Parcel;I)V

    .line 274
    :goto_14
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 272
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 278
    .end local v39    # "_result":Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    :sswitch_17
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlaySourceType()I

    move-result v39

    .line 280
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 286
    .end local v39    # "_result":I
    :sswitch_18
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayMode(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 295
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_19
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayMode()Ljava/lang/String;

    move-result-object v39

    .line 297
    .local v39, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 303
    .end local v39    # "_result":Ljava/lang/String;
    :sswitch_1a
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 306
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPageSize(I)V

    .line 307
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 312
    .end local v5    # "_arg0":I
    :sswitch_1b
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v41

    .line 315
    .restart local v41    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v5

    .line 317
    .local v5, "_arg0":Ljava/util/Map;
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v38

    .line 318
    .local v38, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayList(Ljava/util/Map;Ljava/util/List;)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 324
    .end local v5    # "_arg0":Ljava/util/Map;
    .end local v38    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    .end local v41    # "cl":Ljava/lang/ClassLoader;
    :sswitch_1c
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v12

    .line 327
    .local v12, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->addPlayList(Ljava/util/List;)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 333
    .end local v12    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    :sswitch_1d
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 336
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    .line 341
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->playRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)Z

    move-result v39

    .line 342
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    if-eqz v39, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 339
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .end local v39    # "_result":Z
    :cond_14
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    goto :goto_15

    .line 343
    .restart local v39    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 348
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .end local v39    # "_result":Z
    :sswitch_1e
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 351
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayList(I)Ljava/util/List;

    move-result-object v40

    .line 352
    .local v40, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 354
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 358
    .end local v5    # "_arg0":I
    .end local v40    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ximalaya/ting/android/opensdk/model/track/Track;>;"
    :sswitch_1f
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getParam()Ljava/util/Map;

    move-result-object v39

    .line 360
    .local v39, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 362
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 366
    .end local v39    # "_result":Ljava/util/Map;
    :sswitch_20
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPlayListSize()I

    move-result v39

    .line 368
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 374
    .end local v39    # "_result":I
    :sswitch_21
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->clearPlayCache()V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 381
    :sswitch_22
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 385
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 386
    sget-object v4, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification;

    .line 391
    .local v6, "_arg1":Landroid/app/Notification;
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setNotification(ILandroid/app/Notification;)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 389
    .end local v6    # "_arg1":Landroid/app/Notification;
    :cond_16
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Landroid/app/Notification;
    goto :goto_17

    .line 397
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":Landroid/app/Notification;
    :sswitch_23
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 400
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setAppSecret(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 406
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_24
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;

    move-result-object v5

    .line 409
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 415
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :sswitch_25
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;

    move-result-object v5

    .line 418
    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregistePlayerListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 424
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerEventDispatcher;
    :sswitch_26
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 428
    .local v14, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;

    move-result-object v6

    .line 429
    .local v6, "_arg1":Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getAlbumById(JLcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V

    .line 430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 435
    .end local v6    # "_arg1":Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;
    .end local v14    # "_arg0":J
    :sswitch_27
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;

    move-result-object v5

    .line 438
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registeAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 444
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :sswitch_28
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;

    move-result-object v5

    .line 447
    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregisteAdsListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 453
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmAdsEventDispatcher;
    :sswitch_29
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    move-result-object v5

    .line 456
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setDownloadPlayPathCallback(Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 462
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;
    :sswitch_2a
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getNextPlayList()V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 469
    :sswitch_2b
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPrePlayList()V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 476
    :sswitch_2c
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback;

    move-result-object v5

    .line 479
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayListChangeListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 485
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmDataCallback;
    :sswitch_2d
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->permutePlayList()Z

    move-result v39

    .line 487
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v39, :cond_17

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 488
    :cond_17
    const/4 v4, 0x0

    goto :goto_18

    .line 493
    .end local v39    # "_result":Z
    :sswitch_2e
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getPositiveSeq()Z

    move-result v39

    .line 495
    .restart local v39    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v39, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 496
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 501
    .end local v39    # "_result":Z
    :sswitch_2f
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getCurPlayUrl()Ljava/lang/String;

    move-result-object v39

    .line 503
    .local v39, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 509
    .end local v39    # "_result":Ljava/lang/String;
    :sswitch_30
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 515
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 516
    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 522
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    :sswitch_31
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;

    move-result-object v5

    .line 525
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registeCustomDataCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 531
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;
    :sswitch_32
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;

    move-result-object v5

    .line 534
    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregisteCustomDataCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 540
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmCustomDataCallBack;
    :sswitch_33
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 544
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 546
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 547
    .local v30, "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayModel(Ljava/lang/String;IJ)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 553
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":J
    :sswitch_34
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 557
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 559
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 561
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 563
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 565
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, "_arg5":J
    move-object/from16 v4, p0

    .line 566
    invoke-virtual/range {v4 .. v11}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getSourseLists(Ljava/lang/String;IIIIJ)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 572
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":J
    :sswitch_35
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 576
    .restart local v14    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 578
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 580
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .local v18, "_arg3":J
    move-object/from16 v13, p0

    move/from16 v16, v6

    move/from16 v17, v7

    .line 581
    invoke-virtual/range {v13 .. v19}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->browseAlbums(JIIJ)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 587
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v14    # "_arg0":J
    .end local v18    # "_arg3":J
    :sswitch_36
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 591
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 592
    .local v24, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayByTrack(Ljava/lang/String;J)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 598
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":J
    :sswitch_37
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 602
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 604
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 605
    .restart local v30    # "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayByAlbumTracks(Ljava/lang/String;IJ)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 611
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":J
    :sswitch_38
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 615
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 616
    .restart local v24    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setCategoryId(IJ)V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 622
    .end local v5    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_39
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 625
    .restart local v14    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getCategoryModelList(J)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 631
    .end local v14    # "_arg0":J
    :sswitch_3a
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/4 v5, 0x1

    .line 635
    .local v5, "_arg0":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 637
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 639
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .restart local v18    # "_arg3":J
    move-object/from16 v20, p0

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v24, v18

    .line 640
    invoke-virtual/range {v20 .. v25}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getHotContent(ZIIJ)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 633
    .end local v5    # "_arg0":Z
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v18    # "_arg3":J
    :cond_19
    const/4 v5, 0x0

    goto :goto_1a

    .line 646
    :sswitch_3b
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 650
    .restart local v14    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 652
    .restart local v24    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 654
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .restart local v18    # "_arg3":J
    move-object/from16 v21, p0

    move-wide/from16 v22, v14

    move/from16 v26, v7

    move-wide/from16 v27, v18

    .line 655
    invoke-virtual/range {v21 .. v28}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getTrackListByLastTrack(JJIJ)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 661
    .end local v7    # "_arg2":I
    .end local v14    # "_arg0":J
    .end local v18    # "_arg3":J
    .end local v24    # "_arg1":J
    :sswitch_3c
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;

    move-result-object v5

    .line 664
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->registeMainDataSupportCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 670
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;
    :sswitch_3d
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;

    move-result-object v5

    .line 673
    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->unregisteMainDataSupportCallBack(Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 679
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/player/service/IXmMainDataSupportDataCallback;
    :sswitch_3e
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 682
    .restart local v14    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getUserInfo(J)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 688
    .end local v14    # "_arg0":J
    :sswitch_3f
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 692
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 693
    .restart local v24    # "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v5, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getMyCollect(IJ)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 699
    .end local v5    # "_arg0":I
    .end local v24    # "_arg1":J
    :sswitch_40
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 703
    .restart local v14    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 705
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .restart local v30    # "_arg2":J
    move-object/from16 v26, p0

    move-wide/from16 v27, v14

    move/from16 v29, v6

    .line 706
    invoke-virtual/range {v26 .. v31}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getAlbumInfo(JIJ)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 712
    .end local v6    # "_arg1":I
    .end local v14    # "_arg0":J
    .end local v30    # "_arg2":J
    :sswitch_41
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 716
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 720
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .restart local v18    # "_arg3":J
    move-object/from16 v32, p0

    move-object/from16 v33, v5

    move-object/from16 v34, v6

    move/from16 v35, v7

    move-wide/from16 v36, v18

    .line 721
    invoke-virtual/range {v32 .. v37}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getRank(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 727
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":I
    .end local v18    # "_arg3":J
    :sswitch_42
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 731
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 733
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 734
    .restart local v30    # "_arg2":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getMainHotContent(IIJ)V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 740
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v30    # "_arg2":J
    :sswitch_43
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getDefultPageSize()I

    move-result v39

    .line 742
    .local v39, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    move-object/from16 v0, p3

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 748
    .end local v39    # "_result":I
    :sswitch_44
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 752
    .restart local v14    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 754
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 756
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .restart local v18    # "_arg3":J
    move-object/from16 v13, p0

    move/from16 v16, v6

    move/from16 v17, v7

    .line 757
    invoke-virtual/range {v13 .. v19}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getAlbumByCategoryId(JIIJ)V

    .line 758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 763
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v14    # "_arg0":J
    .end local v18    # "_arg3":J
    :sswitch_45
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 766
    .restart local v14    # "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->getParseDeviceInfo(J)V

    .line 767
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 772
    .end local v14    # "_arg0":J
    :sswitch_46
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v5, 0x1

    .line 775
    .local v5, "_arg0":Z
    :goto_1b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setDLNAState(Z)V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 774
    .end local v5    # "_arg0":Z
    :cond_1a
    const/4 v5, 0x0

    goto :goto_1b

    .line 781
    :sswitch_47
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->isDLNAState()Z

    move-result v39

    .line 783
    .local v39, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    if-eqz v39, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 784
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 789
    .end local v39    # "_result":Z
    :sswitch_48
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v5, 0x1

    .line 792
    .restart local v5    # "_arg0":Z
    :goto_1d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->needContinuePlay(Z)V

    .line 793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 791
    .end local v5    # "_arg0":Z
    :cond_1c
    const/4 v5, 0x0

    goto :goto_1d

    .line 798
    :sswitch_49
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 801
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;

    .line 806
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;
    :goto_1e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setRecordModel(Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;)V

    .line 807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    if-eqz v5, :cond_1e

    .line 809
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 810
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v4}, Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 815
    :goto_1f
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 804
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;
    :cond_1d
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;
    goto :goto_1e

    .line 813
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 819
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/statistic/RecordModel;
    :sswitch_4a
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 823
    .local v5, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    .line 824
    .local v6, "_arg1":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setVolume(FF)V

    .line 825
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 826
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 830
    .end local v5    # "_arg0":F
    .end local v6    # "_arg1":F
    :sswitch_4b
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 833
    .local v5, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayStatisticClassName(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 839
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_4c
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 842
    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setAdsDataHandlerClassName(Ljava/lang/String;)V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 848
    .end local v5    # "_arg0":Ljava/lang/String;
    :sswitch_4d
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 851
    sget-object v4, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;

    .line 856
    .local v5, "_arg0":Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;
    :goto_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->setPlayCdnConfigureModel(Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 854
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;
    :cond_1f
    const/4 v5, 0x0

    .restart local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;
    goto :goto_20

    .line 862
    .end local v5    # "_arg0":Lcom/ximalaya/ting/android/opensdk/model/xdcs/CdnConfigModel;
    :sswitch_4e
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->resetPlayList()V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 869
    :sswitch_4f
    const-string v4, "com.ximalaya.ting.android.opensdk.player.service.IXmPlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 872
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayer$Stub;->removeListByIndex(I)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
