.class public Landroid/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$DLNAEventHandler;,
        Landroid/media/MediaPlayer$OnInfoListener;,
        Landroid/media/MediaPlayer$OnErrorListener;,
        Landroid/media/MediaPlayer$OnTimedTextListener;,
        Landroid/media/MediaPlayer$OnVideoSizeChangedListener;,
        Landroid/media/MediaPlayer$OnSeekCompleteListener;,
        Landroid/media/MediaPlayer$OnBufferingUpdateListener;,
        Landroid/media/MediaPlayer$OnCompletionListener;,
        Landroid/media/MediaPlayer$OnPreparedListener;,
        Landroid/media/MediaPlayer$EventHandler;,
        Landroid/media/MediaPlayer$TrackInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_HTC_INVOKE_END:I = 0x2328

.field private static final ANDROID_HTC_INVOKE_START:I = 0x22ce

.field public static final APPLY_METADATA_FILTER:Z = true

.field public static final BYPASS_METADATA_FILTER:Z = false

.field private static final IMEDIA_PLAYER:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_MEDIA_TRACK_BASE:I = 0x7d0

.field private static final KEY_PARAMETER_MEDIA_TRACK_INFO:I = 0x7d0

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_STARTED_AS_NEXT:I = 0x2

.field public static final MEDIA_INFO_TIMED_TEXT_ERROR:I = 0x384

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_MIMETYPE_TEXT_SUBRIP:Ljava/lang/String; = "application/x-subrip"

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field public static final METADATA_ALL:Z = false

.field public static final METADATA_UPDATE_ONLY:Z = true

