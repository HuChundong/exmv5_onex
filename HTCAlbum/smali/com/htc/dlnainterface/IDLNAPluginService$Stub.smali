.class public abstract Lcom/htc/dlnainterface/IDLNAPluginService$Stub;
.super Landroid/os/Binder;
.source "IDLNAPluginService.java"

# interfaces
.implements Lcom/htc/dlnainterface/IDLNAPluginService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnainterface/IDLNAPluginService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field static final TRANSACTION_albumArtDownload:I = 0xb

.field static final TRANSACTION_browse:I = 0x8

.field static final TRANSACTION_browseCancel:I = 0x9

.field static final TRANSACTION_cancelContentThumbnail:I = 0x32

.field static final TRANSACTION_changeDuration:I = 0x20

.field static final TRANSACTION_changePushPlaylistItem:I = 0x10

.field static final TRANSACTION_changeRemotePlaylistItem:I = 0xf

.field static final TRANSACTION_changeRendererOutput:I = 0x1f

.field static final TRANSACTION_continueBrowseDown:I = 0x3c

.field static final TRANSACTION_createMediaController:I = 0x23

.field static final TRANSACTION_destroyMediaController:I = 0x24

.field static final TRANSACTION_getContentThumbnail:I = 0x7

.field static final TRANSACTION_getControllingRendererID:I = 0x3b

.field static final TRANSACTION_getDMCContentItemDetails:I = 0x25

.field static final TRANSACTION_getDMCControlItemInfo:I = 0x28

.field static final TRANSACTION_getDMCControlStatus:I = 0x1e

.field static final TRANSACTION_getDMCCurrentContainerID:I = 0x2a

.field static final TRANSACTION_getDMCCurrentContentID:I = 0x29

.field static final TRANSACTION_getDMCCurrentLocalPlayId:I = 0x2b

.field static final TRANSACTION_getDMCCurrentLocalPlayIndex:I = 0x2f

.field static final TRANSACTION_getDMCLocalContentItemDetails:I = 0x3a

.field static final TRANSACTION_getDMCMuteControlSupport:I = 0x34

.field static final TRANSACTION_getDMCPhotoSlideshowState:I = 0x31

.field static final TRANSACTION_getDMCVolumeControlSupport:I = 0x33

.field static final TRANSACTION_getDMPContentItemDetails:I = 0xc

.field static final TRANSACTION_getMirrorRenderer:I = 0x3f

.field static final TRANSACTION_getPlayPosition:I = 0x1b

.field static final TRANSACTION_getPlaylistPlayIndex:I = 0x1c

.field static final TRANSACTION_getPlaylistTotalCount:I = 0x1d

.field static final TRANSACTION_getRendererIdData:I = 0x43

.field static final TRANSACTION_getRendererList:I = 0x4

.field static final TRANSACTION_getRendererThumbnail:I = 0x6

.field static final TRANSACTION_getServerList:I = 0x3

.field static final TRANSACTION_getServerThumbnail:I = 0x5

.field static final TRANSACTION_imageDownload:I = 0xa

.field static final TRANSACTION_isBrowsingCmdDone:I = 0x27

.field static final TRANSACTION_lockPlayingContents:I = 0x38

.field static final TRANSACTION_newInternetPushList:I = 0x41

.field static final TRANSACTION_newInternetPushSingle:I = 0x40

.field static final TRANSACTION_newPushEncryptSingle:I = 0x3d

.field static final TRANSACTION_newPushPlaylist:I = 0xe

.field static final TRANSACTION_newPushSingle:I = 0x22

.field static final TRANSACTION_newPushSingle2:I = 0x42

.field static final TRANSACTION_newRemotePlaylist:I = 0xd

.field static final TRANSACTION_newRemoteSingle:I = 0x21

.field static final TRANSACTION_newSingleURI:I = 0x3e

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0x11

.field static final TRANSACTION_reArrangePushPlaylist:I = 0x39

.field static final TRANSACTION_reSearchDevices:I = 0x26

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_serverSubscribed:I = 0x2d

.field static final TRANSACTION_serverUnsubscribed:I = 0x2e

.field static final TRANSACTION_setBrowseThumbSize:I = 0x35

.field static final TRANSACTION_setControllingTimeout:I = 0x2c

.field static final TRANSACTION_setDMCPhotoSlideshowState:I = 0x30

.field static final TRANSACTION_setDMCThumbSize:I = 0x37

.field static final TRANSACTION_setDMPAlbumArtSize:I = 0x36

.field static final TRANSACTION_setMute:I = 0x15

.field static final TRANSACTION_setRepeat:I = 0x18

.field static final TRANSACTION_setSeek:I = 0x16

.field static final TRANSACTION_setShuffle:I = 0x17

.field static final TRANSACTION_setVolume:I = 0x14

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_switchPlaylistNextItem:I = 0x19

