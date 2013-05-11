.class public Lcom/htc/service/vt/MediaVT;
.super Ljava/lang/Object;
.source "MediaVT.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;,
        Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;,
        Lcom/htc/service/vt/MediaVT$EventHandler;,
        Lcom/htc/service/vt/MediaVT$OnEventListener;
    }
.end annotation


# static fields
.field public static final CAMERA_PARA_SET_BRIGHTNESS:I = 0x32

.field public static final CAMERA_PARA_SET_CONTRAST:I = 0x96

.field public static final CAMERA_PARA_SET_MIRROR:I = 0x64

.field private static final MEDIAVT_STATE_CONNECTED:I = 0x3

.field private static final MEDIAVT_STATE_DISCONNECTED:I = 0x4

.field private static final MEDIAVT_STATE_INITED:I = 0x2

.field private static final MEDIAVT_STATE_INITING:I = 0x1

.field private static final MEDIAVT_STATE_TERMINTED:I = 0x5

.field private static final MEDIAVT_STATE_UNINIT:I = 0x0

.field public static final SURFACE_CAMERA:I = 0x0

.field public static final SURFACE_VIDEO:I = 0x1

.field public static final SWITCH_263_VIDEO_DEFAULT:I = 0x16

.field public static final SWITCH_HW_AUDIO_DECODE:I = 0x2

.field public static final SWITCH_HW_VIDEO_DECODE:I = 0x0

.field public static final SWITCH_MP4_VIDEO_DEFAULT:I = 0x8

.field public static final SWITCH_SW_AUDIO_DECODE:I = 0x4

.field public static final SWITCH_SW_VIDEO_DECODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaVT_Java"

.field public static final VIDEO_IN_FIRST_CAMERA:I = 0x0

.field public static final VIDEO_IN_SECOND_CAMERA:I = 0x1

.field public static final VIDEO_IN_STILL_IMAGE:I = 0x2

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE:I = 0x8

.field public static final VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED:I = 0x9

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE:I = 0xc

.field public static final VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED:I = 0xd

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE:I = 0xa

.field public static final VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED:I = 0xb

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE:I = 0xe

.field public static final VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED:I = 0xf

.field public static final VT_CONNECT_COMPLETE:I = 0x3

.field public static final VT_CONNECT_DIRECTION_IMCOMING:I = 0x2

.field public static final VT_CONNECT_DIRECTION_OUTGOING:I = 0x1

.field public static final VT_CONNECT_FAILED:I = 0x4

.field public static final VT_DISCONNECT_COMPLETE:I = 0x5

.field public static final VT_DISCONNECT_FAILED:I = 0x6

.field public static final VT_ERROR_SERVER_DIED:I = 0x64

.field public static final VT_INIT_COMPLETE:I = 0x1

.field public static final VT_INIT_FAILED:I = 0x2

.field public static final VT_MEDIAVTSERVICE_DESTROY:I = 0x136

.field public static final VT_MEDIAVTSERVICE_GET_SURFACE:I = 0x12e

.field public static final VT_MEDIAVTSERVICE_HIDE:I = 0x130

.field public static final VT_MEDIAVTSERVICE_HIDE_FAREND:I = 0x132

.field public static final VT_MEDIAVTSERVICE_HIDE_NEAREND:I = 0x131

.field public static final VT_MEDIAVTSERVICE_PREPARE_SURFACE:I = 0x12d

.field public static final VT_MEDIAVTSERVICE_QUIT:I = 0x138

.field public static final VT_MEDIAVTSERVICE_SET_FAREND_POS:I = 0x135

.field public static final VT_MEDIAVTSERVICE_SET_NEAREND_POS:I = 0x134

.field public static final VT_MEDIAVTSERVICE_SHOW:I = 0x12f

.field public static final VT_MEDIAVTSERVICE_START:I = 0x12c

.field public static final VT_MEDIAVTSERVICE_SURFACE_READY:I = 0xc8