.field private static final MM_HEADERS:[Ljava/lang/String; = null

.field private static final MM_SETTINGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaPlayer"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field private static mNetworkType:Ljava/lang/String;


# instance fields
.field private final DISABLE_DLNA:I

.field private final DLNAPrepareFailed:I

.field private final TAG_UB:Ljava/lang/String;

.field private final TURNOFFSKIPSEEKPREVIEWMODE:I

.field private final TURNONSKIPSEEKPREVIEWMODE:I

.field private final UB_START:I

.field private final UB_STOP:I

.field private cb:Landroid/view/SurfaceHolder$Callback;

.field private mContext:Landroid/content/Context;

.field private volatile mDLNAAgent:Landroid/media/MediaPluginDLNA;

.field private mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

.field private final mDLNAFlag:Z

.field private mDLNAInitDone:Z

.field private mDLNALock:Ljava/lang/Object;

.field private mDLNAMode:Z

.field private mDLNAThumbnail:Landroid/graphics/Bitmap;

.field private mDoSeekFlag:Z

.field private final mDummyHeight:I

.field private final mDummyWidth:I

.field private mEventHandler:Landroid/media/MediaPlayer$EventHandler;

.field private mForceDisableDLNA:Z

.field private mICallBack:Landroid/os/IBinder;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mPath:Ljava/lang/String;

.field private mPreSeekSec:I

.field private mPrepareDone:Z

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUseFileDescriptor:Z

.field mUseProxy:Ljava/lang/Boolean;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 577
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 578
    invoke-static {}, Landroid/media/MediaPlayer;->native_init()V

    .line 3562
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "httpproxyip"

    aput-object v1, v0, v3

    const-string v1, "httpproxyport"

    aput-object v1, v0, v4

    const-string/jumbo v1, "rtspproxyip"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "rtspproxyport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "minudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "maxudpport"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "buffertime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "rtsptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "rtptimeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "rtcpreportinterval"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "rtspkeepaliveinterval"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .line 3576
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "rtspuseragent"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wapprofile"

    aput-object v1, v0, v4

    sput-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object v3, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 598
    iput-boolean v4, p0, Landroid/media/MediaPlayer;->mDLNAFlag:Z

    .line 599
    const/16 v1, 0x1e0

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyWidth:I

    .line 600
    const/16 v1, 0x140

    iput v1, p0, Landroid/media/MediaPlayer;->mDummyHeight:I

    .line 601
    const/16 v1, -0x1f4

    iput v1, p0, Landroid/media/MediaPlayer;->DLNAPrepareFailed:I

    .line 602
    const/16 v1, 0x4000

    iput v1, p0, Landroid/media/MediaPlayer;->DISABLE_DLNA:I

    .line 603
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 604
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDLNALock:Ljava/lang/Object;

    .line 605
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 606
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 607
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 608
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 609
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 610
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 611
    iput v2, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 612
    iput-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 614
    const/16 v1, 0x22e0

    iput v1, p0, Landroid/media/MediaPlayer;->TURNONSKIPSEEKPREVIEWMODE:I

    .line 615
    const/16 v1, 0x22e1

    iput v1, p0, Landroid/media/MediaPlayer;->TURNOFFSKIPSEEKPREVIEWMODE:I

    .line 616
    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 1282
    iput v4, p0, Landroid/media/MediaPlayer;->UB_START:I

    .line 1283
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/MediaPlayer;->UB_STOP:I

    .line 1284
    const-string v1, "HtcDeviceInfoManager"

    iput-object v1, p0, Landroid/media/MediaPlayer;->TAG_UB:Ljava/lang/String;

    .line 1889
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    .line 1891
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 3182
    new-instance v1, Landroid/media/MediaPlayer$2;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$2;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 3541
    new-instance v1, Landroid/media/MediaPlayer$5;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer$5;-><init>(Landroid/media/MediaPlayer;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    .line 3561
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 629
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 630
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    .line 640
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->native_setup(Ljava/lang/Object;)V

    .line 641
    return-void

    .line 631
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 632
    new-instance v1, Landroid/media/MediaPlayer$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPlayer$EventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0

    .line 634
    :cond_1
    iput-object v3, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    goto :goto_0
.end method

.method private native _disconnectSurface(Landroid/view/Surface;)V
.end method

.method private native _getParameter(ILandroid/os/Parcel;)V
.end method

.method private _invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 7
    .parameter "request"
    .parameter "reply"

    .prologue
    const/4 v6, 0x0

    .line 701
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v3

    if-eqz v3, :cond_3

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 705
    .local v1, nID:I
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]invoke nID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v3, 0x4000

    if-ne v1, v3, :cond_2

    .line 707
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]force disable DLNA mode!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    goto :goto_0

    .line 711
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 715
    .end local v1           #nID:I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 716
    .local v0, methodID:I
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 718
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result v2

    .line 719
    .local v2, retcode:I
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 720
    if-eqz v2, :cond_0

    .line 721
    const/16 v3, 0x22ce

    if-le v0, v3, :cond_4

    const/16 v3, 0x2328

    if-ge v0, v3, :cond_4

    .line 722
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " got failure code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 724
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failure code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget v0, p0, Landroid/media/MediaPlayer;->mNativeContext:I

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/media/MediaPlayer;->hasSurface()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer;)Landroid/media/MediaPluginDLNA;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/media/MediaPlayer;Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/media/MediaPlayer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-object p1, p0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer;Landroid/view/Surface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->processDLNAIcon(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$DLNAEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->setWirelessDisplayStatus(Z)V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/media/MediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    return-void
.end method

.method static synthetic access$2202(Landroid/media/MediaPlayer;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNAController()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 541
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 541
    iget-object v0, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method private add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V
    .locals 8
    .parameter "resolver"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3622
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Landroid/media/MediaPlayer;->MM_HEADERS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v1, v0, v3

    .line 3623
    .local v1, header_name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "streamplayer_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_HTC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3624
    .local v2, header_value:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3625
    :cond_0
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "header Name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is no value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3628
    const-string/jumbo v5, "rtspuseragent"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3629
    const-string v5, "User-Agent"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3622
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3631
    :cond_3
    const-string/jumbo v5, "wapprofile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3632
    const-string/jumbo v5, "x-wap-profile"

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3636
    .end local v1           #header_name:Ljava/lang/String;
    .end local v2           #header_value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private add_mm_headers_runtime(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3640
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "unknownPhoneType"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3642
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    .line 3643
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3645
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3647
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=USB"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    const-string/jumbo v5, "x-network-type"

    const-string v6, "USB"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3649
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3650
    const-string/jumbo v5, "usb"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3790
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 3652
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3654
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wifi"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    const-string/jumbo v5, "x-network-type"

    const-string v6, "WIFI"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3656
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3657
    const-string/jumbo v5, "wifi"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3786
    .end local v0           #connMgr:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 3787
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3659
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #connMgr:Landroid/net/ConnectivityManager;
    :cond_1
    const/4 v5, 0x6

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3661
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "network type=wimax"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    const-string/jumbo v5, "x-network-type"

    const-string v6, "Wimax"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    const-string v5, "Bandwidth"

    const-string v6, "11000000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3664
    const-string/jumbo v5, "wimax"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    .line 3665
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3666
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_0

    .line 3669
    :cond_2
    const-string v5, "MediaPlayer"

    const-string v6, "This project don\'t need to use proxy."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3672
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3674
    const/4 v2, -0x1

    .line 3675
    .local v2, phoneNetworkType:I
    const-string/jumbo v5, "mobile"

    sput-object v5, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3678
    :try_start_2
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 3680
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "operator number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    .line 3683
    .local v3, telNetworkType:I
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 3685
    packed-switch v3, :pswitch_data_0

    .line 3707
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 3710
    :pswitch_0
    :try_start_3
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=GPRS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3712
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3687
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_1
    :try_start_4
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknow telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 3703
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v1

    .line 3704
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v5, "MediaPlayer"

    const-string v6, "get telphoneManager exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 3690
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #telNetworkType:I
    .restart local v4       #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_2
    :try_start_6
    const-string v5, "MediaPlayer"

    const-string v6, "GSM telphone network type"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3693
    :pswitch_3
    invoke-direct {p0}, Landroid/media/MediaPlayer;->isUsingProxyProject()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3694
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    goto :goto_1

    .line 3699
    :pswitch_4
    const-string v5, "MediaPlayer"

    const-string v6, "TelephonyManager.PHONE_TYPE_SIP"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3716
    .end local v3           #telNetworkType:I
    .end local v4           #telephonyManager:Landroid/telephony/TelephonyManager;
    :pswitch_5
    :try_start_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EDGE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3717
    const-string/jumbo v5, "x-network-type"

    const-string v6, "GSM"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3718
    const-string v5, "Bandwidth"

    const-string v6, "384000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3728
    :pswitch_6
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=UMTS"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    const-string/jumbo v5, "x-network-type"

    const-string v6, "UMTS"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3730
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3734
    :pswitch_7
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=CDMA"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const-string/jumbo v5, "x-network-type"

    const-string v6, "iS95"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3736
    const-string v5, "Bandwidth"

    const-string v6, "141000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3740
    :pswitch_8
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO 0"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3742
    const-string v5, "Bandwidth"

    const-string v6, "2400000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3746
    :pswitch_9
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 A"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3747
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO A"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3748
    const-string v5, "Bandwidth"

    const-string v6, "3100000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3752
    :pswitch_a
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EVD0 B"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3753
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EVDO B"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    const-string v5, "Bandwidth"

    const-string v6, "4900000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3758
    :pswitch_b
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=1xRTT"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3759
    const-string/jumbo v5, "x-network-type"

    const-string v6, "1xRTT"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3764
    :pswitch_c
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=LTE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
    const-string/jumbo v5, "x-network-type"

    const-string v6, "LTE"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3766
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3770
    :pswitch_d
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=IDEN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    const-string/jumbo v5, "x-network-type"

    const-string v6, "IDEN"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3772
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3776
    :pswitch_e
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "phone network type=EHRPD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    const-string/jumbo v5, "x-network-type"

    const-string v6, "EHRPD"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3778
    const-string v5, "Bandwidth"

    const-string v6, "1920000"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3783
    .end local v2           #phoneNetworkType:I
    :cond_5
    const-string v5, "MediaPlayer"

    const-string/jumbo v6, "unknown network type"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 3685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3707
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method private add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .parameter "resolver"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3585
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 3587
    .local v1, host:Ljava/lang/String;
    sget-object v0, Landroid/media/MediaPlayer;->MM_SETTINGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 3588
    .local v4, setting_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamplayer_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_HTC"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3589
    .local v5, setting_value:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3590
    :cond_0
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",null) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3594
    :cond_1
    const-string v6, "httpproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "httpproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "rtspproxyip"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "rtspproxyport"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 3597
    :cond_2
    iget-object v6, p0, Landroid/media/MediaPlayer;->mUseProxy:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3598
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "skip setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") when NetworkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/media/MediaPlayer;->mNetworkType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3602
    :cond_3
    if-eqz v1, :cond_5

    const-string v6, "localhost"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "127.0.0.1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 3603
    :cond_4
    const-string v6, "MediaPlayer"

    const-string v7, "localhost"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3607
    :cond_5
    const-string v6, "0.0.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 3608
    const-string v6, "MediaPlayer"

    const-string/jumbo v7, "skip proxy setting 0.0.0.0"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3614
    :cond_6
    const-string v6, "MediaPlayer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add setting ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "x-htc-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 3617
    .end local v4           #setting_name:Ljava/lang/String;
    .end local v5           #setting_value:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 2313
    const-string v0, "application/x-subrip"

    if-ne p0, v0, :cond_0

    .line 2314
    const/4 v0, 0x1

    .line 2316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, 0x0

    .line 927
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 928
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    move-object v0, v8

    .line 945
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return-object v0

    .line 930
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 931
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 932
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 933
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 935
    .end local v0           #mp:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v7

    .line 936
    .local v7, ex:Ljava/io/IOException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v7           #ex:Ljava/io/IOException;
    :goto_1
    move-object v0, v8

    .line 945
    goto :goto_0

    .line 938
    :catch_1
    move-exception v7

    .line 939
    .local v7, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 941
    .end local v7           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v7

    .line 942
    .local v7, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    const-string v2, "create failed:"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;)Landroid/media/MediaPlayer;
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "holder"

    .prologue
    .line 890
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 891
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 892
    if-eqz p2, :cond_0

    .line 893
    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 895
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 908
    .end local v1           #mp:Landroid/media/MediaPlayer;
    :goto_0
    return-object v1

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 900
    :catch_1
    move-exception v0

    .line 901
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 903
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 904
    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPlayer"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3331
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 3332
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3369
    :goto_0
    return-object v4

    .line 3335
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v5

    iput-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 3336
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 3338
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3339
    .local v3, handler:Landroid/os/Handler;
    new-instance v5, Landroid/media/MediaPlayer$3;

    invoke-direct {v5, p0}, Landroid/media/MediaPlayer$3;-><init>(Landroid/media/MediaPlayer;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3346
    const/4 v0, 0x0

    .line 3347
    .local v0, count:I
    :goto_1
    const/4 v5, 0x5

    if-ge v0, v5, :cond_1

    .line 3349
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_1

    .line 3350
    const-wide/16 v5, 0xc8

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3356
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3353
    :catch_0
    move-exception v1

    .line 3354
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]sleep() error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3363
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #handler:Landroid/os/Handler;
    :catch_1
    move-exception v2

    .line 3364
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "MediaPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[DLNA][getContext]can not get application context, ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3358
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v3       #handler:Landroid/os/Handler;
    :cond_1
    :try_start_3
    iget-object v5, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v5, :cond_2

    .line 3359
    const-string v5, "MediaPlayer"

    const-string v6, "[DLNA]can not get application context"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3369
    .end local v0           #count:I
    .end local v3           #handler:Landroid/os/Handler;
    :cond_2
    iget-object v4, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "drmuri"

    .prologue
    .line 956
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 957
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "title"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "content_offset"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "content_id"

    aput-object v3, v2, v1

    const/4 v1, 0x5

    const-string v3, "content_boundary_offset"

    aput-object v3, v2, v1

    .line 963
    .local v2, cols:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 964
    .local v11, drmcur:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 967
    .local v10, drmFileToPlay:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 968
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 969
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 970
    const-string v1, "_data"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 971
    .local v9, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 973
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 975
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 978
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 982
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    :cond_0
    if-eqz v11, :cond_1

    .line 983
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 984
    const/4 v11, 0x0

    .line 988
    :cond_1
    return-object v10

    .line 982
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_2

    .line 983
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 984
    const/4 v11, 0x0

    .line 982
    :cond_2
    throw v1