.field static final TRANSACTION_switchPlaylistPrevItem:I = 0x1a

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginService;
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
    const-string v1, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/dlnainterface/IDLNAPluginService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 953
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 52
    .local v5, _arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->registerCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    const/4 v3, 0x1

    goto :goto_0

    .line 58
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    :sswitch_2
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 62
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v5

    .line 63
    .restart local v5       #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 64
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 69
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    :sswitch_3
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 72
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getServerList(I)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    const/4 v3, 0x1

    goto :goto_0

    .line 78
    .end local v4           #_arg0:I
    :sswitch_4
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 81
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererList(I)V

    .line 82
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v3, 0x1

    goto :goto_0

    .line 87
    .end local v4           #_arg0:I
    :sswitch_5
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getServerThumbnail(ILjava/lang/String;)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 98
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererThumbnail(ILjava/lang/String;)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 109
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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
    invoke-virtual/range {v3 .. v11}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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
    invoke-virtual/range {v3 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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
    sget-object v3, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;

    .line 209
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z

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
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :cond_0
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    goto :goto_1

    .line 211
    .restart local v26       #_result:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 216
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;
    .end local v26           #_result:Z
    :sswitch_e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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
    invoke-virtual/range {v12 .. v19}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changePushPlaylistItem(ILjava/lang/String;J)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->play(ILjava/lang/String;)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 273
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_12
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->pause(ILjava/lang/String;)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 284
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_13
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->stop(ILjava/lang/String;)V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 295
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_14
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setVolume(ILjava/lang/String;I)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setMute(ILjava/lang/String;Z)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setSeek(ILjava/lang/String;J)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setShuffle(ILjava/lang/String;Z)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setRepeat(ILjava/lang/String;I)V

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->switchPlaylistNextItem(ILjava/lang/String;)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 371
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->switchPlaylistPrevItem(ILjava/lang/String;)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 382
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_1b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlayPosition(ILjava/lang/String;)J

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlaylistPlayIndex(ILjava/lang/String;)J

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getPlaylistTotalCount(ILjava/lang/String;)J

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
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v26

    .line 424
    .local v26, _result:Lcom/htc/dlnainterface/DLNAControllerStatus;
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

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNAControllerStatus;->writeToParcel(Landroid/os/Parcel;I)V

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
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :sswitch_1f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeRendererOutput(ILjava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 449
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_20
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 456
    .restart local v24       #_arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->changeDuration(ILjava/lang/String;J)V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 462
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v24           #_arg2:J
    :sswitch_21
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 466
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 468
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 470
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 472
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

    .line 473
    invoke-virtual/range {v12 .. v17}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 479
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    :sswitch_22
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

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
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 486
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 492
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    :sswitch_23
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 496
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 498
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 499
    sget-object v3, Lcom/htc/dlnainterface/DLNAStatusBarData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 504
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v26

    .line 505
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 502
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    .end local v26           #_result:I
    :cond_6
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    goto :goto_7

    .line 511
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAStatusBarData;
    :sswitch_24
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 515
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 516
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->destroyMediaController(ILjava/lang/String;)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 522
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_25
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 526
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 528
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 531
    .restart local v7       #_arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v26

    .line 532
    .local v26, _result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v26, :cond_7

    .line 534
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNAContentItemDetails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 538
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 544
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :sswitch_26
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 547
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->reSearchDevices(I)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 553
    .end local v4           #_arg0:I
    :sswitch_27
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 557
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 559
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 560
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 561
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    if-eqz v26, :cond_8

    const/4 v3, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 562
    :cond_8
    const/4 v3, 0x0

    goto :goto_9

    .line 567
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_28
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 571
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 572
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 578
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_29
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 582
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 583
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 584
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 590
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 594
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 595
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 596
    .restart local v26       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 598
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 602
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_2b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 606
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 607
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayId(ILjava/lang/String;)I

    move-result v26

    .line 608
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 614
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_2c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 617
    .local v22, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setControllingTimeout(J)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 623
    .end local v22           #_arg0:J
    :sswitch_2d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 627
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 628
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->serverSubscribed(ILjava/lang/String;)V

    .line 629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 634
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 638
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 639
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->serverUnsubscribed(ILjava/lang/String;)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 645
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    :sswitch_2f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 649
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 650
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I

    move-result v26

    .line 651
    .restart local v26       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 657
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_30
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 661
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 663
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 664
    .local v6, _arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    move-result v26

    .line 665
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    if-eqz v26, :cond_9

    const/4 v3, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 667
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 666
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 671
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v26           #_result:Z
    :sswitch_31
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 675
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 676
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCPhotoSlideshowState(ILjava/lang/String;)I

    move-result v26

    .line 677
    .local v26, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 683
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:I
    :sswitch_32
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 687
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 688
    .local v5, _arg1:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->cancelContentThumbnail(II)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 694
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    :sswitch_33
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 696
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 698
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCVolumeControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 700
    .local v26, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    if-eqz v26, :cond_a

    const/4 v3, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 701
    :cond_a
    const/4 v3, 0x0

    goto :goto_b

    .line 706
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_34
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 710
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 711
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCMuteControlSupport(ILjava/lang/String;)Z

    move-result v26

    .line 712
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    if-eqz v26, :cond_b

    const/4 v3, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 713
    :cond_b
    const/4 v3, 0x0

    goto :goto_c

    .line 718
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_35
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 722
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 723
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setBrowseThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 724
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    if-eqz v26, :cond_c

    const/4 v3, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 725
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 730
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_36
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 734
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 735
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMPAlbumArtSize(ILjava/lang/String;)Z

    move-result v26

    .line 736
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    if-eqz v26, :cond_d

    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 737
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 742
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_37
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 746
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 747
    .restart local v5       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->setDMCThumbSize(ILjava/lang/String;)Z

    move-result v26

    .line 748
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 749
    if-eqz v26, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 749
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 754
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v26           #_result:Z
    :sswitch_38
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 758
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 760
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 762
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 764
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v9, 0x1

    .line 766
    .local v9, _arg4:Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, _arg5:I
    move-object/from16 v3, p0

    .line 767
    invoke-virtual/range {v3 .. v10}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->lockPlayingContents(ILjava/lang/String;Ljava/lang/String;JZI)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 764
    .end local v9           #_arg4:Z
    .end local v10           #_arg5:I
    :cond_f
    const/4 v9, 0x0

    goto :goto_10

    .line 773
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    :sswitch_39
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 777
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 779
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 781
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 782
    .local v7, _arg3:[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z

    move-result v26

    .line 783
    .restart local v26       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    if-eqz v26, :cond_10

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 784
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 789
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:I
    .end local v7           #_arg3:[I
    .end local v26           #_result:Z
    :sswitch_3a
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 793
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 795
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 796
    .restart local v6       #_arg2:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getDMCLocalContentItemDetails(III)V

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 802
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    :sswitch_3b
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 805
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getControllingRendererID(I)Ljava/lang/String;

    move-result-object v26

    .line 806
    .local v26, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 812
    .end local v4           #_arg0:I
    .end local v26           #_result:Ljava/lang/String;
    :sswitch_3c
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 816
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 820
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 822
    .local v7, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 824
    .local v18, _arg4:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 826
    .restart local v10       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, _arg6:I
    move-object/from16 v12, p0

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move-wide/from16 v16, v7

    move/from16 v20, v10

    .line 827
    invoke-virtual/range {v12 .. v21}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 833
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:J
    .end local v10           #_arg5:I
    .end local v18           #_arg4:J
    .end local v21           #_arg6:I
    :sswitch_3d
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 837
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 839
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    .line 840
    sget-object v3, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 845
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 843
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :cond_11
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    goto :goto_12

    .line 851
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :sswitch_3e
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 855
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 857
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 859
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 861
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

    .line 862
    invoke-virtual/range {v12 .. v17}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 868
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v9           #_arg4:Ljava/lang/String;
    :sswitch_3f
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 871
    .restart local v4       #_arg0:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v26

    .line 872
    .local v26, _result:Lcom/htc/dlnainterface/DLNARendererData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    if-eqz v26, :cond_12

    .line 874
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 880
    :goto_13
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 878
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 884
    .end local v4           #_arg0:I
    .end local v26           #_result:Lcom/htc/dlnainterface/DLNARendererData;
    :sswitch_40
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 888
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 890
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    .line 891
    sget-object v3, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 896
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 894
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :cond_13
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    goto :goto_14

    .line 902
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :sswitch_41
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 906
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 908
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_14

    .line 909
    sget-object v3, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;

    .line 914
    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 912
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :cond_14
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    goto :goto_15

    .line 920
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;
    :sswitch_42
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 924
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 926
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_15

    .line 927
    sget-object v3, Lcom/htc/dlnainterface/DLNAPushMediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/dlnainterface/DLNAPushMediaInfo;

    .line 932
    .local v6, _arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :goto_16
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V

    .line 933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 930
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :cond_15
    const/4 v6, 0x0

    .restart local v6       #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    goto :goto_16

    .line 938
    .end local v4           #_arg0:I
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Lcom/htc/dlnainterface/DLNAPushMediaInfo;
    :sswitch_43
    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 941
    .local v4, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/dlnainterface/IDLNAPluginService$Stub;->getRendererIdData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;

    move-result-object v26

    .line 942
    .restart local v26       #_result:Lcom/htc/dlnainterface/DLNARendererData;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    if-eqz v26, :cond_16

    .line 944
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v3, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/htc/dlnainterface/DLNARendererData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 950
    :goto_17
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 948
    :cond_16
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