.field public static final VT_MEDIAVTSERVICE_SWITCH_VIEW:I = 0x133

.field public static final VT_MEDIAVTSERVICE_UNBIND:I = 0x137

.field public static final VT_MULTIMEDIA_RINGTONE_BEGIN:I = 0x11

.field public static final VT_MULTIMEDIA_RINGTONE_END:I = 0x12

.field public static final VT_REMOTE_CALL_END:I = 0x7

.field public static final VT_SERVICE_BINDED:I = 0x13

.field public static final VT_SERVICE_UNBINDED:I = 0x14

.field public static final VT_UNSOLICITED_TERMINATED:I = 0x10


# instance fields
.field private mAudioRecordingFile:Ljava/io/File;

.field private mAudioRecordingFileFormat:Ljava/lang/String;

.field private mAudioRecordingFileStream:Ljava/io/FileOutputStream;

.field private mCameraSurface:Landroid/view/Surface;

.field private mContext:Landroid/content/Context;

.field private mEnableAudio:Z

.field private mEnableVideo:Z

.field private mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

.field private mEventListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/service/vt/MediaVT$OnEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

.field private mIsDeInitializeCalled:Z

.field private mIsDisconnectCalled:Z

.field private mLoopback:Z

.field private mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

.field private mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

.field private mMediaVTServiceReady:Z

.field private mMediaVTState:I

.field private mNativeContext:I

.field private mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

.field private mSrcImage:Landroid/graphics/Bitmap;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field public mVTSerivceExist:Z

.field private mVideoSurface:Landroid/view/Surface;