.end method

.method private getParameter(ILandroid/os/Parcel;)V
    .locals 4
    .parameter "key"
    .parameter "reply"

    .prologue
    .line 2093
    const/16 v1, 0x7d0

    if-ge p1, v1, :cond_0

    .line 2094
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_getParameter(ILandroid/os/Parcel;)V

    .line 2102
    :goto_0
    return-void

    .line 2097
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_getParameter(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParameter function get exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasSurface()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3429
    :try_start_0
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA][getDLNAThmubnail]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_5

    .line 3431
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_3

    .line 3432
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 3443
    :cond_1
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_2

    .line 3444
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v3, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3446
    :cond_2
    const/4 v1, 0x1

    .line 3453
    :goto_0
    return v1

    .line 3433
    :cond_3
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_4

    .line 3434
    iget-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3435
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]mSurface is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3451
    :catch_0
    move-exception v0

    .line 3452
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]getSurface exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3439
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]no valid surface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 3448
    :cond_5
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]mSurfaceHolder and mSurface are null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initDLNA()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3400
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .local v2, looper:Landroid/os/Looper;
    if-eqz v2, :cond_0

    .line 3401
    new-instance v3, Landroid/media/MediaPlayer$DLNAEventHandler;

    invoke-direct {v3, p0, p0, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;-><init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    .line 3406
    :goto_0
    if-nez v2, :cond_1

    .line 3407
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3408
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]no looper"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3424
    :goto_1
    return v6

    .line 3403
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    goto :goto_0

    .line 3412
    :cond_1
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer$4;

    invoke-direct {v1, p0, v2}, Landroid/media/MediaPlayer$4;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;)V

    .line 3417
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3418
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3419
    .end local v1           #h:Landroid/os/Handler;
    :catch_0
    move-exception v0

    .line 3420
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][initDLNA]Init DLNA module failed, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    iput-boolean v6, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    goto :goto_1
.end method

