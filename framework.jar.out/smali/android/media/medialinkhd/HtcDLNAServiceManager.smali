.class public Landroid/media/medialinkhd/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$HtcDLNAColumn;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$BaseColumn;,
        Landroid/media/medialinkhd/HtcDLNAServiceManager$ImageGroundId;
    }
.end annotation


# static fields
.field public static final ACTION_DESTROY_DLNA_MEDIACONTROLLERS:Ljava/lang/String; = "com.htc.medialinkhd.destroy_dlna_mediacontrollers"

.field public static final ACTION_DMC_DESTROY_NOTIFY_AP:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_destroy_notify"

.field public static final ACTION_DMC_STOP_POSITION:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.action.dmc_stop_position"

.field public static final AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field private static final DISCOVER_TIMEOUT:I = 0x1388

.field public static final DTCP_FILLBUFFER_EOS:I = -0x1

.field public static final DTCP_FILLBUFFER_ERROR:I = -0x2

.field public static final DTCP_MIMETYPE_AUDIO_AAC:Ljava/lang/String; = "audio/adts"

.field public static final DTCP_MIMETYPE_AUDIO_MP3:Ljava/lang/String; = "audio/mpeg"

.field public static final DTCP_MIMETYPE_AUDIO_MP4:Ljava/lang/String; = "audio/mp4"

.field public static final DTCP_MIMETYPE_AUDIO_WMA:Ljava/lang/String; = "audio/x-ms-wma"

.field public static final DTCP_MIMETYPE_VIDEO_AVI:Ljava/lang/String; = "video/x-msvideo"

.field public static final DTCP_MIMETYPE_VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final DTCP_MIMETYPE_VIDEO_MPEG:Ljava/lang/String; = "video/mpeg"

.field public static final DTCP_MIMETYPE_VIDEO_WMV:Ljava/lang/String; = "video/x-ms-wmv"

.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field public static final ERROR_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover Timeout"

.field public static final ERROR_SESSION_DESTROYED_DUE_TO_NO_RESOURCE:I = -0x140

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_UNKNOWN:I = 0x0

.field public static final FILTER_VIDEO:I = 0x4

.field public static final ITEM_TYPE_AUDIO:I = 0x1

.field public static final ITEM_TYPE_FOLDER:I = 0x0

.field public static final ITEM_TYPE_IMAGE:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field public static final ITEM_TYPE_VIDEO:I = 0x4

.field public static final KEY_APP:Ljava/lang/String; = "appName"

.field public static final KEY_CONTROLLER:Ljava/lang/String; = "controllerName"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field public static final KEY_ERRORID:Ljava/lang/String; = "error_id"

.field public static final KEY_ERRORMSG:Ljava/lang/String; = "error_message"

.field public static final KEY_MEDIA:Ljava/lang/String; = "media"

.field public static final KEY_POSITION:Ljava/lang/String; = "position"

.field static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager "

.field private static final MSG_CHANGE_STATE:I = 0x2711

.field private static final MSG_UPDTAE_POS:I = 0x2712

.field static final NOREPEAT:I = 0x0

.field public static final NO_REPEAT:I = 0x0

.field private static final PHOTO_SLIDESHOW_START:I = 0x0

.field private static final PHOTO_SLIDESHOW_STOP:I = 0x1

.field static final REPEATALL:I = 0x1

.field static final REPEATONE:I = 0x2

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_CURRENT:I = 0x2

.field public static final RESPON_DISCOVER_TIMOUT_CODE:I = 0x4e20

.field public static final RESPON_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover DMR success"

.field public static final RESPON_SEEK_ERROR:I = -0x144

.field public static final RESPON_SETAVTRANSPORTURI_ERROR:I = -0x142

.field public static final RESPON_SETAVTRANSPORTURI_SUCCESS:I = -0x141

.field public static final RESPON_SETAVTRANSPORTURI_TIMEOUT:I = -0x143

.field public static final RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP:I = -0x3f1

.field public static final RETURN_CODE_GENERAL_ERROR:I = -0x3ee

.field public static final RETURN_CODE_INVALID_ARGUMENT:I = -0x3ea

.field public static final RETURN_CODE_INVALID_RENDERERID:I = -0x3f0

.field public static final RETURN_CODE_LISTENER_NOT_READY:I = -0x3ec

.field public static final RETURN_CODE_NO_VALID_SESSION_COOKIE:I = -0x3ef

.field public static final RETURN_CODE_OK:I = -0x3e8

.field public static final RETURN_CODE_RENDERER_NOT_READY:I = -0x3eb

.field public static final RETURN_CODE_SAME_RENDERER_ALREADY_EXIST:I = -0x3ed

.field public static final RETURN_CODE_WRONG_STATE:I = -0x3e9

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.htcdlnamiddlelayer.DLNAService"

.field private static final SRV_DTCP:Ljava/lang/String; = "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

.field public static final STATE_AUTOPLAYNEXT:I = 0x3e9

.field public static final STATE_DISCONNECTED:I = 0x9

.field public static final STATE_END:I = 0xa

.field public static final STATE_IDLE:I = 0x8

.field public static final STATE_NO_MEDIA:I = 0x6

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x0

.field public static final STATE_STOPPED:I = 0x1

.field public static final STATE_TRANSITIONING:I = 0x5

.field private static final URI_PREFIX_DEF_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_default?cookie="

.field private static final URI_PREFIX_DEF_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_default?cookie="

.field private static final URI_PREFIX_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_current?cookie="

.field private static final URI_PREFIX_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_current?cookie="


# instance fields
.field private SEEK_THREADHOLD:I

.field private bDTCPGetURI:Z

.field private bIsDTCPPlayEnd:Z

.field private bIsDTCPSupport:Z

.field private bIsDTCPURINext:Z

.field private isDTCPIPContent:Z

.field private mClientSeekTo:I

.field private mContext:Landroid/content/Context;

.field private mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:I

.field private mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

.field private mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

.field private mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

.field private mDTCPServiceConnection:Landroid/content/ServiceConnection;

.field private mFilter:I

.field private mHandler:Landroid/os/Handler;

.field private mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

.field private mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

.field private mMiddleLayerListenerLockObject:Ljava/lang/Object;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field private mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

.field private mRendererId:Ljava/lang/String;

.field private mRunAsSlideShow:Z

.field private mServerID:Ljava/lang/String;

.field private mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mState:Ljava/lang/Integer;

.field private mUriDefRendererGetter:Landroid/net/Uri;

.field private mUriDefRendererSaver:Landroid/net/Uri;

.field private mUriRendererGetter:Landroid/net/Uri;