.field private mVideosource:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "MediaVT_Java"

    const-string v1, "Try System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v0, "vt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 49
    const-string v0, "MediaVT_Java"

    const-string v1, "System.loadLibrary(vt_jni)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 104
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 147
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 148
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 149
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 150
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 153
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 156
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 159
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 160
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    .line 161
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 167
    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 104
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 147
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 148
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 149
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 150
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 153
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 156
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 159
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 160
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    .line 161
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 175
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 177
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 3
    .parameter "context"
    .parameter "eventListener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 104
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 147
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 148
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    .line 149
    new-instance v0, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    .line 150
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    .line 153
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 156
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    .line 159
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 160
    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    .line 161
    const-string v0, ".amr"

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/htc/service/vt/MediaVT$2;

    invoke-direct {v0, p0}, Lcom/htc/service/vt/MediaVT$2;-><init>(Lcom/htc/service/vt/MediaVT;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 181
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor in."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 183
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setupMediaVT(Landroid/content/Context;)V

    .line 184
    const-string v0, "MediaVT_Java"

    const-string v1, "Java MediaVT constructor out."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method static synthetic access$002(Lcom/htc/service/vt/MediaVT;Lcom/htc/service/vt/IMediaVTService;)Lcom/htc/service/vt/IMediaVTService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/service/vt/MediaVT;IIILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/service/vt/MediaVT;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/service/vt/MediaVT;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/service/vt/MediaVT;)Lcom/htc/service/vt/MediaVT$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/service/vt/MediaVT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/service/vt/MediaVT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/service/vt/MediaVT;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/service/vt/MediaVT;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/service/vt/MediaVT;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private native native_connect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_connect(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_enableoutput(ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_finalize()V
.end method

.method private native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_sendkey(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setoption(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setsurface(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_setvideosource(ILandroid/graphics/Bitmap;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_startrecording(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_startrecording(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native native_stoprecording()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediavt_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1199
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/vt/MediaVT;

    .line 1200
    .local v1, mv:Lcom/htc/service/vt/MediaVT;
    if-nez v1, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    if-eqz v2, :cond_0

    .line 1205
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1206
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-virtual {v2, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendMediaVTServiceCommand(IIILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    if-nez v1, :cond_2

    .line 1234
    new-instance v1, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    .line 1236
    :cond_2
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1237
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandler:Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;

    invoke-virtual {v1, v0}, Lcom/htc/service/vt/MediaVT$MediaVTServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setMediaVTState(I)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 81
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-gt p1, v0, :cond_0

    .line 82
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set Java MediaVT state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 85
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    .line 86
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaVTState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupMediaVT(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 189
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 190
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 194
    iput-boolean v3, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 195
    iput v3, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 198
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 199
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 201
    iput-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    .line 205
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 206
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    .line 216
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->native_setup(Ljava/lang/Object;)V

    .line 218
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setup out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    .line 223
    new-instance v1, Lcom/htc/service/vt/MediaVT$1;

    const-string v2, "MediaVTServiceHandlerThread"

    invoke-direct {v1, p0, v2}, Lcom/htc/service/vt/MediaVT$1;-><init>(Lcom/htc/service/vt/MediaVT;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    .line 230
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 232
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v1, 0x12c

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 235
    :cond_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    new-instance v1, Lcom/htc/service/vt/MediaVT$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/htc/service/vt/MediaVT$EventHandler;-><init>(Lcom/htc/service/vt/MediaVT;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0

    .line 210
    :cond_2
    iput-object v4, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    goto :goto_0
.end method


# virtual methods
.method public bindMediaVTSerive(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 334
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.mediavtservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    const-string v1, "com.htc.mediavtservice"

    const-string v2, "com.htc.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Sample AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 349
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    const-string v1, "MediaVT_Java"

    const-string v2, "bindService() failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.testtool"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    const-string v1, "com.htc.testtool"

    const-string v2, "com.htc.testtool.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for VT Test AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    :cond_2
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.mediavtservice.MediaVTService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "MediaVT_Java"

    const-string v2, "Try to start MediaVTService for Phone AP."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(I)V
    .locals 3
    .parameter "callDirection"

    .prologue
    .line 606
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[KPI] connect in, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 610
    :cond_0
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 611
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    :cond_1
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_connect(I)V

    .line 617
    const-string v0, "MediaVT_Java"

    const-string v1, "native_connect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect out, direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public connect(Z)V
    .locals 3
    .parameter "loopback"

    .prologue
    .line 592
    const-string v0, "MediaVT_Java"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 595
    :cond_0
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    .line 597
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 598
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call connect when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mLoopback:Z

    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_connect(Z)V

    goto :goto_0
.end method

.method public destroyMediaVTService()V
    .locals 3

    .prologue
    .line 487
    const-string v1, "MediaVT_Java"

    const-string v2, "destroyMediaVTService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->destroy()Z

    .line 497
    :goto_0
    return-void

    .line 492
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.destroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 628
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    if-nez v0, :cond_0

    .line 631
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP is calling MediaVT.disconenct()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iput-boolean v2, p0, Lcom/htc/service/vt/MediaVT;->mIsDisconnectCalled:Z

    .line 638
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mVTSerivceExist:Z

    if-nez v0, :cond_1

    .line 658
    :goto_0
    return-void

    .line 634
    :cond_0
    const-string v0, "MediaVT_Java"

    const-string v1, "Phone APP already called MediaVT.disconenct() before, dont call again..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 644
    :cond_1
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mIsDeInitializeCalled:Z

    if-ne v0, v2, :cond_2

    .line 645
    const-string v0, "MediaVT_Java"

    const-string v1, "Aricent VT stack is already deinitialized, dont call native_disconnect(), return and send VT_DISCONNECT_COMPLETE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v0, "MediaVT_Java"

    const-string v1, "inform AP VT_DISCONNECT_COMPLETE directly."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventHandler:Lcom/htc/service/vt/MediaVT$EventHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/service/vt/MediaVT$EventHandler;->sendEmptyMessage(I)Z

    .line 648
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 653
    :cond_2
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_disconnect()V

    .line 655
    const-string v0, "MediaVT_Java"

    const-string v1, "native_disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v0, "MediaVT_Java"

    const-string v1, "disconnect out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableVTOutput(ZZ)I
    .locals 3
    .parameter "video"
    .parameter "audio"

    .prologue
    .line 766
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableVTOutput, video:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", audio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 769
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call enableVTOutput when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    .line 774
    :cond_0
    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    if-eq v0, p2, :cond_2

    .line 775
    :cond_1
    iput-boolean p1, p0, Lcom/htc/service/vt/MediaVT;->mEnableVideo:Z

    .line 776
    iput-boolean p2, p0, Lcom/htc/service/vt/MediaVT;->mEnableAudio:Z

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_enableoutput(ZZ)I

    move-result v0

    goto :goto_0

    .line 780
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_finalize()V

    return-void
.end method

.method public getMediaVTNotificationString(I)Ljava/lang/String;
    .locals 2
    .parameter "what"

    .prologue
    .line 1008
    sparse-switch p1, :sswitch_data_0

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown notification from VT stack("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1010
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1012
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_INIT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1014
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1016
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1018
    :sswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1020
    :sswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_DISCONNECT_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1022
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_REMOTE_CALL_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1024
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_ERROR_SERVER_DIED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1026
    :sswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1028
    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1030
    :sswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1032
    :sswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_AUDIO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1034
    :sswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1036
    :sswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_PAUSE_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1038
    :sswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_COMPLETE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1040
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_CHANNEL_RESUME_OUTGOING_VIDEO_FAILED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1042
    :sswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_UNSOLICITED_TERMINATED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1044
    :sswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_BEGIN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1046
    :sswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_MULTIMEDIA_RINGTONE_END("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1048
    :sswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_BINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1050
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VT_SERVICE_UNBINDED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1008
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
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
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method public getMediaVTSeriveSurface()V
    .locals 3

    .prologue
    .line 372
    const-string v1, "MediaVT_Java"

    const-string v2, "getMediaVTSeriveSurface()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_2

    .line 375
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getNearendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 376
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    const-string v1, "MediaVT_Java"

    const-string v2, "CameraSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getFarendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 378
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    const-string v1, "MediaVT_Java"

    const-string v2, "VideoSurface == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not get surface from IMediaVTService"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMediaVTStateString(I)Ljava/lang/String;
    .locals 2
    .parameter "state"

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state of MediaVT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_UNINIT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITING("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_INITED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_CONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_DISCONNECTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 74
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MEDIAVT_STATE_TERMINTED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 874
    const-string v0, "MediaVT_Java"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/16 v0, 0x130

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 877
    return-void
.end method

.method public hideFarend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 886
    const-string v0, "MediaVT_Java"

    const-string v1, "hideFarend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_FAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/16 v0, 0x132

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 889
    return-void
.end method

.method public hideMediaVTFarendServiceView()V
    .locals 3

    .prologue
    .line 431
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTFarendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideFarend()Z

    .line 441
    :goto_0
    return-void

    .line 436
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideFarend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTNearendServiceView()V
    .locals 3

    .prologue
    .line 417
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTNearendServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hideNearend()Z

    .line 427
    :goto_0
    return-void

    .line 422
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hideNearend()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideMediaVTServiceView()V
    .locals 3

    .prologue
    .line 403
    const-string v1, "MediaVT_Java"

    const-string v2, "hideMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->hide()Z

    .line 413
    :goto_0
    return-void

    .line 408
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public hideNearend()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 880
    const-string v0, "MediaVT_Java"

    const-string v1, "hideNearend"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_HIDE_NEAREND"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/16 v0, 0x131

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 883
    return-void
.end method

.method public init(Landroid/view/Surface;Landroid/view/Surface;Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 3
    .parameter "camSurface"
    .parameter "vidSurface"
    .parameter "eventListener"

    .prologue
    const/4 v2, 0x1

    .line 249
    const-string v0, "MediaVT_Java"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 253
    iput-object p1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    .line 254
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    .line 255
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 257
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eq v0, v2, :cond_0

    .line 258
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call init(Surface, Surface, OnEventListener) when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    goto :goto_0
.end method

.method public init(Lcom/htc/service/vt/MediaVT$OnEventListener;)V
    .locals 4
    .parameter "eventListener"

    .prologue
    .line 277
    const-string v1, "MediaVT_Java"

    const-string v2, "init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v1, "MediaVT_Java"

    const-string v2, "Wait for mediavt service binding."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :goto_0
    iget-boolean v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTServiceReady:Z

    if-nez v1, :cond_0

    .line 282
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "Service binding successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mEventListener:Ljava/lang/ref/WeakReference;

    .line 291
    :cond_1
    iget v1, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v1, :cond_2

    .line 292
    const-string v1, "MediaVT_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot call init(OnEventListener) when MediaVT State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v3}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_1
    return-void

    .line 296
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/service/vt/MediaVT;->setMediaVTState(I)Z

    .line 306
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_init()V

    .line 308
    const-string v1, "MediaVT_Java"

    const-string v2, "native_init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v1, "MediaVT_Java"

    const-string v2, "init out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initMediaVTSerive()V
    .locals 3

    .prologue
    .line 358
    const-string v1, "MediaVT_Java"

    const-string v2, "initMediaVTSerive ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mOnMediaVTServiceListener:Lcom/htc/service/vt/MediaVT$OnMediaVTServiceListener;

    invoke-interface {v1, v2}, Lcom/htc/service/vt/IMediaVTService;->init(Lcom/htc/service/vt/OnMediaVTServiceEventListener;)Z

    .line 368
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "IMediaVTService == null, can not call IMediaVTService.init()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public native native_deInitialize()V
.end method

.method public sendKey(I)I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 705
    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 706
    const-string v2, "MediaVT_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot call sendKey when MediaVT State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v4}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    :goto_0
    return v1

    .line 710
    :cond_1
    const/4 v2, 0x7

    if-lt p1, v2, :cond_2

    const/16 v2, 0x10

    if-le p1, v2, :cond_3

    :cond_2
    const/16 v2, 0x12

    if-eq p1, v2, :cond_3

    const/16 v2, 0x11

    if-ne p1, v2, :cond_0

    .line 713
    :cond_3
    const/4 v0, 0x0

    .line 714
    .local v0, dtmfCode:I
    packed-switch p1, :pswitch_data_0

    .line 752
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/service/vt/MediaVT;->native_sendkey(I)I

    move-result v1

    goto :goto_0

    .line 716
    :pswitch_0
    const/4 v0, 0x0

    .line 717
    goto :goto_1

    .line 719
    :pswitch_1
    const/4 v0, 0x1

    .line 720
    goto :goto_1

    .line 722
    :pswitch_2
    const/4 v0, 0x2

    .line 723
    goto :goto_1

    .line 725
    :pswitch_3
    const/4 v0, 0x3

    .line 726
    goto :goto_1

    .line 728
    :pswitch_4
    const/4 v0, 0x4

    .line 729
    goto :goto_1

    .line 731
    :pswitch_5
    const/4 v0, 0x5

    .line 732
    goto :goto_1

    .line 734
    :pswitch_6
    const/4 v0, 0x6

    .line 735
    goto :goto_1

    .line 737
    :pswitch_7
    const/4 v0, 0x7

    .line 738
    goto :goto_1

    .line 740
    :pswitch_8
    const/16 v0, 0x8

    .line 741
    goto :goto_1

    .line 743
    :pswitch_9
    const/16 v0, 0x9

    .line 744
    goto :goto_1

    .line 746
    :pswitch_a
    const/16 v0, 0xa

    .line 747
    goto :goto_1

    .line 749
    :pswitch_b
    const/16 v0, 0xb

    goto :goto_1

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setFarendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 906
    const-string v1, "MediaVT_Java"

    const-string v2, "setFarendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_FAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 910
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x135

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 911
    return-void
.end method

.method public setMediaVTServiceFarendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 473
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setFarendVideoPos(IIII)Z

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setFarendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaVTServiceNearendVideoPos(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 459
    const-string v1, "MediaVT_Java"

    const-string v2, "setMediaVTServiceNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/service/vt/IMediaVTService;->setNearendVideoPos(IIII)Z

    .line 469
    :goto_0
    return-void

    .line 464
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.setNearendVideoPos()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNearendVideoPos(IIII)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 898
    const-string v1, "MediaVT_Java"

    const-string v2, "setNearendVideoPos"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_SET_NEAREND_POS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 902
    .local v0, rect:Landroid/graphics/Rect;
    const/16 v1, 0x134

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 903
    return-void
.end method

.method public setOption(I)I
    .locals 2
    .parameter "option"

    .prologue
    .line 790
    const-string v0, "MediaVT_Java"

    const-string v1, "setOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setOption(ILjava/lang/String;)I
    .locals 3
    .parameter "option"
    .parameter "value"

    .prologue
    .line 806
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOption option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 809
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setOption when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x0

    .line 812
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/service/vt/MediaVT;->native_setoption(ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setSurface(ILandroid/view/Surface;)V
    .locals 3
    .parameter "whichSurface"
    .parameter "newSurface"

    .prologue
    .line 522
    const-string v1, "MediaVT_Java"

    const-string v2, "setSurfaces ()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-nez p1, :cond_2

    .line 526
    if-nez p2, :cond_1

    .line 528
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set null camera surface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-nez v1, :cond_0

    .line 531
    const-string v1, "MediaVT_Java"

    const-string v2, "null camera surface, ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_0
    return-void

    .line 535
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "null camera surface, use service nearend surface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getNearendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_1
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_CAMERA in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 549
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_CAMERA out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, remoteException:Landroid/os/RemoteException;
    const-string v1, "MediaVT_Java"

    const-string v2, "get nearend surface cause Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 544
    .end local v0           #remoteException:Landroid/os/RemoteException;
    :cond_1
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set camera surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mCameraSurface:Landroid/view/Surface;

    goto :goto_1

    .line 551
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 553
    if-nez p2, :cond_4

    .line 555
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set null video surface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-nez v1, :cond_3

    .line 558
    const-string v1, "MediaVT_Java"

    const-string v2, "null video surface, ignore it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 562
    :cond_3
    const-string v1, "MediaVT_Java"

    const-string v2, "null video surface, user service farend surface"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :try_start_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->getFarendSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 574
    :goto_2
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_VIDEO in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0, p1}, Lcom/htc/service/vt/MediaVT;->native_setsurface(I)V

    .line 576
    const-string v1, "MediaVT_Java"

    const-string v2, "native_setsurface SURFACE_VIDEO out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :catch_1
    move-exception v0

    .line 566
    .restart local v0       #remoteException:Landroid/os/RemoteException;
    const-string v1, "MediaVT_Java"

    const-string v2, "get farend surface cause Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 571
    .end local v0           #remoteException:Landroid/os/RemoteException;
    :cond_4
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set video surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iput-object p2, p0, Lcom/htc/service/vt/MediaVT;->mVideoSurface:Landroid/view/Surface;

    goto :goto_2

    .line 579
    :cond_5
    const-string v1, "MediaVT_Java"

    const-string v2, "AP want to set unknown surface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setVideoInputSource(ILandroid/graphics/Bitmap;)I
    .locals 3
    .parameter "is"
    .parameter "img"

    .prologue
    const/4 v2, 0x0

    .line 675
    const-string v0, "MediaVT_Java"

    const-string v1, "setVideoInputSource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "MediaVT_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call setVideoInputSource when MediaVT State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/service/vt/MediaVT;->mMediaVTState:I

    invoke-virtual {p0, v2}, Lcom/htc/service/vt/MediaVT;->getMediaVTStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v0, 0x0

    .line 693
    :goto_0
    return v0

    .line 681
    :cond_0
    iput p1, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    .line 682
    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 684
    iget v0, p0, Lcom/htc/service/vt/MediaVT;->mVideosource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 686
    if-nez p2, :cond_1

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_1
    const/16 v0, 0xb0

    const/16 v1, 0x90

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    .line 690
    iget-object v0, p0, Lcom/htc/service/vt/MediaVT;->mSrcImage:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0

    .line 693
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/htc/service/vt/MediaVT;->native_setvideosource(ILandroid/graphics/Bitmap;)I

    move-result v0

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 868
    const-string v0, "MediaVT_Java"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SHOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/16 v0, 0x12f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 871
    return-void
.end method

.method public showMediaVTServiceView()V
    .locals 3

    .prologue
    .line 389
    const-string v1, "MediaVT_Java"

    const-string v2, "showMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->show()Z

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.show()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startVoiceRecording(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"

    .prologue
    const/4 v1, 0x0

    .line 822
    const-string v2, "MediaVT_Java"

    const-string v3, "startVoiceRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    if-nez p1, :cond_0

    .line 824
    const-string v2, "MediaVT_Java"

    const-string v3, "startVoiceRecording fail filePath == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_0
    return v1

    .line 828
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileFormat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    .line 829
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    if-nez v2, :cond_1

    .line 830
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording File null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :try_start_1
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/service/vt/MediaVT;->native_startrecording(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 845
    const/4 v1, 0x1

    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording File Stream Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 841
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 842
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording Get FD Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopVoiceRecording()V
    .locals 4

    .prologue
    .line 850
    const-string v1, "MediaVT_Java"

    const-string v2, "stopVoiceRecording"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0}, Lcom/htc/service/vt/MediaVT;->native_stoprecording()V

    .line 852
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 854
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 859
    :try_start_1
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Ljava/io/IOException;
    const-string v1, "MediaVT_Java"

    const-string v2, "Audio Recording close Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 856
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_2
    const-string v1, "MediaVT_Java"

    const-string v2, "Audio Recording flush Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 859
    :try_start_3
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 860
    :catch_2
    move-exception v0

    .line 861
    const-string v1, "MediaVT_Java"

    const-string v2, "Audio Recording close Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 858
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 859
    :try_start_4
    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mAudioRecordingFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 862
    :goto_1
    throw v1

    .line 860
    :catch_3
    move-exception v0

    .line 861
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "MediaVT_Java"

    const-string v3, "Audio Recording close Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchMediaVTServiceView()V
    .locals 3

    .prologue
    .line 445
    const-string v1, "MediaVT_Java"

    const-string v2, "switchMediaVTServiceView()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mIMediaVTService:Lcom/htc/service/vt/IMediaVTService;

    invoke-interface {v1}, Lcom/htc/service/vt/IMediaVTService;->switchView()Z

    .line 455
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v1, "MediaVT_Java"

    const-string v2, "mIMediaVTService == null, can not call IMediaVTService.switchView()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 892
    const-string v0, "MediaVT_Java"

    const-string v1, "switchView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string v0, "MediaVT_Java"

    const-string v1, "send VT_MEDIAVTSERVICE_SWITCH_VIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/16 v0, 0x133

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 895
    return-void
.end method

.method public unBindMediaVTService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 501
    const-string v1, "MediaVT_Java"

    const-string v2, "unBindService()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/vt/MediaVT;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/service/vt/MediaVT;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    const-string v1, "MediaVT_Java"

    const-string v2, "send VT_MEDIAVTSERVICE_QUIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/16 v1, 0x138

    const/4 v2, 0x0

    invoke-direct {p0, v1, v3, v3, v2}, Lcom/htc/service/vt/MediaVT;->sendMediaVTServiceCommand(IIILjava/lang/Object;)V

    .line 510
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaVT_Java"

    const-string v2, "Catch java.lang.IllegalArgumentException: Service not registered, ITS HuangShan 1323"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public vt_deInitialize()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    invoke-virtual {p0}, Lcom/htc/service/vt/MediaVT;->native_deInitialize()V

    .line 663
    const-string v0, "MediaVT_Java"

    const-string v1, "deInitialize() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void
.end method