.method private initDLNAController()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3066
    const-string v1, "MediaPlayer"

    const-string v3, "initDLNAController() in"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3068
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNALock:Ljava/lang/Object;

    monitor-enter v3

    .line 3070
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_1

    .line 3071
    const-string v1, "MediaPlayer"

    const-string v4, "[initDLNAController][reuse original DLNA agent]"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 3073
    monitor-exit v3

    .line 3126
    :cond_0
    :goto_0
    return-void

    .line 3075
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3077
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 3078
    const-string v1, "MediaPlayer"

    const-string v3, "context is null,create DLNA Controller failed.."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 3080
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3081
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_0

    .line 3075
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3087
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3088
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3092
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    .line 3093
    .local v2, proj:[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3094
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 3095
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 3096
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3097
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 3098
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get absolute path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3116
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v6           #column_index:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_1
    const-string v1, "MediaPlayer"

    const-string v3, "Create MediaPlugin type DLNA in initDLNAController()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    iget-object v1, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v1, p0}, Landroid/media/MediaPlugin$OnEventListener;->setMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 3118
    new-instance v1, Landroid/media/MediaPluginDLNA;

    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/MediaPlayer;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-direct {v1, v3, v4, v5}, Landroid/media/MediaPluginDLNA;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlugin$OnEventListener;)V

    iput-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 3119
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    .line 3120
    iget v1, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    if-lez v1, :cond_0

    .line 3121
    const-string v1, "MediaPlayer"

    const-string v3, "AP request seekTo() before start()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    invoke-virtual {v1, v3}, Landroid/media/MediaPluginDLNA;->setPreSeek(I)V

    goto/16 :goto_0

    .line 3101
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #proj:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_4
    :try_start_3
    const-string v1, "MediaPlayer"

    const-string/jumbo v3, "null cursor, error when retrive absolute path, use original path..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 3103
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v2           #proj:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 3104
    .local v8, ex:Ljava/lang/SecurityException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 3106
    .end local v8           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 3107
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not retrieve absolute path from content uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3108
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    goto :goto_1

    .line 3110
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    :cond_5
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string/jumbo v3, "rtsp://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3111
    :cond_6
    const-string v1, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "streaming uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3114
    :cond_7
    const-string v1, "MediaPlayer"

    iget-object v3, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isDrmUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 949
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://drm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const/4 v0, 0x1

    .line 952
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsingProxyProject()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3793
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_0

    .line 3794
    const-string v1, "MediaPlayer"

    const-string v2, "This is a sprint project"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    :goto_0
    return v0

    .line 3797
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 3798
    const-string v1, "MediaPlayer"

    const-string v2, "This is a boost project"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3802
    :cond_1
    const-string v0, "MediaPlayer"

    const-string v1, "This is not a sprint nor boost project"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 3053
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method public static native native_pullBatteryData(Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setRetransmitEndpoint(Ljava/lang/String;I)I
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediaplayer_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2694
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 2695
    .local v1, mp:Landroid/media/MediaPlayer;
    if-nez v1, :cond_1

    .line 2707
    :cond_0
    :goto_0
    return-void

    .line 2699
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 2701
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 2703
    :cond_2
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    if-eqz v2, :cond_0

    .line 2704
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2705
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private processDLNAIcon(Landroid/view/Surface;)V
    .locals 21
    .parameter "surface"

    .prologue
    .line 3458
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-nez v3, :cond_0

    .line 3509
    :goto_0
    return-void

    .line 3462
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v9

    .line 3463
    .local v9, c:Landroid/graphics/Canvas;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][processDLNA]canvas width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA][processDLNA]canvas height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 3467
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x4020029

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 3471
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 3474
    .local v2, img:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v13, v3, v4

    .line 3475
    .local v13, destWidthScaleRate:F
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v12, v3, v4

    .line 3478
    .local v12, destHeigthScaleRate:F
    const/high16 v19, 0x3f80

    .line 3479
    .local v19, scaleWidth:F
    const/high16 v17, 0x3f80

    .line 3480
    .local v17, scaleHeight:F
    cmpl-float v3, v13, v12

    if-ltz v3, :cond_2

    .line 3481
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v12

    .line 3482
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v12

    .line 3489
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v20, v19, v3

    .line 3490
    .local v20, scaleWidthRate:F
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v18, v17, v3

    .line 3493
    .local v18, scaleHeightRate:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 3494
    .local v7, mtx:Landroid/graphics/Matrix;
    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3495
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 3499
    .local v16, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v10, v3, 0x2

    .line 3500
    .local v10, centreX:I
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v11, v3, 0x2

    .line 3501
    .local v11, centreY:I
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 3502
    .local v15, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3503
    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, v16

    invoke-virtual {v9, v0, v3, v4, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 3504
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 3505
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaPlayer;->_disconnectSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3506
    .end local v2           #img:Landroid/graphics/Bitmap;
    .end local v7           #mtx:Landroid/graphics/Matrix;
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v10           #centreX:I
    .end local v11           #centreY:I
    .end local v12           #destHeigthScaleRate:F
    .end local v13           #destWidthScaleRate:F
    .end local v15           #paint:Landroid/graphics/Paint;
    .end local v16           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v17           #scaleHeight:F
    .end local v18           #scaleHeightRate:F
    .end local v19           #scaleWidth:F
    .end local v20           #scaleWidthRate:F
    :catch_0
    move-exception v14

    .line 3507
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]processDLNA icon exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3484
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v2       #img:Landroid/graphics/Bitmap;
    .restart local v9       #c:Landroid/graphics/Canvas;
    .restart local v12       #destHeigthScaleRate:F
    .restart local v13       #destWidthScaleRate:F
    .restart local v17       #scaleHeight:F
    .restart local v19       #scaleWidth:F
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v19, v3, v13

    .line 3485
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    int-to-float v3, v3

    mul-float v17, v3, v13

    goto/16 :goto_1