.field private mUriRendererSaver:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "sessionCookie"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/medialinkhd/CookieException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v1, 0x5

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    .line 988
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 989
    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 990
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 991
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 992
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 993
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 994
    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 996
    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 997
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 998
    iput v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 999
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 1001
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    .line 1002
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 1003
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    .line 1004
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 1006
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 1007
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 1009
    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1012
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    .line 1013
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 1015
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    .line 1017
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 1019
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 1020
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 1021
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 1022
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    .line 1023
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 1024
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 1025
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 1027
    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$1;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    .line 1043
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 1044
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 1094
    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1501
    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$2;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1571
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 1573
    iput p2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 1574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 1575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 1577
    iput p3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1578
    new-instance v1, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1579
    new-instance v1, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    .line 1580
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 1581
    return-void
.end method

.method static synthetic access$000(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    invoke-static {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/media/medialinkhd/HtcDLNAServiceManager;Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method static synthetic access$200(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/medialinkhd/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/media/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 402
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->updatePlayingPosition()V

    return-void
.end method

.method static synthetic access$700(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object v0
.end method

.method static synthetic access$702(Landroid/media/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 402
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object p1
.end method

.method static synthetic access$800(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    return-object v0
.end method

.method private static addConnectedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .line 1703
    if-nez p0, :cond_0

    .line 1718
    :goto_0
    return v2

    .line 1706
    :cond_0
    invoke-static {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1707
    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1708
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[addConnectedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1713
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1716
    .local v1, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_connected_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static addGeneratedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    .line 1640
    if-nez p0, :cond_1

    .line 1651
    :cond_0
    :goto_0
    return v1

    .line 1642
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    .local v0, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_generated_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    if-eqz v0, :cond_0

    .line 1651
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static autoLog()V
    .locals 1

    .prologue
    .line 5401
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5402
    return-void
.end method

.method private static autoLog(Ljava/lang/String;)V
    .locals 4
    .parameter "appendString"

    .prologue
    const/4 v3, 0x4

    .line 5410
    const-string v1, "HtcDLNAServiceManager "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Line: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5413
    return-void

    .line 5410
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkCookieValue(I)Z
    .locals 1
    .parameter "newCookie"

    .prologue
    .line 1774
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 1775
    :cond_0
    const/4 v0, 0x0

    .line 1778
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cleanDataMember()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2233
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 2234
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2235
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 2236
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2237
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 2238
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 2239
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 2240
    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2241
    return-void
.end method

.method private connectDTCPServer(Z)V
    .locals 4
    .parameter "bGetURI"

    .prologue
    .line 1949
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 1950
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 1951
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v0, :cond_0

    .line 1952
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "DTCP Service started!!"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1988
    :goto_0
    return-void

    .line 1955
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string/jumbo v1, "startService(SRV_DTCP)"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1957
    new-instance v0, Landroid/media/medialinkhd/HtcDLNAServiceManager$3;

    invoke-direct {v0, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$3;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 1985
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "bindService(SRV_DTCP)"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method private createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I
    .locals 9
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2538
    const/4 v2, 0x0

    .line 2539
    .local v2, result:I
    :try_start_0
    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v7, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v8, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v2

    .line 2540
    const-string v6, "HtcDLNAServiceManager "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setRenderer] createMediaController result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCookie: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRendererId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 2543
    if-nez v2, :cond_1

    .line 2545
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Set renderer faild with renderer ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    const/16 v4, -0x3ee

    .line 2581
    :goto_0
    return v4

    .line 2549
    :cond_1
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/htcdlnainterface/DLNAControllerStatus;

    move-result-object v3

    .line 2550
    .local v3, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    if-eqz v3, :cond_4

    .line 2551
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1602(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2552
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1702(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z

    .line 2553
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2554
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1902(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2555
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v4, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2002(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2557
    const-string v4, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] Get current DMR init state( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) and set to DLNAManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v0

    .line 2559
    .local v0, dmrState:I
    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    .line 2560
    const/4 v0, 0x1

    .line 2562
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 2563
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer]  setState( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2567
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 2569
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Same renderer id already exists in DLNA Service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2571
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v5

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J
    invoke-static {v4, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2102(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J

    .line 2572
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v5

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J
    invoke-static {v4, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2202(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2581
    .end local v0           #dmrState:I
    .end local v3           #status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :cond_4
    :goto_1
    const/16 v4, -0x3e8

    goto/16 :goto_0

    .line 2576
    :catch_0
    move-exception v1

    .line 2578
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private disconnectDTCPServer(Z)V
    .locals 3
    .parameter "bplayend"

    .prologue
    .line 1992
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-nez v1, :cond_0

    .line 2007
    :goto_0
    return-void

    .line 1995
    :cond_0
    iput-boolean p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 1998
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->stopDTCPServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2004
    :goto_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2006
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    goto :goto_0

    .line 1999
    :catch_0
    move-exception v0

    .line 2001
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static generateNewSessionCookie()I
    .locals 1

    .prologue
    .line 1595
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1597
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static generateNewSessionCookie(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1611
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1612
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1615
    .local v0, cookie:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 1620
    .local v1, myProcessID:I
    return v0
.end method

.method private static getConnectedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1724
    if-nez p0, :cond_0

    const-string v0, ""

    .line 1731
    :goto_0
    return-object v0

    .line 1726
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cookie"

    .prologue
    const/4 v1, 0x0

    .line 5284
    if-nez p0, :cond_1

    move-object v0, v1

    .line 5298
    :cond_0
    :goto_0
    return-object v0

    .line 5287
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5291
    .local v0, currentPlayingFilePath:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getCurrentPlayingFilePath]: content://dlna/dmr_func_get_current_playing_file_path?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5295
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 5298
    goto :goto_0
.end method

.method private static getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1657
    if-nez p0, :cond_0

    const-string v0, ""

    .line 1664
    :goto_0
    return-object v0

    .line 1659
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1662
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_generated_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "contentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3501
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 3502
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3504
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3505
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3507
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3505
    return-object v0

    .line 3507
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRenderer(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 3573
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 3575
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getRenderer]: cookie = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3577
    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3580
    .end local v0           #currentRenderer:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #currentRenderer:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getServiceControlStatus()Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    .locals 5

    .prologue
    .line 3614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3615
    const/4 v1, 0x0

    .line 3619
    .local v1, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3625
    :goto_0
    return-object v1

    .line 3620
    :catch_0
    move-exception v0

    .line 3622
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSlideShowStatus()I
    .locals 6

    .prologue
    .line 4171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4172
    const/4 v1, 0x1

    .line 4173
    .local v1, nRet:I
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 4184
    .end local v1           #nRet:I
    .local v2, nRet:I
    :goto_0
    return v2

    .line 4178
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4183
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSlideShowStatus] result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    move v2, v1

    .line 4184
    .end local v1           #nRet:I
    .restart local v2       #nRet:I
    goto :goto_0

    .line 4179
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :catch_0
    move-exception v0

    .line 4181
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private initMiddleLayerListener()V
    .locals 2

    .prologue
    .line 2274
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2275
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 2277
    new-instance v0, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-direct {v0, p0}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2279
    :cond_0
    monitor-exit v1

    .line 2280
    return-void

    .line 2279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isCookieValid(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1758
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1765
    const/4 v0, 0x1

    return v0
.end method

.method public static isFilePlaying(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 5253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5256
    if-nez p2, :cond_1

    .line 5267
    :cond_0
    :goto_0
    return v2

    .line 5258
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 5259
    .local v0, currentPlayingFilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5261
    const-string/jumbo v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 5262
    .end local v0           #currentPlayingFilePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5264
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 2921
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2922
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 2923
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2924
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2925
    const/4 v4, 0x1

    .line 2927
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPreviousStopAndResetDone(I)Z
    .locals 1
    .parameter "cookie"

    .prologue
    .line 2131
    invoke-static {}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 2133
    const/4 v0, 0x1

    return v0
.end method

.method private isValidState(I)Z
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 5374
    packed-switch p1, :pswitch_data_0

    .line 5389
    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5390
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5385
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 5147
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5148
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5150
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5154
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5156
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5157
    return-void

    .line 5151
    :catch_0
    move-exception v0

    .line 5152
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5154
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private static moveGeneratedCookieToRemovedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .line 1669
    if-nez p0, :cond_0

    .line 1697
    :goto_0
    return v2

    .line 1672
    :cond_0
    invoke-static {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1674
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[moveGeneratedCookieToRemovedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1680
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1682
    .local v1, result:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_generated_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1688
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1694
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://dlna/dmr_func_add_released_cookie?process_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private static removeConnectedCookieInProvider(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1737
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1744
    :goto_0
    return v1

    .line 1739
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1742
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_remove_connected_cookie?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private saveRenderer()Z
    .locals 2

    .prologue
    .line 3513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3514
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "renderer"

    .prologue
    .line 3524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3525
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3526
    :cond_0
    const/4 v1, 0x0

    .line 3530
    :goto_0
    return v1

    .line 3528
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3529
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveRenderer]: content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3530
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private sendErrorMsg(ILjava/lang/String;)I
    .locals 6
    .parameter "error_id"
    .parameter "error_msg"

    .prologue
    const/4 v5, 0x0

    .line 4952
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 4953
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_0

    .line 4954
    monitor-exit v2

    .line 4961
    :goto_0
    return v5

    .line 4955
    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4956
    .local v0, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 4957
    const-string v1, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendErrorMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4958
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 4961
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 4962
    .end local v0           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .parameter "rendererID"
    .parameter "response_id"
    .parameter "response_msg"

    .prologue
    const/4 v5, 0x0

    .line 4977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4991
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v2, :cond_1

    .line 5002
    :cond_0
    :goto_0
    return v5

    .line 4993
    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v1

    .line 4994
    .local v1, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_0

    .line 4995
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendResponseMsg][id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4996
    invoke-virtual {v1, p1, p2, p3}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4998
    .end local v1           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :catch_0
    move-exception v0

    .line 4999
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private unlockCommand()V
    .locals 2

    .prologue
    .line 5160
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5161
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5163
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5165
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5167
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5168
    return-void

    .line 5165
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updatePlayingPosition()V
    .locals 6

    .prologue
    .line 4053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4054
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v1

    .line 4055
    .local v1, position:I
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 4056
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 4057
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_0

    .line 4058
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4059
    .local v0, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 4060
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    .line 4062
    .end local v0           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_0
    monitor-exit v3

    .line 4063
    return-void

    .line 4062
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4651
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4652
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "albumArtDownload : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    :goto_0
    return-void

    .line 4657
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4658
    :catch_0
    move-exception v0

    .line 4660
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    .locals 10
    .parameter "cookie"
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"

    .prologue
    .line 4549
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4550
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browse : invalid mService"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4560
    :goto_0
    return-void

    .line 4555
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    invoke-interface/range {v0 .. v8}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4556
    :catch_0
    move-exception v9

    .line 4558
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "cookie"
    .parameter "serverId"
    .parameter "containerId"
    .parameter "startIndex"

    .prologue
    .line 4603
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4604
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browseCancel : invalid mService"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4614
    :goto_0
    return-void

    .line 4609
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4610
    :catch_0
    move-exception v6

    .line 4612
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelContentThumbnail(II)V
    .locals 3
    .parameter "cookie"
    .parameter "groupID"

    .prologue
    .line 4497
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4498
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "cancelContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4508
    :goto_0
    return-void

    .line 4503
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4504
    :catch_0
    move-exception v0

    .line 4506
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkErrorExists()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4815
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 4818
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkErrorExists] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4833
    :goto_0
    return v1

    .line 4823
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4824
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[checkErrorExists] No error exists."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4827
    :catch_0
    move-exception v0

    .line 4829
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4832
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[checkErrorExists] Error exists."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4833
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public connect()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, -0x3e8

    .line 2290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2292
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 2293
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[connect] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    const/16 v1, -0x3e9

    .line 2325
    :cond_0
    :goto_0
    return v1

    .line 2297
    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-nez v2, :cond_2

    .line 2298
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[connect] please set DLNAServiceStatusListener before connect()."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    const/16 v1, -0x3ec

    goto :goto_0

    .line 2302
    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    .line 2304
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v2, :cond_0

    .line 2305
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2306
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    goto :goto_0

    .line 2311
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request connect service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 2315
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.htcdlnamiddlelayer.DLNAService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2316
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "binder_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2318
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2320
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2323
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    goto :goto_0
.end method

.method public continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    .locals 11
    .parameter "cookie"
    .parameter "serverId"
    .parameter "containerId"
    .parameter "firstIndex"
    .parameter "startIndex"
    .parameter "count"
    .parameter "browsedCount"

    .prologue
    .line 4579
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4580
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "continueBrowseDown : invalid mService"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4590
    :goto_0
    return-void

    .line 4585
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->continueBrowseDown(ILjava/lang/String;Ljava/lang/String;JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4586
    :catch_0
    move-exception v10

    .line 4588
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 7

    .prologue
    const/16 v4, 0x9

    const/4 v6, 0x0

    .line 2438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2440
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 2477
    :cond_0
    :goto_0
    return-void

    .line 2443
    :cond_1
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request disconnect service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2450
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2451
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_3

    .line 2452
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2453
    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    .line 2454
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2456
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2457
    :try_start_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2468
    :goto_1
    iput-object v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2470
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 2471
    :try_start_3
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2472
    .local v0, clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_4

    .line 2473
    invoke-interface {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2474
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2476
    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0           #clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2456
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2458
    :catch_0
    move-exception v1

    .line 2460
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public dtcpFillBuffer(JI[B)I
    .locals 3
    .parameter "id"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 2966
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "mDTCPService.FillBuffer"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->FillBuffer(JI[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2973
    const/16 v1, -0x3e8

    :goto_0
    return v1

    .line 2968
    :catch_0
    move-exception v0

    .line 2970
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2971
    const/16 v1, -0x3e9

    goto :goto_0
.end method

.method public dtcpSetAVTransportPushBufferURI(Ljava/lang/String;J)I
    .locals 4
    .parameter "mimetype"
    .parameter "totalsize"

    .prologue
    const/16 v0, -0x3e9

    .line 3026
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "dtcpSetAVTransportPushBufferURI()"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v1, :cond_0

    .line 3029
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    const/16 v0, -0x3f1

    .line 3062
    :goto_0
    return v0

    .line 3032
    :cond_0
    if-nez p1, :cond_1

    .line 3033
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    const/16 v0, -0x3ea

    goto :goto_0

    .line 3037
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    .line 3038
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3042
    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 3043
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dtcpSetAVTransportPushBufferURI] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3047
    :cond_5
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    if-nez v1, :cond_6

    .line 3048
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[dtcpSetAVTransportPushBufferURI] mDTCPFillBufferCallback == null RETURN_CODE_WRONG_STATE"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3052
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3054
    const-string v0, "HtcDLNAServiceManager "

    const-string/jumbo v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 3056
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 3057
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMetaDataFilePath(Ljava/lang/String;)V

    .line 3058
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p2, p3}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setTotalFileSize(J)V

    .line 3060
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3062
    const/16 v0, -0x3e8

    goto/16 :goto_0
.end method

.method public dtcpSetAVTransportURI(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 2984
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "dtcpSetAVTransportURI()"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 2987
    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v0, :cond_0

    .line 2988
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    const/16 v0, -0x3f1

    .line 3014
    :goto_0
    return v0

    .line 2991
    :cond_0
    if-nez p1, :cond_1

    .line 2992
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    const/16 v0, -0x3ea

    goto :goto_0

    .line 2996
    :cond_1
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_3

    .line 2997
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3001
    :cond_3
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 3002
    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dtcpSetAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3006
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3008
    const-string v0, "HtcDLNAServiceManager "

    const-string/jumbo v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 3010
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 3012
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3014
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public dtcpSetPushBufferCB(Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 3072
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Landroid/media/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 3073
    return-void
.end method

.method public findUsableRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 4
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2617
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2618
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    :cond_0
    :goto_0
    return v0

    .line 2623
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2624
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v0, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2625
    goto :goto_0

    .line 2627
    :cond_2
    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2628
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v0, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2629
    goto :goto_0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4336
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4347
    :cond_0
    :goto_0
    return-object v1

    .line 4341
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 4342
    :catch_0
    move-exception v0

    .line 4344
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4313
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4324
    :cond_0
    :goto_0
    return-object v1

    .line 4318
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 4319
    :catch_0
    move-exception v0

    .line 4321
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"
    .parameter "groupID"

    .prologue
    .line 4521
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4522
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4532
    :goto_0
    return-void

    .line 4527
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4528
    :catch_0
    move-exception v0

    .line 4530
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControllerInfo()Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 6

    .prologue
    .line 4194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4195
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    .line 4196
    :cond_0
    const/4 v1, 0x0

    .line 4234
    :goto_0
    return v1

    .line 4198
    :cond_1
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 4199
    :cond_2
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4200
    const/16 v1, -0x3e9

    goto :goto_0

    .line 4203
    :cond_3
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 4206
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto/16 :goto_0

    .line 4210
    :cond_4
    const/4 v1, 0x0

    .line 4211
    .local v1, position:I
    const/4 v2, 0x0

    .line 4215
    .local v2, positionNegative:Z
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v1, v3

    .line 4221
    :goto_1
    if-gez v1, :cond_5

    .line 4222
    const/4 v1, 0x0

    .line 4223
    const/4 v2, 0x1

    .line 4226
    :cond_5
    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    if-ltz v3, :cond_6

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    if-gt v3, v4, :cond_6

    .line 4227
    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    goto/16 :goto_0

    .line 4216
    :catch_0
    move-exception v0

    .line 4218
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4229
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    const/4 v3, -0x1

    iput v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 4232
    if-nez v2, :cond_7

    move v3, v1

    :goto_2
    iput v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 4233
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4232
    :cond_7
    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto :goto_2
.end method

.method public getCurrentSessionCookie()I
    .locals 2

    .prologue
    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1790
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDMCControlItemInfo(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4696
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4697
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMCControlItemInfo : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4707
    :goto_0
    return-void

    .line 4702
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4703
    :catch_0
    move-exception v0

    .line 4705
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 4118
    const/4 v1, -0x1

    .line 4120
    .local v1, nIndex:I
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 4121
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCCurrentLocalPlayIndex : invalid service"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 4132
    .end local v1           #nIndex:I
    .local v2, nIndex:I
    :goto_0
    return v2

    .line 4126
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 4132
    .end local v1           #nIndex:I
    .restart local v2       #nIndex:I
    goto :goto_0

    .line 4127
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :catch_0
    move-exception v0

    .line 4129
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDMCVolumeControlSupport(ILjava/lang/String;)Z
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 4271
    const/4 v0, 0x1

    .line 4272
    .local v0, bSupport:Z
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 4273
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCVolumeControlSupport : invalid service"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 4284
    .end local v0           #bSupport:Z
    .local v1, bSupport:I
    :goto_0
    return v1

    .line 4278
    .end local v1           #bSupport:I
    .restart local v0       #bSupport:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 4284
    .restart local v1       #bSupport:I
    goto :goto_0

    .line 4279
    .end local v1           #bSupport:I
    :catch_0
    move-exception v2

    .line 4281
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4674
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4675
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMPContentItemDetails : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4685
    :goto_0
    return-void

    .line 4680
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4681
    :catch_0
    move-exception v0

    .line 4683
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5193
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 4247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4248
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4249
    :cond_0
    const/4 v0, 0x0

    .line 4257
    :goto_0
    return v0

    .line 4251
    :cond_1
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4253
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] error state for getPlayingPosition(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4254
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0

    .line 4257
    :cond_2
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2000(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public getErrorId()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4877
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 4878
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4900
    :goto_0
    return v1

    .line 4883
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4884
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4887
    :catch_0
    move-exception v0

    .line 4889
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4892
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    .line 4894
    .local v1, lastErrorId:I
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorId(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 4899
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorId] error ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4895
    :catch_1
    move-exception v0

    .line 4897
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4914
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 4915
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4937
    :goto_0
    return-object v1

    .line 4920
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4921
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError "

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4922
    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4924
    :catch_0
    move-exception v0

    .line 4926
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4929
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, ""

    .line 4931
    .local v1, lastErrorReason:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 4936
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4932
    :catch_1
    move-exception v0

    .line 4934
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorRendererID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 4845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4847
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 4848
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state for getErrorRendererID(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4863
    :goto_0
    return-object v1

    .line 4853
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4854
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[getErrorRendererID] NoError "

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4855
    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4857
    :catch_0
    move-exception v0

    .line 4859
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4862
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error Renderer ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4863
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilter()I
    .locals 1

    .prologue
    .line 5143
    iget v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getHtcDLNARendererDiscoverer()Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method public getItemDetails()Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 4360
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[getItemDetails]"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 4365
    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getItemDetails] error state for getItemDetails(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4390
    :cond_1
    :goto_0
    return-object v0

    .line 4369
    :cond_2
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v3, :cond_1

    .line 4372
    const/4 v0, 0x0

    .line 4375
    .local v0, details:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 4376
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4377
    :try_start_1
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v3, :cond_3

    .line 4378
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v2

    .line 4379
    .local v2, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v2, :cond_3

    .line 4381
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v0}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V

    .line 4384
    .end local v2           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4385
    :catch_0
    move-exception v1

    .line 4387
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 5213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5215
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 5216
    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRenderer] called in wrong state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5235
    :cond_1
    :goto_0
    return-object v2

    .line 5220
    :cond_2
    const/4 v1, 0x0

    .line 5224
    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5230
    :goto_1
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5232
    if-eqz v1, :cond_1

    .line 5233
    invoke-virtual {v1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5225
    :catch_0
    move-exception v0

    .line 5227
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlayingIndex()J
    .locals 8

    .prologue
    .line 4145
    const-wide/16 v1, -0x1

    .line 4146
    .local v1, index:J
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 4158
    .end local v1           #index:J
    .local v3, index:J
    :goto_0
    return-wide v3

    .line 4150
    .end local v3           #index:J
    .restart local v1       #index:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4156
    :goto_1
    const-string v5, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlayingIndex] index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 4158
    .end local v1           #index:J
    .restart local v3       #index:J
    goto :goto_0

    .line 4151
    .end local v3           #index:J
    .restart local v1       #index:J
    :catch_0
    move-exception v0

    .line 4153
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlaylistSize()J
    .locals 8

    .prologue
    .line 4090
    const-wide/16 v1, -0x1

    .line 4091
    .local v1, total:J
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 4103
    .end local v1           #total:J
    .local v3, total:J
    :goto_0
    return-wide v3

    .line 4095
    .end local v3           #total:J
    .restart local v1       #total:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4101
    :goto_1
    const-string v5, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlaylistSize] total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 4103
    .end local v1           #total:J
    .restart local v3       #total:J
    goto :goto_0

    .line 4096
    .end local v3           #total:J
    .restart local v1       #total:J
    :catch_0
    move-exception v0

    .line 4098
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3540
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3542
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 3543
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3555
    :cond_1
    :goto_0
    return-object v0

    .line 3547
    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3548
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0

    .line 3550
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3552
    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move-object v0, v1

    .line 3555
    goto :goto_0
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    .locals 5
    .parameter "rendererId"

    .prologue
    .line 3593
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 3594
    const/4 v1, 0x0

    .line 3609
    :goto_0
    return-object v1

    .line 3597
    :cond_0
    const/4 v1, 0x0

    .line 3601
    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3607
    :goto_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRendererData] rendererData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3602
    :catch_0
    move-exception v0

    .line 3604
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 2

    .prologue
    .line 3923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo.Repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1600(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3924
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1600(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    return v0
.end method

.method public getServerThumbnail(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"

    .prologue
    .line 4475
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4476
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getServerThumbnail : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    :goto_0
    return-void

    .line 4481
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4482
    :catch_0
    move-exception v0

    .line 4484
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 4074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4076
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getState] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStateNameByStateCode(I)Ljava/lang/String;
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 5341
    packed-switch p1, :pswitch_data_0

    .line 5361
    :pswitch_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state code ("

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

    .line 5344
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PLAYING ("

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

    .line 5346
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_STOPPED ("

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

    .line 5348
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_PAUSED ("

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

    .line 5350
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_TRANSITIONING ("

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

    .line 5352
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_NO_MEDIA ("

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

    .line 5354
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_IDLE ("

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

    .line 5356
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_DISCONNECTED ("

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

    .line 5358
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE_END ("

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

    .line 5341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getVolume()I
    .locals 3

    .prologue
    .line 3976
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3977
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVolume] error state for setVolume(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    const/16 v0, -0x3e9

    .line 3982
    :goto_0
    return v0

    .line 3981
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3982
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1800(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4627
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4628
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "imageDownload : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4638
    :goto_0
    return-void

    .line 4633
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4634
    :catch_0
    move-exception v0

    .line 4636
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "cookie"
    .parameter "serverID"
    .parameter "contentID"

    .prologue
    const/4 v1, 0x0

    .line 4452
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4453
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isBrowsingCmdDone: invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4462
    :goto_0
    return v1

    .line 4458
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4459
    :catch_0
    move-exception v0

    .line 4461
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDTCPSupport()Z
    .locals 1

    .prologue
    .line 2952
    const/4 v0, 0x0

    return v0
.end method

.method public isDTCPSupport(JI[B)Z
    .locals 1
    .parameter "id"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 2939
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4296
    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    .line 4297
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getSlideShowStatus()I

    move-result v3

    if-nez v3, :cond_1

    .line 4300
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 4297
    goto :goto_0

    .line 4299
    :cond_2
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 4300
    .local v0, state:I
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isShuffleEnabled()Z
    .locals 5

    .prologue
    .line 4739
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4740
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isShuffleEnabled : invalid mService"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4741
    const/4 v1, 0x0

    .line 4753
    :goto_0
    return v1

    .line 4744
    :cond_0
    const/4 v1, 0x0

    .line 4747
    .local v1, shuffle:Z
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isShuffleEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4748
    :catch_0
    move-exception v0

    .line 4750
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()I
    .locals 5

    .prologue
    .line 3719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3720
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3721
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    const/16 v1, -0x3eb

    .line 3741
    :goto_0
    return v1

    .line 3725
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3726
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[pause] error state for pause(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3730
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause] Request pause"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3732
    :try_start_0
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_3

    .line 3733
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3741
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3735
    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3736
    :catch_0
    move-exception v0

    .line 3738
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3642
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3643
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3644
    const/16 v1, -0x3eb

    .line 3667
    :goto_0
    return v1

    .line 3647
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3648
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3652
    :cond_2
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    if-eqz v1, :cond_3

    .line 3653
    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3656
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play] Request play"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    :try_start_0
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_4

    .line 3659
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3667
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3661
    :cond_4
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3662
    :catch_0
    move-exception v0

    .line 3664
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play(J)I
    .locals 4
    .parameter "index"

    .prologue
    .line 3687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3689
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3690
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    const/16 v1, -0x3eb

    .line 3708
    :goto_0
    return v1

    .line 3694
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3695
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3696
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3699
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] Request play @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3702
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3708
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3703
    :catch_0
    move-exception v0

    .line 3705
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playNext()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 3843
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3844
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    const/16 v1, -0x3eb

    .line 3873
    :goto_0
    return v1

    .line 3848
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3852
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playNext] error status for playNext(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3856
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] Request next"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    :try_start_0
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 3862
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 3873
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3866
    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3868
    :catch_0
    move-exception v0

    .line 3870
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playPrevious()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 3799
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3800
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3801
    const/16 v1, -0x3eb

    .line 3829
    :goto_0
    return v1

    .line 3804
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3808
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playPrevious] error status for playPrevious(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3812
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] Request previous"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3816
    :try_start_0
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 3818
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 3829
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3822
    :cond_3
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3824
    :catch_0
    move-exception v0

    .line 3826
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"
    .parameter "newIndex"
    .parameter "idList"

    .prologue
    .line 2257
    const/4 v0, 0x0

    .line 2258
    .local v0, bRet:Z
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 2259
    const-string v3, "HtcDLNAServiceManager "

    const-string/jumbo v4, "reArrangePushPlaylist : invalid service"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 2269
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 2264
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 2269
    .restart local v1       #bRet:I
    goto :goto_0

    .line 2265
    .end local v1           #bRet:I
    :catch_0
    move-exception v2

    .line 2267
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public refreshRendererList()V
    .locals 3

    .prologue
    .line 4402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4403
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4414
    :goto_0
    return-void

    .line 4408
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4409
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4410
    :catch_0
    move-exception v0

    .line 4412
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshServerList()V
    .locals 3

    .prologue
    .line 4426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4427
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4438
    :goto_0
    return-void

    .line 4432
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4433
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4434
    :catch_0
    move-exception v0

    .line 4436
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()I
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2164
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2165
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[release] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3e9

    .line 2229
    :goto_0
    return v2

    .line 2168
    :cond_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2171
    .local v0, currentState:I
    invoke-virtual {p0, v6, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2174
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 2176
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_2

    .line 2177
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2178
    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2184
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2189
    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 2192
    :try_start_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2193
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2196
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    .line 2197
    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2199
    :goto_2
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2202
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2209
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2210
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2224
    :cond_4
    :goto_3
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[release] unbindService."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :cond_5
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->cleanDataMember()V

    .line 2229
    const/16 v2, -0x3e8

    goto :goto_0

    .line 2180
    :catch_0
    move-exception v1

    .line 2182
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2184
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2198
    :cond_6
    :try_start_4
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 2211
    :catch_1
    move-exception v1

    .line 2213
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public reset()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2028
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 2029
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const/16 v1, -0x3e9

    .line 2049
    :goto_0
    return v1

    .line 2033
    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2034
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2038
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] call mService.destroyMediaController(mCookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRendererId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2040
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    :goto_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v4, v5}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2049
    const/16 v1, -0x3e8

    goto :goto_0

    .line 2041
    :catch_0
    move-exception v0

    .line 2043
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public runAsSlideShow()V
    .locals 0

    .prologue
    .line 5204
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "rendererId"

    .prologue
    .line 5180
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveDefaultRenderer] string:content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5181
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 5182
    .local v0, result:Ljava/lang/String;
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public seekTo(I)I
    .locals 6
    .parameter "timeSecs"

    .prologue
    .line 3885
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3887
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3888
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] error state for seekTo(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    const/16 v1, -0x3e9

    .line 3911
    :goto_0
    return v1

    .line 3892
    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 3893
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[seekTo], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3897
    :cond_2
    if-gez p1, :cond_3

    .line 3898
    const/4 p1, 0x0

    .line 3900
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] Request seekTo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3903
    :try_start_0
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 3905
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    int-to-long v4, p1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3911
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3906
    :catch_0
    move-exception v0

    .line 3908
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setAVTransportURI(Ljava/lang/String;)I
    .locals 7
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    const/16 v0, -0x3ea

    .line 3300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3302
    if-nez p1, :cond_0

    .line 3303
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    :goto_0
    return v0

    .line 3307
    :cond_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 3308
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3312
    :cond_2
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 3313
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3314
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3317
    :cond_4
    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3318
    iput-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3320
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setAVTransportURI] path= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    :try_start_0
    const-string/jumbo v1, "rtsp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3324
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "Not support rtsp streaming."

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3335
    :catch_0
    move-exception v6

    .line 3337
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3340
    .end local v6           #e:Landroid/os/RemoteException;
    :goto_1
    const/16 v0, -0x3e8

    goto/16 :goto_0

    .line 3328
    :cond_5
    :try_start_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3329
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3330
    :cond_6
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3331
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3333
    :cond_7
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAutoReleaseAfterPlayCompleted(Z)I
    .locals 5
    .parameter "autoRelease"

    .prologue
    .line 5316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5318
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 5319
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setAutoReleaseAfterPlayCompleted] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5320
    const/16 v2, -0x3e9

    .line 5330
    :goto_0
    return v2

    .line 5324
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setAutoReleaseAfterPlayCompleted(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5325
    .local v1, result:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v2, -0x3e8

    goto :goto_0

    .line 5326
    .end local v1           #result:Z
    :catch_0
    move-exception v0

    .line 5328
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5330
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/16 v2, -0x3ee

    goto :goto_0
.end method

.method public setBrowseThumbSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 5076
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 5077
    const-string v2, "HtcDLNAServiceManager "

    const-string/jumbo v3, "setBrowseThumbSize invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5086
    :goto_0
    return v1

    .line 5082
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setBrowseThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5083
    :catch_0
    move-exception v0

    .line 5085
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setClientSeekTo(I)V
    .locals 0
    .parameter "clientSeekTo"

    .prologue
    .line 1801
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 1802
    return-void
.end method

.method public setControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1914
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setControllerStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    const/16 v0, -0x3e9

    .line 1923
    :goto_0
    return v0

    .line 1917
    :cond_0
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1918
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1919
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 1920
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAControllerStatusListener(Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;)V

    .line 1922
    :cond_1
    monitor-exit v1

    .line 1923
    const/16 v0, -0x3e8

    goto :goto_0

    .line 1922
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDLNAServiceStatusListener(Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1938
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1939
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDLNAServiceStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const/16 v0, -0x3e9

    .line 1944
    :goto_0
    return v0

    .line 1943
    :cond_0
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 1944
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setDMCThumbSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 5032
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 5033
    const-string v2, "HtcDLNAServiceManager "

    const-string/jumbo v3, "setDMCThumbSize invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5042
    :goto_0
    return v1

    .line 5038
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5039
    :catch_0
    move-exception v0

    .line 5041
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDMPAlbumArtSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 5054
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 5055
    const-string v2, "HtcDLNAServiceManager "

    const-string/jumbo v3, "setDMPAlbumArtSize invalid service"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5064
    :goto_0
    return v1

    .line 5060
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMPAlbumArtSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5061
    :catch_0
    move-exception v0

    .line 5063
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDTCPIPDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 3261
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3276
    :cond_0
    :goto_0
    return-void

    .line 3264
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDTCPIPDataSource] DLNAPushMediaInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3267
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3271
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3272
    :catch_0
    move-exception v0

    .line 3274
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource([II)I
    .locals 9
    .parameter "pushList"
    .parameter "startIndex"

    .prologue
    .line 3444
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3445
    :cond_0
    const/16 v0, -0x3ea

    .line 3457
    :goto_0
    return v0

    .line 3446
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3447
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] pushList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", start index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1f40

    :goto_1
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3457
    :goto_2
    const/16 v0, -0x3e8

    goto :goto_0

    .line 3451
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 3452
    :catch_0
    move-exception v8

    .line 3454
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 3393
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3414
    :cond_0
    :goto_0
    return-void

    .line 3396
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3403
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDataSource] MediaFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getThumbFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3410
    :catch_0
    move-exception v6

    .line 3412
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3409
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3139
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3155
    :cond_0
    :goto_0
    return-void

    .line 3142
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] DLNARemotePlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    invoke-direct {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3145
    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3149
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->getServerID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3150
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3151
    :catch_0
    move-exception v0

    .line 3153
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"

    .prologue
    const/4 v1, 0x0

    .line 3098
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3115
    :cond_0
    :goto_0
    return-void

    .line 3104
    :cond_1
    invoke-direct {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3105
    iput-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3109
    :try_start_0
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3110
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3111
    :catch_0
    move-exception v6

    .line 3113
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPListSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3222
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3237
    :cond_0
    :goto_0
    return-void

    .line 3225
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPListSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    invoke-direct {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3228
    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3232
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3233
    :catch_0
    move-exception v0

    .line 3235
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPSingleSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3181
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3196
    :cond_0
    :goto_0
    return-void

    .line 3184
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPSingleSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    invoke-direct {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3187
    iput-boolean v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3191
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3192
    :catch_0
    move-exception v0

    .line 3194
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaTypeFiler(I)I
    .locals 3
    .parameter "filter"

    .prologue
    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1847
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1848
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const/16 v0, -0x3e9

    .line 1853
    :goto_0
    return v0

    .line 1851
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] filter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    iput p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1853
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    .line 5016
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 5017
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5022
    :cond_0
    :goto_0
    return-void

    .line 5018
    :catch_0
    move-exception v0

    .line 5020
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRenderer(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I
    .locals 6
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/16 v2, -0x3ee

    .line 2497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2500
    if-nez p1, :cond_1

    const/16 v2, -0x3ea

    .line 2531
    :cond_0
    :goto_0
    return v2

    .line 2502
    :cond_1
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setRenderer] renderId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statusBarData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 2505
    :cond_2
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    const/16 v2, -0x3e9

    goto :goto_0

    .line 2509
    :cond_3
    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->checkCookieValue(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 2510
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRenderer] Please set valid session cookie first."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    const/16 v2, -0x3ef

    goto :goto_0

    .line 2517
    :cond_4
    :try_start_0
    iput-object p1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 2518
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v1

    .line 2519
    .local v1, result:I
    if-eq v1, v2, :cond_0

    .line 2521
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v3

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1502(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2523
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->saveRenderer()Z

    .line 2525
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2531
    .end local v1           #result:I
    :goto_1
    const/16 v2, -0x3e8

    goto/16 :goto_0

    .line 2526
    :catch_0
    move-exception v0

    .line 2528
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 5
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    .line 2866
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2867
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    :cond_0
    :goto_0
    return v1

    .line 2872
    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    .line 2876
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v0

    .line 2877
    .local v0, renderID:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2879
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsDefaultRenderer] no default renderer available"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2883
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsDefaultRenderer] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    .line 2888
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    .line 2889
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 2890
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;

    invoke-direct {v2, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$5;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 2914
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    .line 2665
    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 1
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    .line 2699
    invoke-virtual {p0, p1, p2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    .line 2734
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 5
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    const/4 v1, 0x0

    .line 2770
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2771
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    :cond_0
    :goto_0
    return v1

    .line 2775
    :cond_1
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] statusBarData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 2783
    .local v0, info:Lcom/htc/service/DongleInfo;
    if-eqz v0, :cond_0

    .line 2785
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2787
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 2788
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    :goto_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    .line 2800
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 2805
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Landroid/media/medialinkhd/HtcDLNAServiceManager$4;

    invoke-direct {v2, p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager$4;-><init>(Landroid/media/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Landroid/media/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 2830
    const/4 v1, 0x1

    goto :goto_0

    .line 2789
    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2792
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 2793
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2795
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle IP!!"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setRendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1870
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const/16 v0, -0x3e9

    .line 1881
    :goto_0
    return v0

    .line 1874
    :cond_0
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1875
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1876
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 1877
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNARendererStatusListener(Landroid/media/medialinkhd/HtcDLNARendererStatusListener;)V

    .line 1879
    :cond_1
    monitor-exit v1

    .line 1881
    const/16 v0, -0x3e8

    goto :goto_0

    .line 1879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeat(I)I
    .locals 4
    .parameter "repeatMode"

    .prologue
    .line 3472
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3473
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3474
    const/16 v1, -0x3e9

    .line 3495
    :goto_0
    return v1

    .line 3477
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 3478
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] unknown repeat mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    const/16 v1, -0x3ea

    goto :goto_0

    .line 3482
    :cond_2
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_4

    .line 3483
    :cond_3
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3485
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] Request setRepeat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3495
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3490
    :catch_0
    move-exception v0

    .line 3492
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setServerStatusListener(Landroid/media/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 2
    .parameter "serverListener"

    .prologue
    .line 1893
    invoke-direct {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1894
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1895
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_0

    .line 1896
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAServerStatusListener(Landroid/media/medialinkhd/HtcDLNAServerStatusListener;)V

    .line 1898
    :cond_0
    monitor-exit v1

    .line 1899
    return-void

    .line 1898
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffle(Z)V
    .locals 4
    .parameter "shuffle"

    .prologue
    .line 4717
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4718
    const-string v1, "HtcDLNAServiceManager "

    const-string/jumbo v2, "setShuffle : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4728
    :goto_0
    return-void

    .line 4723
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4724
    :catch_0
    move-exception v0

    .line 4726
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected declared-synchronized setState(IZZ)V
    .locals 8
    .parameter "newState"
    .parameter "fromMiddleLayer"
    .parameter "notifyUser"

    .prologue
    const/4 v7, 0x1

    .line 3996
    monitor-enter p0

    :try_start_0
    const-string v3, "HtcDLNAServiceManager "

    const-string/jumbo v4, "setState call stack:"

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3997
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Step 1] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3998
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Step 2] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Step 3] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4001
    invoke-virtual {p0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v2

    .line 4002
    .local v2, statePrev:I
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] >>> newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4004
    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4007
    const/16 v3, 0x3e8

    if-ne p1, v3, :cond_0

    .line 4010
    const/4 p1, 0x1

    .line 4012
    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 4016
    :cond_0
    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_2

    .line 4017
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 4020
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v3

    if-ne v3, v7, :cond_3

    .line 4021
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 4022
    const-string v3, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setState] mControllerInfo.setPlayState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 4025
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4027
    :try_start_2
    invoke-direct {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-ne v3, v7, :cond_4

    .line 4028
    if-eq v2, p1, :cond_5

    .line 4037
    :try_start_3
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v3, :cond_4

    .line 4038
    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v3}, Landroid/media/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v1

    .line 4039
    .local v1, listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v1, :cond_4

    .line 4040
    invoke-virtual {v1, p1}, Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 4049
    .end local v1           #listener:Landroid/media/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 4025
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3996
    .end local v2           #statePrev:I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 4042
    .restart local v2       #statePrev:I
    :catch_0
    move-exception v0

    .line 4043
    .local v0, e:Ljava/lang/NullPointerException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 4046
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_5
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] statePrev == newState == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "link"
    .parameter "title"
    .parameter "thumbnail"

    .prologue
    const/4 v2, 0x0

    .line 3354
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 3369
    :cond_0
    :goto_0
    return-void

    .line 3357
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    invoke-direct {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3360
    iput-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3364
    :try_start_0
    iget-object v0, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3365
    :catch_0
    move-exception v6

    .line 3367
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    .line 3938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3940
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3941
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume] error state for setVolume(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3942
    const/16 v1, -0x3e9

    .line 3966
    :goto_0
    return v1

    .line 3945
    :cond_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    .line 3946
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setVolume], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3950
    :cond_3
    if-ltz p1, :cond_4

    const/16 v1, 0x64

    if-le p1, v1, :cond_5

    .line 3951
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume], Invalid volume scalar("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), range is from 0 to 100."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    const/16 v1, -0x3ea

    goto :goto_0

    .line 3955
    :cond_5
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume] Request volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v1, p1}, Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Landroid/media/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 3960
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3966
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3961
    :catch_0
    move-exception v0

    .line 3963
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stop()I
    .locals 7

    .prologue
    const/16 v1, -0x3e8

    const/4 v6, 0x1

    .line 3752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3755
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 3756
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stop] error state for stop(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    const/16 v1, -0x3e9

    .line 3785
    :goto_0
    return v1

    .line 3760
    :cond_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 3761
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] AP call stop() in STATE_STOPPED, return RETURN_CODE_OK directly."

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3765
    :cond_2
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_4

    .line 3766
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[stop], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3767
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3771
    :cond_4
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] Request stop"

    invoke-static {v2, v3}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    :try_start_0
    iget-boolean v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_5

    .line 3774
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3777
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3783
    :goto_2
    invoke-direct {p0, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    goto :goto_0

    .line 3776
    :cond_5
    :try_start_1
    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3778
    :catch_0
    move-exception v0

    .line 3780
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public stopAndReset()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2079
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v7, :cond_0

    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2083
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stopAndReset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    const/16 v1, -0x3e9

    .line 2119
    :goto_0
    return v1

    .line 2092
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2093
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2096
    iget-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_2

    .line 2097
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2100
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2103
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2109
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2110
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2111
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2117
    :goto_2
    invoke-virtual {p0, v7, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2119
    const/16 v1, -0x3e8

    goto :goto_0

    .line 2099
    :cond_2
    :try_start_1
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2112
    :catch_0
    move-exception v0

    .line 2114
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public subscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    .line 5100
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5101
    const-string v1, "HtcDLNAServiceManager "

    const-string/jumbo v2, "subscribeServer : invalid servce"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5111
    :goto_0
    return-void

    .line 5106
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->subscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5107
    :catch_0
    move-exception v0

    .line 5109
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistNextItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4767
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4768
    const-string v1, "HtcDLNAServiceManager "

    const-string/jumbo v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4778
    :goto_0
    return-void

    .line 4773
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4774
    :catch_0
    move-exception v0

    .line 4776
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistPrevItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4791
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4792
    const-string v1, "HtcDLNAServiceManager "

    const-string/jumbo v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4802
    :goto_0
    return-void

    .line 4797
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4798
    :catch_0
    move-exception v0

    .line 4800
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    .line 5122
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5123
    const-string v1, "HtcDLNAServiceManager "

    const-string/jumbo v2, "unsubscribeServer : invalid servce"

    invoke-static {v1, v2}, Landroid/media/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5133
    :goto_0
    return-void

    .line 5128
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unsubscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5129
    :catch_0
    move-exception v0

    .line 5131
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
