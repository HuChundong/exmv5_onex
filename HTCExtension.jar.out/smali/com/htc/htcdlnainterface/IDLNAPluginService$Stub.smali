.class public abstract Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginService.java"

# interfaces
.implements Lcom/htc/htcdlnainterface/IDLNAPluginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcdlnainterface/IDLNAPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.htcdlnainterface.IDLNAPluginService"

.field static final TRANSACTION_albumArtDownload:I = 0xb

.field static final TRANSACTION_browse:I = 0x8

.field static final TRANSACTION_browseCancel:I = 0x9

.field static final TRANSACTION_cancelContentThumbnail:I = 0x31

.field static final TRANSACTION_changeDuration:I = 0x1f

.field static final TRANSACTION_changePushPlaylistItem:I = 0x10

.field static final TRANSACTION_changeRemotePlaylistItem:I = 0xf

.field static final TRANSACTION_checkErrorExists:I = 0x43

.field static final TRANSACTION_checkRendererIdExists:I = 0x46

.field static final TRANSACTION_checkSessionCookieInUse:I = 0x47

.field static final TRANSACTION_continueBrowseDown:I = 0x39

.field static final TRANSACTION_createMediaController:I = 0x22

.field static final TRANSACTION_destroyMediaController:I = 0x23

.field static final TRANSACTION_getContentThumbnail:I = 0x7

.field static final TRANSACTION_getDMCContentItemDetails:I = 0x24

.field static final TRANSACTION_getDMCControlItemInfo:I = 0x27

.field static final TRANSACTION_getDMCControlStatus:I = 0x1e

.field static final TRANSACTION_getDMCCurrentContainerID:I = 0x29

.field static final TRANSACTION_getDMCCurrentContentID:I = 0x28

.field static final TRANSACTION_getDMCCurrentLocalPlayId:I = 0x2a

.field static final TRANSACTION_getDMCCurrentLocalPlayIndex:I = 0x2e

.field static final TRANSACTION_getDMCLocalContentItemDetails:I = 0x38

.field static final TRANSACTION_getDMCMuteControlSupport:I = 0x33

.field static final TRANSACTION_getDMCPhotoSlideshowState:I = 0x30

.field static final TRANSACTION_getDMCVolumeControlSupport:I = 0x32

.field static final TRANSACTION_getDMPContentItemDetails:I = 0xc

.field static final TRANSACTION_getLastErrorId:I = 0x44

.field static final TRANSACTION_getLastErrorReason:I = 0x45

.field static final TRANSACTION_getMirrorRenderer:I = 0x3d

.field static final TRANSACTION_getPlayPosition:I = 0x1b

.field static final TRANSACTION_getPlaylistPlayIndex:I = 0x1c

.field static final TRANSACTION_getPlaylistTotalCount:I = 0x1d

.field static final TRANSACTION_getRendererIdData:I = 0x41

.field static final TRANSACTION_getRendererList:I = 0x4

.field static final TRANSACTION_getRendererThumbnail:I = 0x6

.field static final TRANSACTION_getServerList:I = 0x3

.field static final TRANSACTION_getServerThumbnail:I = 0x5

.field static final TRANSACTION_imageDownload:I = 0xa

.field static final TRANSACTION_isBrowsingCmdDone:I = 0x26

.field static final TRANSACTION_isShuffleEnabled:I = 0x49

.field static final TRANSACTION_newInternetPushList:I = 0x3f

.field static final TRANSACTION_newInternetPushSingle:I = 0x3e

.field static final TRANSACTION_newPushEncryptBuffer:I = 0x3b

.field static final TRANSACTION_newPushEncryptSingle:I = 0x3a

.field static final TRANSACTION_newPushPlaylist:I = 0xe

.field static final TRANSACTION_newPushSingle:I = 0x21

.field static final TRANSACTION_newPushSingle2:I = 0x40

.field static final TRANSACTION_newRemotePlaylist:I = 0xd

.field static final TRANSACTION_newRemoteSingle:I = 0x20

.field static final TRANSACTION_newSingleURI:I = 0x3c

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0x11

.field static final TRANSACTION_reArrangePushPlaylist:I = 0x37

.field static final TRANSACTION_reSearchDevices:I = 0x25

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_setAutoReleaseAfterPlayCompleted:I = 0x4a