.end method

.method private resetDLNAParameters()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3375
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 3376
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Landroid/media/MediaPlayer;->cb:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 3377
    :cond_0
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    if-eqz v1, :cond_1

    .line 3378
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer$DLNAEventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3379
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setDLNASkipSeekPreview(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3383
    :goto_0
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    .line 3384
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 3385
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 3386
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    .line 3387
    const-string v1, ""

    iput-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 3388
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDoSeekFlag:Z

    .line 3389
    iput-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    .line 3390
    iput v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 3391
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAThumbnail:Landroid/graphics/Bitmap;

    .line 3394
    return-void

    .line 3380
    :catch_0
    move-exception v0

    .line 3381
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]mSurfaceHolder removeCallback exception!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 3
    .parameter "index"
    .parameter "select"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2510
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2512
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2513
    if-eqz p2, :cond_0

    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2514
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    return-void

    .line 2513
    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    .line 2517
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2518
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2517
    throw v2
.end method

.method private static sendMediaBroadcast(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "act"

    .prologue
    .line 1320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1321
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.HtcDeviceInfoManager.MediaReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1322
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1323
    const-string v1, "act"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1324
    const-string/jumbo v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1325
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1326
    return-void
.end method

.method private setDLNASkipSeekPreview(Z)V
    .locals 6
    .parameter "skip"

    .prologue
    .line 3512
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]setDLNASkipSeekPreview+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 3514
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3515
    .local v1, reply:Landroid/os/Parcel;
    if-nez p1, :cond_0

    .line 3517
    const/16 v3, 0x22e1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3518
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to false+"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3519
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 3520
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to false-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3524
    :goto_0
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]setDLNASkipSeekPreview-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3539
    :goto_1
    return-void

    .line 3521
    :catch_0
    move-exception v0

    .line 3522
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]setDLNASkipSeekPreview failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3528
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->getWirelessDisplayStatus(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3530
    const/16 v3, 0x22e0

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3531
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to true +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3532
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 3533
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]set DLNASkipSeekPreview to true -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3538
    :cond_1
    :goto_2
    const-string v3, "MediaPlayer"

    const-string v4, "[DLNA]setDLNASkipSeekPreview-"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3534
    :catch_1
    move-exception v0

    .line 3535
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "MediaPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DLNA]setDLNASkipSeekPreview failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "keys"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1136
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1137
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_1

    .line 1138
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v3, :cond_0

    .line 1139
    iget-object v3, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v4, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1146
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1147
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1148
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1149
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 1151
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer;->_setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLPAflag()V
    .locals 5

    .prologue
    .line 1200
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() in"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 1203
    const-string v3, "MediaPlayer"

    const-string v4, "mContext is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :goto_0
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "setLPAflag() out"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    return-void

    .line 1206
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wireless_display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 1207
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_1

    .line 1208
    const-string v3, "MediaPlayer"

    const-string v4, "getSystemService failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1211
    :cond_1
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1212
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1213
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1214
    .local v1, reply:Landroid/os/Parcel;
    const/16 v3, 0x22e0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1217
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to true -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1220
    .end local v1           #reply:Landroid/os/Parcel;
    .end local v2           #request:Landroid/os/Parcel;
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1221
    .restart local v2       #request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1222
    .restart local v1       #reply:Landroid/os/Parcel;
    const/16 v3, 0x22e1

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false +"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 1225
    const-string v3, "MediaPlayer"

    const-string/jumbo v4, "set AwesomePlayer LPA flag to false -"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setWirelessDisplayStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 3061
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/MediaPluginDLNA;->setWirelessDisplayStatus(Landroid/content/Context;Z)V

    .line 3062
    return-void
.end method

.method private start_stop_notify(I)V
    .locals 6
    .parameter "act"

    .prologue
    .line 1287
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1288
    iget-object v3, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/media/MediaPlayer;->sendMediaBroadcast(Landroid/content/Context;I)V

    .line 1318
    :goto_0
    return-void

    .line 1291
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1292
    .local v2, loopMain:Landroid/os/Looper;
    if-nez v2, :cond_1

    .line 1293
    const-string v3, "HtcDeviceInfoManager"

    const-string v4, "MediaPlayer.satr_stop_notify, no main loop!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1314
    .end local v2           #loopMain:Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 1316
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "HtcDeviceInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaPlayer.start_stop_notify, ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1296
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #loopMain:Landroid/os/Looper;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/media/MediaPlayer$1;

    invoke-direct {v1, p0, v2, p1}, Landroid/media/MediaPlayer$1;-><init>(Landroid/media/MediaPlayer;Landroid/os/Looper;I)V

    .line 1312
    .local v1, h:Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 1
    .parameter "awake"

    .prologue
    .line 1513
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->start_stop_notify(I)V

    .line 1517
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1518
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1519
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1524
    :cond_0
    :goto_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    .line 1525
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1526
    return-void

    .line 1513
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1520
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 1530
    iget-object v1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 1532
    :cond_0
    return-void

    .line 1530
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native _attachAuxEffect(I)V
.end method

.method public native _getAudioSessionId()I
.end method

.method public native _getCurrentPosition()I
.end method

.method public native _getDuration()I
.end method

.method public native _getVideoHeight()I
.end method

.method public native _getVideoWidth()I
.end method

.method public native _isLooping()Z
.end method

.method public native _isPlaying()Z
.end method

.method public native _prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAudioSessionId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native _setAudioStreamType(I)V
.end method

.method public native _setAuxEffectSendLevel(F)V
.end method

.method public native _setLooping(Z)V
.end method

.method public native _setVolume(FF)V
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "uri"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2371
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 2372
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2373
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    :cond_1
    :goto_0
    return-void

    .line 2377
    :cond_2
    const/4 v0, 0x0

    .line 2379
    .local v0, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2380
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v3, "r"

    invoke-virtual {v1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2381
    if-nez v0, :cond_3

    .line 2389
    if-eqz v0, :cond_1

    .line 2390
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 2384
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2389
    if-eqz v0, :cond_1

    goto :goto_1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    .line 2390
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 2389
    :cond_4
    throw v3

    .line 2386
    :catch_0
    move-exception v3

    .line 2389
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2387
    :catch_1
    move-exception v3

    .line 2389
    if-eqz v0, :cond_1

    goto :goto_1
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "offset"
    .parameter "length"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2437
    invoke-static {p6}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2438
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mimeType for timed text source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2441
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2442
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2444
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IMediaPlayer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2445
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2446
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 2447
    invoke-virtual {v1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2448
    invoke-virtual {v1, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 2449
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2450
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2452
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2455
    return-void

    .line 2452
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2453
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2452
    throw v2
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2414
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    .line 2415
    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2337
    invoke-static {p2}, Landroid/media/MediaPlayer;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal mimeType for timed text source: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2339
    .local v3, msg:Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2342
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2343
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2344
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2345
    .local v2, is:Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2346
    .local v0, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 2352
    return-void

    .line 2350
    .end local v0           #fd:Ljava/io/FileDescriptor;
    .end local v2           #is:Ljava/io/FileInputStream;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public attachAuxEffect(I)V
    .locals 1
    .parameter "effectId"

    .prologue
    .line 2022
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2025
    :goto_0
    return-void

    .line 2024
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_attachAuxEffect(I)V

    goto :goto_0
.end method

.method public native captureFrame()Landroid/graphics/Bitmap;
.end method

.method public deselectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2504
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2505
    return-void
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1385
    const-string v1, "MediaPlayer"

    const-string v2, "doStart() in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1389
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1390
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAInitDone:Z

    if-eqz v1, :cond_0

    .line 1391
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1}, Landroid/media/MediaPluginDLNA;->handleStart()V

    .line 1393
    :cond_0
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]doStart() out"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :goto_0
    return-void

    .line 1398
    :cond_1
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v0

    .line 1399
    .local v0, testGetParameter:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntParameter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_start()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 2578
    invoke-direct {p0}, Landroid/media/MediaPlayer;->native_finalize()V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1997
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1999
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getAudioSessionId()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 1634
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1635
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleGetCurrentPosition()I

    move-result v0

    .line 1642
    :goto_0
    return v0

    .line 1638
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1642
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1656
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1657
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->getDuration()I

    move-result v0

    .line 1664
    :goto_0
    return v0

    .line 1660
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1664
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getIntParameter(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 2138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2139
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2140
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2141
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2142
    return v1
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 4
    .parameter "update_only"
    .parameter "apply_filter"

    .prologue
    const/4 v2, 0x0

    .line 1688
    iget-boolean v3, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 1704
    :cond_0
    :goto_0
    return-object v0

    .line 1690
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1691
    .local v1, reply:Landroid/os/Parcel;
    new-instance v0, Landroid/media/Metadata;

    invoke-direct {v0}, Landroid/media/Metadata;-><init>()V

    .line 1693
    .local v0, data:Landroid/media/Metadata;
    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPlayer;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1695
    goto :goto_0

    .line 1700
    :cond_2
    invoke-virtual {v0, v1}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    move-object v0, v2

    .line 1702
    goto :goto_0
.end method

.method public getParcelParameter(I)Landroid/os/Parcel;
    .locals 1
    .parameter "key"

    .prologue
    .line 2112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2113
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2114
    return-object v0
.end method

.method public getStringParameter(I)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2125
    .local v0, p:Landroid/os/Parcel;
    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->getParameter(ILandroid/os/Parcel;)V

    .line 2126
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2127
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2128
    return-object v1
.end method

.method public getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2288
    .local v1, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    .local v0, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2291
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2292
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2293
    sget-object v3, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/MediaPlayer$TrackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2296
    .local v2, trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2294
    return-object v2

    .line 2296
    .end local v2           #trackInfo:[Landroid/media/MediaPlayer$TrackInfo;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2296
    throw v3
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 1567
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x140

    .line 1569
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 1547
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e0

    .line 1549
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 4
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 732
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, e:Ljava/lang/Throwable;
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke get exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 0
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 695
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 696
    return-void
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 1921
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1923
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1583
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->isPlaying()Z

    move-result v0

    .line 1589
    :goto_0
    return v0

    .line 1585
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1589
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 2

    .prologue
    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 675
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.media.IMediaPlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 676
    return-object v0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1439
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1440
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1441
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handlePause()V

    .line 1443
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]pause() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    :goto_0
    return-void

    .line 1448
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1449
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_pause()V

    goto :goto_0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1247
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepare()V

    goto :goto_0
.end method

.method public prepareAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1265
    invoke-direct {p0}, Landroid/media/MediaPlayer;->setLPAflag()V

    .line 1268
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1269
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    if-eqz v1, :cond_0

    .line 1270
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaPlayer$DLNAEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1271
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAEventHandler:Landroid/media/MediaPlayer$DLNAEventHandler;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer$DLNAEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1278
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->_prepareAsync()V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1793
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1798
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v2, :cond_1

    .line 1799
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v2, :cond_0

    .line 1800
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]remove mDLNAAgent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v2}, Landroid/media/MediaPluginDLNA;->handleRelease()V

    .line 1802
    iput-object v4, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1804
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    .line 1808
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1809
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1810
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 1811
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1812
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1813
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1814
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1815
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1816
    iput-object v4, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 1817
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_release()V

    .line 1818
    iget v2, p0, Landroid/media/MediaPlayer;->mStreamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1820
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1821
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_2

    .line 1822
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->unregisterBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1827
    .end local v1           #service:Landroid/media/IAudioService;
    :cond_2
    :goto_0
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "release() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return-void

    .line 1823
    :catch_0
    move-exception v0

    .line 1824
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1838
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1843
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1844
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleReset()V

    .line 1846
    iput-object v2, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    .line 1848
    :cond_0
    invoke-direct {p0}, Landroid/media/MediaPlayer;->resetDLNAParameters()V

    .line 1852
    :cond_1
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_reset()V

    .line 1854
    iget-object v0, p0, Landroid/media/MediaPlayer;->mEventHandler:Landroid/media/MediaPlayer$EventHandler;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1855
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "reset() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .parameter "msec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1604
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_1

    .line 1605
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v1, :cond_0

    .line 1606
    iget-object v1, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v1, p1}, Landroid/media/MediaPluginDLNA;->handleSeekTo(I)V

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    if-lez p1, :cond_4

    move v1, p1

    :goto_1
    iput v1, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    .line 1610
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-nez v1, :cond_3

    .line 1611
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    if-nez v1, :cond_3

    .line 1612
    const/16 v1, 0x7d0

    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v0

    .line 1613
    .local v0, contentType:I
    const-string v1, "MediaPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/MediaPlayer;->mPreSeekSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x386

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    if-nez v1, :cond_3

    .line 1615
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->setDLNASkipSeekPreview(Z)V

    .line 1620
    .end local v0           #contentType:I
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_seekTo(I)V

    goto :goto_0

    .line 1609
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public selectTrack(I)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2486
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer;->selectOrDeselectTrack(IZ)V

    .line 2487
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 1981
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 1984
    :goto_0
    return-void

    .line 1983
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAudioSessionId(I)V

    goto :goto_0