.field static final TRANSACTION_setBrowseThumbSize:I = 0x34

.field static final TRANSACTION_setControllingTimeout:I = 0x2b

.field static final TRANSACTION_setDMCPhotoSlideshowState:I = 0x2f

.field static final TRANSACTION_setDMCThumbSize:I = 0x36

.field static final TRANSACTION_setDMPAlbumArtSize:I = 0x35

.field static final TRANSACTION_setFilterType:I = 0x48

.field static final TRANSACTION_setMute:I = 0x15

.field static final TRANSACTION_setOutputPath:I = 0x42

.field static final TRANSACTION_setRepeat:I = 0x18

.field static final TRANSACTION_setSeek:I = 0x16

.field static final TRANSACTION_setShuffle:I = 0x17

.field static final TRANSACTION_setVolume:I = 0x14

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_subscribeServer:I = 0x2c

.field static final TRANSACTION_switchPlaylistNextItem:I = 0x19

.field static final TRANSACTION_switchPlaylistPrevItem:I = 0x1a

.field static final TRANSACTION_unregisterCallback:I = 0x2

.field static final TRANSACTION_unsubscribeServer:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 2
    .parameter "obj"

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
    const-string v1, "com.htc.htcdlnainterface.IDLNAPluginService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/htcdlnainterface/IDLNAPluginService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 28
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 1035
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 52
    .local v5, _arg1:Lcom/htc/htcdlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->registerCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v3, 0x1

    goto :goto_0

    .line 58
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/htcdlnainterface/IDLNAPluginNotify;
    :sswitch_2
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 62
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/htcdlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/htcdlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 63
    .restart local v5       #_arg1:Lcom/htc/htcdlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 69
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/htcdlnainterface/IDLNAPluginNotify;
    :sswitch_3
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getServerList(I)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    const/4 v3, 0x1

    goto :goto_0

    .line 78
    .end local v4           #_arg0:I
    :sswitch_4
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getRendererList(I)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v3, 0x1

    goto :goto_0

    .line 87
    .end local v4           #_arg0:I
    :sswitch_5
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 91
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getServerThumbnail(ILjava/lang/String;)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 98
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 102
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getRendererThumbnail(ILjava/lang/String;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 109
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 113
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 115
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 118
    .local v7, _arg3:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 124
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:I
    :sswitch_8
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 128
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 130
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 132
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 134
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 136
    .local v9, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .local v10, _arg5:J
    move-object/from16 v3, p0

    .line 137
    invoke-virtual/range {v3 .. v11}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 143
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    .end local v9           #_arg4:I
    .end local v10           #_arg5:J
    :sswitch_9
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 147
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 149
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 151
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .restart local v7       #_arg3:J
    move-object/from16 v3, p0

    .line 152
    invoke-virtual/range {v3 .. v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 158
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    :sswitch_a
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 164
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 165
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 171
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 175
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 177
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 184
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 190
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 197
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_d
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 203
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    sget-object v3, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;

    .line 209
    .local v6, _arg2:Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)Z

    move-result v26

    .line 210
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v26, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 207
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;
    goto :goto_1

    .line 211
    .restart local v26       #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 216
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :sswitch_e
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 220
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 222
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 224
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 226
    .local v7, _arg3:[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 228
    .restart local v9       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .restart local v10       #_arg5:J
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v9

    move-wide/from16 v18, v10

    .line 229
    invoke-virtual/range {v12 .. v19}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

    move-result v26

    .line 230
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v26, :cond_2

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 231
    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 236
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:[I
    .end local v9           #_arg4:I
    .end local v10           #_arg5:J
    .end local v26           #_result:Z
    :sswitch_f
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 240
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 242
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 243
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 249
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_10
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 253
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 255
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 256
    .local v24, _arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->changePushPlaylistItem(ILjava/lang/String;J)V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 262
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_11
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 266
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 267
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->play(ILjava/lang/String;)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 273
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_12
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 277
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->pause(ILjava/lang/String;)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 288
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->stop(ILjava/lang/String;)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 295
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_14
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 299
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 301
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 302
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setVolume(ILjava/lang/String;I)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 308
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    :sswitch_15
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    .line 315
    .local v6, _arg2:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setMute(ILjava/lang/String;Z)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 314
    .end local v6           #_arg2:Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 321
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_16
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 325
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 327
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 328
    .restart local v24       #_arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setSeek(ILjava/lang/String;J)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 334
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_17
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 338
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 340
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    .line 341
    .restart local v6       #_arg2:Z
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setShuffle(ILjava/lang/String;Z)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 340
    .end local v6           #_arg2:Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    .line 347
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_18
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 351
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 354
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setRepeat(ILjava/lang/String;I)V

    .line 355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 360
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    :sswitch_19
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 364
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 365
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 371
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 375
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 376
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 382
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_1b
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 386
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 387
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v26

    .line 388
    .local v26, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 390
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 394
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1c
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 398
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 399
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getPlaylistPlayIndex(ILjava/lang/String;)J

    move-result-wide v26

    .line 400
    .restart local v26       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 402
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 406
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1d
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 410
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 411
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getPlaylistTotalCount(ILjava/lang/String;)J

    move-result-wide v26

    .line 412
    .restart local v26       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 414
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 418
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:J
    :sswitch_1e
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 423
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/DLNAControllerStatus;

    move-result-object v26

    .line 424
    .local v26, _result:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v26, :cond_5

    .line 426
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 432
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 430
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 436
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :sswitch_1f
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 440
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 442
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 443
    .restart local v24       #_arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->changeDuration(ILjava/lang/String;J)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 449
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_20
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 453
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 455
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .local v9, _arg4:Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    .line 460
    invoke-virtual/range {v12 .. v17}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 466
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    :sswitch_21
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 470
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 472
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 473
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 479
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_22
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 483
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 485
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 486
    sget-object v3, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    .line 491
    .local v6, _arg2:Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v26

    .line 492
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 489
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    .end local v26           #_result:I
    :cond_6
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    goto :goto_7

    .line 498
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    :sswitch_23
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 502
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 503
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 509
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_24
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 513
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 515
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 517
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 518
    .restart local v7       #_arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v26

    .line 519
    .local v26, _result:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    if-eqz v26, :cond_7

    .line 521
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/htcdlnainterface/DLNAContentItemDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 527
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 525
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 531
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    :sswitch_25
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 534
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->reSearchDevices(I)V

    .line 535
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 540
    .end local v4           #_arg0:I
    :sswitch_26
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 544
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 546
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 547
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 548
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v26, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 549
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 554
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_27
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 558
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 559
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 565
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_28
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 569
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 570
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 571
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 573
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 577
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_29
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 581
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 582
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 583
    .restart local v26       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 589
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 593
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 594
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v26

    .line 595
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 601
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_2b
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 604
    .local v22, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setControllingTimeout(J)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 610
    .end local v22           #_arg0:J
    :sswitch_2c
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 614
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 615
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->subscribeServer(ILjava/lang/String;)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 621
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2d
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 625
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 626
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->unsubscribeServer(ILjava/lang/String;)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 632
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2e
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 636
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 637
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I

    move-result v26

    .line 638
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 644
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_2f
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 648
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 650
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 651
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    move-result v26

    .line 652
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v26, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 653
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 658
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v26           #_result:Z
    :sswitch_30
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 662
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 663
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCPhotoSlideshowState(ILjava/lang/String;)I

    move-result v26

    .line 664
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 665
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 670
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_31
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 674
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 675
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->cancelContentThumbnail(II)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 681
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_32
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 685
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 686
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 687
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    if-eqz v26, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 688
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 693
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_33
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 697
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 698
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCMuteControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 699
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    if-eqz v26, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 700
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 705
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_34
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 709
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 710
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setBrowseThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 711
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    if-eqz v26, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 712
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 717
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_35
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 721
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 722
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setDMPAlbumArtSize(ILjava/lang/String;)Z

    move-result v26

    .line 723
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 724
    if-eqz v26, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 724
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 729
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_36
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 733
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 734
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setDMCThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 735
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    if-eqz v26, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 736
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 741
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_37
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 745
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 747
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 749
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 750
    .local v7, _arg3:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    move-result v26

    .line 751
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    if-eqz v26, :cond_f

    const/4 v3, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 752
    :cond_f
    const/4 v3, 0x0

    goto :goto_10

    .line 757
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:[I
    .end local v26           #_result:Z
    :sswitch_38
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 761
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 763
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 764
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getDMCLocalContentItemDetails(III)V

    .line 765
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 770
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_39
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 774
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 776
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 780
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 782
    .local v18, _arg4:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 784
    .local v10, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, _arg6:I
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-wide/from16 v16, v7

    move/from16 v20, v10

    .line 785
    invoke-virtual/range {v12 .. v21}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V

    .line 786
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 791
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    .end local v10           #_arg5:I
    .end local v18           #_arg4:J
    .end local v21           #_arg6:I
    :sswitch_3a
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 795
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 797
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_10

    .line 798
    sget-object v3, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 803
    .local v6, _arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    .line 804
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 801
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :cond_10
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    goto :goto_11

    .line 809
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :sswitch_3b
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 813
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 815
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 816
    sget-object v3, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 821
    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushEncryptBuffer(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    .line 822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 819
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :cond_11
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    goto :goto_12

    .line 827
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :sswitch_3c
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 831
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 833
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 835
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 837
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #_arg4:Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    .line 838
    invoke-virtual/range {v12 .. v17}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 844
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    :sswitch_3d
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 847
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getMirrorRenderer(I)Lcom/htc/htcdlnainterface/DLNARendererData;

    move-result-object v26

    .line 848
    .local v26, _result:Lcom/htc/htcdlnainterface/DLNARendererData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    if-eqz v26, :cond_12

    .line 850
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/htcdlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 856
    :goto_13
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 854
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 860
    .end local v4           #_arg0:I
    .end local v26           #_result:Lcom/htc/htcdlnainterface/DLNARendererData;
    :sswitch_3e
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 864
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 866
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 867
    sget-object v3, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;

    .line 872
    .local v6, _arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 870
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    :cond_13
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    goto :goto_14

    .line 878
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    :sswitch_3f
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 882
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 884
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 885
    sget-object v3, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;

    .line 890
    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newInternetPushList(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V

    .line 891
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 888
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    :cond_14
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    goto :goto_15

    .line 896
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;
    :sswitch_40
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 900
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 902
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 903
    sget-object v3, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 908
    .local v6, _arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->newPushSingle2(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 906
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :cond_15
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    goto :goto_16

    .line 914
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    :sswitch_41
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 917
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;

    move-result-object v26

    .line 918
    .restart local v26       #_result:Lcom/htc/htcdlnainterface/DLNARendererData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    if-eqz v26, :cond_16

    .line 920
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/htcdlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 926
    :goto_17
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 924
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 930
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/htcdlnainterface/DLNARendererData;
    :sswitch_42
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 934
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 935
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setOutputPath(ILjava/lang/String;)V

    .line 936
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 941
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_43
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 945
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 946
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->checkErrorExists(ILjava/lang/String;)Z

    move-result v26

    .line 947
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v26, :cond_17

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 948
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 953
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_44
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 957
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 958
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getLastErrorId(ILjava/lang/String;)I

    move-result v26

    .line 959
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 965
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_45
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 969
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 970
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 971
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 973
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 977
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_46
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 981
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 982
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->checkRendererIdExists(ILjava/lang/String;)Z

    move-result v26

    .line 983
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    if-eqz v26, :cond_18

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 984
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 989
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_47
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 993
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 994
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->checkSessionCookieInUse(II)Z

    move-result v26

    .line 995
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    if-eqz v26, :cond_19

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 996
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 1001
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v26           #_result:Z
    :sswitch_48
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1005
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1006
    .restart local v5       #_arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setFilterType(II)V

    .line 1007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1012
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_49
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1016
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1017
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->isShuffleEnabled(ILjava/lang/String;)Z

    move-result v26

    .line 1018
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    if-eqz v26, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1019
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 1024
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_4a
    const-string v3, "com.htc.htcdlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1028
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v5, 0x1

    .line 1029
    .local v5, _arg1:Z
    :goto_1c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService$Stub;->setAutoReleaseAfterPlayCompleted(IZ)Z

    move-result v26

    .line 1030
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    if-eqz v26, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1028
    .end local v5           #_arg1:Z
    .end local v26           #_result:Z
    :cond_1b
    const/4 v5, 0x0

    goto :goto_1c

    .line 1031
    .restart local v5       #_arg1:Z
    .restart local v26       #_result:Z
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 38
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