.end method

.method public setAudioStreamType(I)V
    .locals 4
    .parameter "streamtype"

    .prologue
    .line 1870
    iput p1, p0, Landroid/media/MediaPlayer;->mStreamType:I

    .line 1873
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v2, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAudioStreamType(I)V

    .line 1876
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 1878
    :try_start_0
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    .line 1879
    .local v1, service:Landroid/media/IAudioService;
    if-eqz v1, :cond_0

    .line 1880
    iget-object v2, p0, Landroid/media/MediaPlayer;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IAudioService;->registerBeatsMediaClient(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1881
    .end local v1           #service:Landroid/media/IAudioService;
    :catch_0
    move-exception v0

    .line 1882
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MediaPlayer"

    const-string v3, "Exception : get AudioService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .parameter "level"

    .prologue
    .line 2161
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2163
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setAuxEffectSendLevel(F)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1001
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1013
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Landroid/media/MediaPlayer;->isDrmUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1014
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1017
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_2

    .line 1018
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1019
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_1

    .line 1020
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1073
    :cond_1
    :goto_0
    return-void

    .line 1023
    :cond_2
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 1024
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1027
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 1028
    .local v8, scheme:Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v0, "file"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1029
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 1033
    :cond_4
    const/4 v6, 0x0

    .line 1035
    .local v6, fd:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1036
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    invoke-virtual {v7, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 1037
    if-nez v6, :cond_5

    .line 1052
    if-eqz v6, :cond_1

    .line 1053
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    .line 1043
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 1044
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 1052
    :goto_2
    if-eqz v6, :cond_1

    goto :goto_1

    .line 1046
    :cond_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1049
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 1052
    if-eqz v6, :cond_7

    .line 1053
    :goto_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1058
    :cond_7
    iput-object p1, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    .line 1059
    if-nez p3, :cond_8

    .line 1060
    new-instance p3, Ljava/util/HashMap;

    .end local p3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 1063
    .restart local p3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1065
    .restart local v7       #resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v7, p3}, Landroid/media/MediaPlayer;->add_mm_headers(Landroid/content/ContentResolver;Ljava/util/Map;)V

    .line 1066
    invoke-direct {p0, p3}, Landroid/media/MediaPlayer;->add_mm_headers_runtime(Ljava/util/Map;)V

    .line 1067
    invoke-direct {p0, v7, p2, p3}, Landroid/media/MediaPlayer;->add_mm_settings(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/Map;)V

    .line 1071
    const-string v0, "MediaPlayer"

    const-string v1, "Couldn\'t open file on client side, trying server side"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1052
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 1053
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1052
    :cond_9
    throw v0

    .line 1050
    :catch_1
    move-exception v0

    .line 1052
    if-eqz v6, :cond_7

    goto :goto_3
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1169
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 1170
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setDataSource(FileDescriptor fd) out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, p0, Landroid/media/MediaPlayer;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1174
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setDataSource(FileDescriptor fd) use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    .line 1181
    :goto_0
    return-void

    .line 1177
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setDataSource(FileDescriptor fd) not use file descriptor directlly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1093
    iput-object p1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    .line 1094
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    iget-object v1, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->handleSetDataSource(Ljava/lang/String;)V

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    invoke-direct {p0, p1, v1, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1115
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1116
    .local v3, keys:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1118
    .local v4, values:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1119
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 1120
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1122
    const/4 v1, 0x0

    .line 1123
    .local v1, i:I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1124
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 1125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v1

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1129
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    invoke-direct {p0, p1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "sh"

    .prologue
    .line 753
    const-string v1, "MediaPlayer"

    const-string v2, "[DLNA]setDisplay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-boolean v1, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v1, :cond_0

    .line 766
    :goto_0
    return-void

    .line 757
    :cond_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 759
    if-eqz p1, :cond_1

    .line 760
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 764
    .local v0, surface:Landroid/view/Surface;
    :goto_1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 765
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    goto :goto_0

    .line 762
    .end local v0           #surface:Landroid/view/Surface;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #surface:Landroid/view/Surface;
    goto :goto_1
.end method

.method public setLooping(Z)V
    .locals 1
    .parameter "looping"

    .prologue
    .line 1902
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1903
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1}, Landroid/media/MediaPluginDLNA;->handleSetLooping(Z)V

    .line 1909
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->_setLooping(Z)V

    goto :goto_0
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1732
    .local p1, allow:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, block:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->newRequest()Landroid/os/Parcel;

    move-result-object v2

    .line 1738
    .local v2, request:Landroid/os/Parcel;
    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v6

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x4

    add-int v0, v4, v5

    .line 1740
    .local v0, capacity:I
    invoke-virtual {v2}, Landroid/os/Parcel;->dataCapacity()I

    move-result v4

    if-ge v4, v0, :cond_0

    .line 1741
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1744
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1746
    .local v3, t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1748
    .end local v3           #t:Ljava/lang/Integer;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1749
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1750
    .restart local v3       #t:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1752
    .end local v3           #t:Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, v2}, Landroid/media/MediaPlayer;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result v4

    return v4
.end method

.method public native setNextMediaPlayer(Landroid/media/MediaPlayer;)V
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2792
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 2793
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2758
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2759
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2940
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 2941
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 3044
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 3045
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2731
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 2732
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2819
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 2820
    return-void
.end method

.method public setOnTimedTextListener(Landroid/media/MediaPlayer$OnTimedTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2880
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnTimedTextListener:Landroid/media/MediaPlayer$OnTimedTextListener;

    .line 2881
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2851
    iput-object p1, p0, Landroid/media/MediaPlayer;->mOnVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 2852
    return-void
.end method

.method public setParameter(II)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2080
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2082
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2083
    return v1
.end method

.method public native setParameter(ILandroid/os/Parcel;)Z
.end method

.method public setParameter(ILjava/lang/String;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2064
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2065
    .local v0, p:Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2066
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer;->setParameter(ILandroid/os/Parcel;)Z

    move-result v1

    .line 2067
    .local v1, ret:Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2068
    return v1
.end method

.method public setRetransmitEndpoint(Ljava/net/InetSocketAddress;)V
    .locals 6
    .parameter "endpoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2561
    const/4 v0, 0x0

    .line 2562
    .local v0, addrString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2564
    .local v1, port:I
    if-eqz p1, :cond_0

    .line 2565
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 2566
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 2569
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer;->native_setRetransmitEndpoint(Ljava/lang/String;I)I

    move-result v2

    .line 2570
    .local v2, ret:I
    if-eqz v2, :cond_1

    .line 2571
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal re-transmit endpoint; native ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2573
    :cond_1
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 2
    .parameter "screenOn"

    .prologue
    .line 1500
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    .line 1501
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1502
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    .line 1505
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    .line 1507
    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 789
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]setSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_0

    .line 800
    :goto_0
    return-void

    .line 791
    :cond_0
    iput-object p1, p0, Landroid/media/MediaPlayer;->mSurface:Landroid/view/Surface;

    .line 794
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 795
    const-string v0, "MediaPlayer"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective for Surface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 798
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->_setVideoSurface(Landroid/view/Surface;)V

    .line 799
    invoke-direct {p0}, Landroid/media/MediaPlayer;->updateSurfaceScreenOn()V

    goto :goto_0
.end method

.method public setVideoScalingMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 843
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer;->isVideoScalingModeSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scaling mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 847
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 848
    .local v2, request:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 850
    .local v1, reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 851
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    invoke-virtual {p0, v2, v1}, Landroid/media/MediaPlayer;->htc_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 855
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 858
    return-void

    .line 855
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 855
    throw v3
.end method

.method public setVolume(FF)V
    .locals 1
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    .line 1944
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1945
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPluginDLNA;->handleSetVolume(FF)V

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1950
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->_setVolume(FF)V

    goto :goto_0
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1472
    const/4 v1, 0x0

    .line 1473
    .local v1, washeld:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 1474
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    const/4 v1, 0x1

    .line 1476
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1478
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1481
    :cond_1
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1482
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-class v3, Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1483
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1484
    if-eqz v1, :cond_2

    .line 1485
    iget-object v2, p0, Landroid/media/MediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1487
    :cond_2
    return-void
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1338
    invoke-direct {p0, v5}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1341
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mForceDisableDLNA:Z

    if-nez v2, :cond_4

    .line 1343
    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    if-eqz v2, :cond_0

    .line 1344
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    .line 1345
    const-string v2, "MediaPlayer"

    const-string/jumbo v3, "start() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :goto_0
    return-void

    .line 1349
    :cond_0
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1351
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->getIntParameter(I)I

    move-result v1

    .line 1352
    .local v1, contentType:I
    const-string v2, "MediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DLNA]contentType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v0, 0x0

    .line 1356
    .local v0, bInitDLNA:Z
    iget-object v2, p0, Landroid/media/MediaPlayer;->mPath:Ljava/lang/String;

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1357
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]Streaming path, should enable DLNA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/4 v0, 0x1

    .line 1362
    :cond_1
    const/16 v2, 0x386

    if-eq v1, v2, :cond_2

    iget-boolean v2, p0, Landroid/media/MediaPlayer;->mUseFileDescriptor:Z

    if-nez v2, :cond_2

    .line 1363
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]Not audio only content, should enable DLNA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    const/4 v0, 0x1

    .line 1367
    :cond_2
    if-eqz v0, :cond_5

    .line 1368
    invoke-direct {p0}, Landroid/media/MediaPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaPluginDLNA;->getWirelessDisplayStatus(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1369
    invoke-direct {p0}, Landroid/media/MediaPlayer;->initDLNA()I

    .line 1373
    :goto_1
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]start() out"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1371
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_1

    .line 1377
    .end local v0           #bInitDLNA:Z
    .end local v1           #contentType:I
    :cond_4
    const-string v2, "MediaPlayer"

    const-string v3, "[DLNA]force disable DLNA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_5
    iput-boolean v5, p0, Landroid/media/MediaPlayer;->mPrepareDone:Z

    .line 1381
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->doStart()V

    goto :goto_0
.end method

.method public native stepFrame(Z)Z
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1414
    iget-boolean v0, p0, Landroid/media/MediaPlayer;->mDLNAMode:Z

    if-eqz v0, :cond_1

    .line 1415
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1416
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Landroid/media/MediaPlayer;->mDLNAAgent:Landroid/media/MediaPluginDLNA;

    invoke-virtual {v0}, Landroid/media/MediaPluginDLNA;->handleStop()V

    .line 1419
    :cond_0
    const-string v0, "MediaPlayer"

    const-string v1, "[DLNA]stop() out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :goto_0
    return-void

    .line 1424
    :cond_1
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer;->stayAwake(Z)V

    .line 1425
    invoke-direct {p0}, Landroid/media/MediaPlayer;->_stop()V

    goto :goto_0
.end method
