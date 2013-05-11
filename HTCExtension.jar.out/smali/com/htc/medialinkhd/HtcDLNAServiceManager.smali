.class public Lcom/htc/medialinkhd/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$HtcDLNAColumn;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$BaseColumn;,
        Lcom/htc/medialinkhd/HtcDLNAServiceManager$ImageGroundId;
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

.field private mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:I

.field private mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

.field private mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

.field private mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

.field private mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

.field private mDTCPServiceConnection:Landroid/content/ServiceConnection;

.field private mFilter:I

.field private mHandler:Landroid/os/Handler;

.field private mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

.field private mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

.field private mMiddleLayerListenerLockObject:Ljava/lang/Object;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field private mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

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
            Lcom/htc/medialinkhd/CookieException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    .line 989
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 990
    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 991
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 992
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 993
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 994
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 995
    iput v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 997
    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 998
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 999
    iput v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 1000
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 1002
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    .line 1003
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 1004
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    .line 1005
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 1007
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 1008
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 1010
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceServiceConnection;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1013
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    .line 1014
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 1016
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    .line 1019
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    .line 1020
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 1022
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 1023
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 1024
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 1025
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    .line 1026
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 1027
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 1028
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 1030
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$1;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    .line 1046
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 1047
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 1097
    iput-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1516
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$2;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    .line 1567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1586
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 1588
    iput p2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 1590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 1592
    iput p3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1593
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    .line 1594
    new-instance v1, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    .line 1595
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 1596
    return-void
.end method

.method static synthetic access$000(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 403
    invoke-static {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 403
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/medialinkhd/HtcDLNAServiceManager;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 403
    invoke-direct {p0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/htc/htcdlnainterface/IDLNAPluginService;)Lcom/htc/htcdlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->updatePlayingPosition()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/medialinkhd/HtcDLNAServiceManager;Lcom/awox/dtcpmiddlelayer/IDTCPService;)Lcom/awox/dtcpmiddlelayer/IDTCPService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceCB:Lcom/awox/dtcpmiddlelayer/IDTCPServiceCB$Stub;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    return-object v0
.end method

.method private static addConnectedCookieInProvider(Landroid/content/Context;II)Z
    .locals 5
    .parameter "context"
    .parameter "cookie"
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .line 1718
    if-nez p0, :cond_0

    .line 1733
    :goto_0
    return v2

    .line 1721
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1722
    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1723
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[addConnectedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1728
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

    .line 1731
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    const-string v2, "true"

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

    .line 1655
    if-nez p0, :cond_1

    .line 1666
    :cond_0
    :goto_0
    return v1

    .line 1657
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

    .line 1660
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    if-eqz v0, :cond_0

    .line 1666
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static autoLog()V
    .locals 1

    .prologue
    .line 5636
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5637
    return-void
.end method

.method private static autoLog(Ljava/lang/String;)V
    .locals 4
    .parameter "appendString"

    .prologue
    const/4 v3, 0x4

    .line 5645
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

    invoke-static {v1, v0}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5648
    return-void

    .line 5645
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
    .line 1789
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-ne p1, v0, :cond_1

    .line 1790
    :cond_0
    const/4 v0, 0x0

    .line 1793
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

    .line 2248
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 2249
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2250
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    .line 2251
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2252
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 2253
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 2254
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 2255
    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2256
    return-void
.end method

.method private connectDTCPServer(Z)V
    .locals 4
    .parameter "bGetURI"

    .prologue
    .line 1964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 1965
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bDTCPGetURI:Z

    .line 1966
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-eqz v0, :cond_0

    .line 1967
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "DTCP Service started!!"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    :goto_0
    return-void

    .line 1970
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "startService(SRV_DTCP)"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1972
    new-instance v0, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;

    invoke-direct {v0, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$3;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    .line 2000
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "bindService(SRV_DTCP)"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.awox.dtcpmiddlelayer.AwoxDTCPServerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

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

    .line 2554
    const/4 v2, 0x0

    .line 2555
    .local v2, result:I
    :try_start_0
    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v8, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v2

    .line 2556
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

    iget v8, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mRendererId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 2559
    if-nez v2, :cond_1

    .line 2561
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Set renderer faild with renderer ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    const/16 v4, -0x3ee

    .line 2597
    :goto_0
    return v4

    .line 2565
    :cond_1
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/htcdlnainterface/DLNAControllerStatus;

    move-result-object v3

    .line 2566
    .local v3, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    if-eqz v3, :cond_4

    .line 2567
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getRepeatState()I

    move-result v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1602(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2568
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getShuffle()Z

    move-result v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1702(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Z)Z

    .line 2569
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getVolumeValue()I

    move-result v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2570
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRendererId:Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1902(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 2571
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getDuration()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v4, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2002(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2573
    const-string v4, "HtcDLNAServiceManager "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] Get current DMR init state( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ) and set to DLNAManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2574
    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurDMRPlayState()I

    move-result v0

    .line 2575
    .local v0, dmrState:I
    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_2

    .line 2576
    const/4 v0, 0x1

    .line 2578
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 2579
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer]  setState( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2583
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 2585
    const-string v4, "HtcDLNAServiceManager "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setRenderer] Same renderer id already exists in DLNA Service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 2587
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getCurrentIndex()J

    move-result-wide v5

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mIndex:J
    invoke-static {v4, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2102(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J

    .line 2588
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v3}, Lcom/htc/htcdlnainterface/DLNAControllerStatus;->getTotalCount()J

    move-result-wide v5

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mTotal:J
    invoke-static {v4, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2202(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2597
    .end local v0           #dmrState:I
    .end local v3           #status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :cond_4
    :goto_1
    const/16 v4, -0x3e8

    goto/16 :goto_0

    .line 2592
    :catch_0
    move-exception v1

    .line 2594
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private disconnectDTCPServer(Z)V
    .locals 3
    .parameter "bplayend"

    .prologue
    .line 2007
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    if-nez v1, :cond_0

    .line 2022
    :goto_0
    return-void

    .line 2010
    :cond_0
    iput-boolean p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    .line 2013
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->stopDTCPServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :goto_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2021
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    goto :goto_0

    .line 2014
    :catch_0
    move-exception v0

    .line 2016
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static generateNewSessionCookie()I
    .locals 1

    .prologue
    .line 1610
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1612
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static generateNewSessionCookie(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1626
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1627
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1630
    .local v0, cookie:I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 1635
    .local v1, myProcessID:I
    return v0
.end method

.method private static getConnectedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1739
    if-nez p0, :cond_0

    const-string v0, ""

    .line 1746
    :goto_0
    return-object v0

    .line 1741
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

    .line 1744
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cookie"

    .prologue
    const/4 v1, 0x0

    .line 5519
    if-nez p0, :cond_1

    move-object v0, v1

    .line 5533
    :cond_0
    :goto_0
    return-object v0

    .line 5522
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

    .line 5526
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5530
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 5533
    goto :goto_0
.end method

.method private static getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1672
    if-nez p0, :cond_0

    const-string v0, ""

    .line 1679
    :goto_0
    return-object v0

    .line 1674
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

    .line 1677
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "contentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3522
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

    .line 3523
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3525
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3526
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3528
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

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
    .line 3594
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 3596
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
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

    .line 3598
    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3601
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
    .line 3635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3636
    const/4 v1, 0x0

    .line 3640
    .local v1, status:Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/htcdlnainterface/DLNAControllerStatus;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3646
    :goto_0
    return-object v1

    .line 3641
    :catch_0
    move-exception v0

    .line 3643
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getSlideShowStatus()I
    .locals 6

    .prologue
    .line 4183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4184
    const/4 v1, 0x1

    .line 4185
    .local v1, nRet:I
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 4196
    .end local v1           #nRet:I
    .local v2, nRet:I
    :goto_0
    return v2

    .line 4190
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4195
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

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    move v2, v1

    .line 4196
    .end local v1           #nRet:I
    .restart local v2       #nRet:I
    goto :goto_0

    .line 4191
    .end local v2           #nRet:I
    .restart local v1       #nRet:I
    :catch_0
    move-exception v0

    .line 4193
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private initMiddleLayerListener()V
    .locals 2

    .prologue
    .line 2289
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 2290
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 2292
    new-instance v0, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-direct {v0, p0}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2294
    :cond_0
    monitor-exit v1

    .line 2295
    return-void

    .line 2294
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
    .line 1773
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 1780
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

    .line 5488
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

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5491
    if-nez p2, :cond_1

    .line 5502
    :cond_0
    :goto_0
    return v2

    .line 5493
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getCurrentPlayingFilePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 5494
    .local v0, currentPlayingFilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 5496
    const-string v3, "utf-8"

    invoke-static {p2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 5497
    .end local v0           #currentPlayingFilePath:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 5499
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 2943
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2944
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 2945
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

    .line 2946
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2947
    const/4 v4, 0x1

    .line 2949
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public static isPreviousStopAndResetDone(I)Z
    .locals 1
    .parameter "cookie"

    .prologue
    .line 2146
    invoke-static {}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog()V

    .line 2148
    const/4 v0, 0x1

    return v0
.end method

.method private isValidState(I)Z
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 5609
    packed-switch p1, :pswitch_data_0

    .line 5624
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

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5625
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5620
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5609
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
    .line 5382
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5383
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5385
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5389
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5391
    :goto_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5392
    return-void

    .line 5386
    :catch_0
    move-exception v0

    .line 5387
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5389
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

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

    .line 1684
    if-nez p0, :cond_0

    .line 1712
    :goto_0
    return v2

    .line 1687
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getGeneratedCookieInProvider(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, generatedCookie:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1689
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[moveGeneratedCookieToRemovedCookieInProvider], cookie not found in GeneratedCookie"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1695
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

    .line 1697
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
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

    .line 1703
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
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

    .line 1709
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method private static removeConnectedCookieInProvider(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "cookie"

    .prologue
    .line 1752
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 1759
    :goto_0
    return v1

    .line 1754
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

    .line 1757
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private saveRenderer()Z
    .locals 2

    .prologue
    .line 3534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3535
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "renderer"

    .prologue
    .line 3545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3546
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3547
    :cond_0
    const/4 v1, 0x0

    .line 3551
    :goto_0
    return v1

    .line 3549
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

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

    .line 3550
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveRenderer]: content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    const-string v1, "true"

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

    .line 5156
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 5157
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_0

    .line 5158
    monitor-exit v2

    .line 5165
    :goto_0
    return v5

    .line 5159
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 5160
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 5161
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

    invoke-static {v1, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5162
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    .line 5165
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 5166
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
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

    .line 5181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5183
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 5184
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_0

    .line 5185
    monitor-exit v2

    .line 5192
    :goto_0
    return v5

    .line 5186
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 5187
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_1

    .line 5188
    const-string v1, "HtcDLNAServiceManager "

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

    invoke-static {v1, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5189
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    .line 5192
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 5193
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private unlockCommand()V
    .locals 2

    .prologue
    .line 5395
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5396
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5398
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5400
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5402
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5403
    return-void

    .line 5400
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private updatePlayingPosition()V
    .locals 6

    .prologue
    .line 4065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4066
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v1

    .line 4067
    .local v1, position:I
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1502(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 4068
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 4069
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_0

    .line 4070
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4071
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 4072
    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    .line 4074
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_0
    monitor-exit v3

    .line 4075
    return-void

    .line 4074
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
    .line 4808
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4809
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "albumArtDownload : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4819
    :goto_0
    return-void

    .line 4814
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4815
    :catch_0
    move-exception v0

    .line 4817
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public albumArtDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4831
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4832
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "albumArtDownload : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4843
    :goto_0
    return-void

    .line 4837
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[albumArtDownload] : serverId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4838
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4839
    :catch_0
    move-exception v0

    .line 4841
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
    .line 4654
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4655
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browse : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4665
    :goto_0
    return-void

    .line 4660
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

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

    .line 4661
    :catch_0
    move-exception v9

    .line 4663
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browse(Ljava/lang/String;Ljava/lang/String;JIJ)V
    .locals 12
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "count"
    .parameter "boundary"

    .prologue
    .line 4681
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4682
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "browse : invalid mService"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4693
    :goto_0
    return-void

    .line 4687
    :cond_0
    :try_start_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[browse] serverID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", containerID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", boundary:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4688
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-interface/range {v2 .. v10}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4689
    :catch_0
    move-exception v11

    .line 4691
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "cookie"
    .parameter "serverId"
    .parameter "containerId"
    .parameter "startIndex"

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4737
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browseCancel : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4747
    :goto_0
    return-void

    .line 4742
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4743
    :catch_0
    move-exception v6

    .line 4745
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public browseCancel(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "serverId"
    .parameter "containerId"
    .parameter "startIndex"

    .prologue
    .line 4759
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4760
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "browseCancel : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4771
    :goto_0
    return-void

    .line 4765
    :cond_0
    :try_start_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[browseCancel] : serverId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", containerId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4767
    :catch_0
    move-exception v6

    .line 4769
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelContentThumbnail(I)V
    .locals 4
    .parameter "groupID"

    .prologue
    .line 4577
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4578
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "cancelContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4589
    :goto_0
    return-void

    .line 4583
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[cancelContentThumbnail] groupID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4584
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4585
    :catch_0
    move-exception v0

    .line 4587
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelContentThumbnail(II)V
    .locals 3
    .parameter "cookie"
    .parameter "groupID"

    .prologue
    .line 4556
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4557
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "cancelContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    :goto_0
    return-void

    .line 4562
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4563
    :catch_0
    move-exception v0

    .line 4565
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkErrorExists()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5017
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5019
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 5022
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkErrorExists] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5037
    :goto_0
    return v1

    .line 5027
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5028
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[checkErrorExists] No error exists."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5031
    :catch_0
    move-exception v0

    .line 5033
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5036
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[checkErrorExists] Error exists."

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5037
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public connect()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v1, -0x3e8

    .line 2305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2307
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    .line 2308
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[connect] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2309
    const/16 v1, -0x3e9

    .line 2340
    :cond_0
    :goto_0
    return v1

    .line 2312
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-nez v2, :cond_2

    .line 2313
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[connect] please set DLNAServiceStatusListener before connect()."

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2314
    const/16 v1, -0x3ec

    goto :goto_0

    .line 2317
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    .line 2319
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v2, :cond_0

    .line 2320
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2321
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    goto :goto_0

    .line 2326
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request connect service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 2330
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.htcdlnamiddlelayer.DLNAService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2331
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "binder_name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2333
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2335
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2338
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

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
    .line 4712
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 4713
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "continueBrowseDown : invalid mService"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4723
    :goto_0
    return-void

    .line 4718
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

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

    .line 4719
    :catch_0
    move-exception v10

    .line 4721
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 7

    .prologue
    const/16 v4, 0x9

    const/4 v6, 0x0

    .line 2455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2457
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 2493
    :cond_0
    :goto_0
    return-void

    .line 2460
    :cond_1
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "Request disconnect service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2467
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2468
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_3

    .line 2469
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2470
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    .line 2471
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    .line 2473
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2474
    :try_start_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2484
    :goto_1
    iput-object v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    .line 2486
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 2487
    :try_start_3
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2488
    .local v0, clientListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_4

    .line 2489
    invoke-interface {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 2490
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 2492
    :cond_4
    monitor-exit v3

    goto :goto_0

    .end local v0           #clientListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2473
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

    .line 2475
    :catch_0
    move-exception v1

    .line 2476
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
    .line 2987
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "mDTCPService.FillBuffer"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPService:Lcom/awox/dtcpmiddlelayer/IDTCPService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/awox/dtcpmiddlelayer/IDTCPService;->FillBuffer(JI[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2994
    const/16 v1, -0x3e8

    :goto_0
    return v1

    .line 2989
    :catch_0
    move-exception v0

    .line 2991
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2992
    const/16 v1, -0x3e9

    goto :goto_0
.end method

.method public dtcpSetAVTransportPushBufferURI(Ljava/lang/String;J)I
    .locals 4
    .parameter "mimetype"
    .parameter "totalsize"

    .prologue
    const/16 v0, -0x3e9

    .line 3047
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "dtcpSetAVTransportPushBufferURI()"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v1, :cond_0

    .line 3050
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    const/16 v0, -0x3f1

    .line 3083
    :goto_0
    return v0

    .line 3053
    :cond_0
    if-nez p1, :cond_1

    .line 3054
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    const/16 v0, -0x3ea

    goto :goto_0

    .line 3058
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    .line 3059
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportPushBufferURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3063
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 3064
    :cond_4
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dtcpSetAVTransportPushBufferURI] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3068
    :cond_5
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    if-nez v1, :cond_6

    .line 3069
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[dtcpSetAVTransportPushBufferURI] mDTCPFillBufferCallback == null RETURN_CODE_WRONG_STATE"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3073
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3075
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3076
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 3077
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 3078
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMetaDataFilePath(Ljava/lang/String;)V

    .line 3079
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p2, p3}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setTotalFileSize(J)V

    .line 3081
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3083
    const/16 v0, -0x3e8

    goto/16 :goto_0
.end method

.method public dtcpSetAVTransportURI(Ljava/lang/String;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 3005
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "dtcpSetAVTransportURI()"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 3008
    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPSupport:Z

    if-nez v0, :cond_0

    .line 3009
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] RETURN_CODE_DEVICE_NOT_SUPPORT_DTCPIP"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3010
    const/16 v0, -0x3f1

    .line 3035
    :goto_0
    return v0

    .line 3012
    :cond_0
    if-nez p1, :cond_1

    .line 3013
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    const/16 v0, -0x3ea

    goto :goto_0

    .line 3017
    :cond_1
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_3

    .line 3018
    :cond_2
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[dtcpSetAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3022
    :cond_3
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 3023
    :cond_4
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dtcpSetAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3027
    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3029
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "new DLNAPushMediaInfo"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    new-instance v0, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-direct {v0}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;-><init>()V

    iput-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    .line 3031
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMediaInfo:Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;

    invoke-virtual {v0, p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->setMediaFilePath(Ljava/lang/String;)V

    .line 3033
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3035
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public dtcpSetPushBufferCB(Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 3093
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDTCPFillBufferCallback:Lcom/htc/medialinkhd/HtcDLNADTCPFillBufferCallback;

    .line 3094
    return-void
.end method

.method public findUsableRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 4
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2633
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 2634
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    :cond_0
    :goto_0
    return v0

    .line 2639
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2640
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v0, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2641
    goto :goto_0

    .line 2643
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2644
    const-string v0, "HtcDLNAServiceManager "

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v0, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 2645
    goto :goto_0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4347
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4358
    :cond_0
    :goto_0
    return-object v1

    .line 4352
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 4353
    :catch_0
    move-exception v0

    .line 4355
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4324
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    .line 4335
    :cond_0
    :goto_0
    return-object v1

    .line 4329
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 4330
    :catch_0
    move-exception v0

    .line 4332
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
    .line 4602
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4603
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4613
    :goto_0
    return-void

    .line 4608
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4609
    :catch_0
    move-exception v0

    .line 4611
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getContentThumbnail(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "groupID"

    .prologue
    .line 4625
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4626
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getContentThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4637
    :goto_0
    return-void

    .line 4631
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getContentThumbnail] serverID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getContentThumbnail(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4633
    :catch_0
    move-exception v0

    .line 4635
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControllerInfo()Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;
    .locals 1

    .prologue
    .line 1849
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 6

    .prologue
    .line 4206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4207
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v3, :cond_1

    .line 4208
    :cond_0
    const/4 v1, 0x0

    .line 4246
    :goto_0
    return v1

    .line 4210
    :cond_1
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 4211
    :cond_2
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4212
    const/16 v1, -0x3e9

    goto :goto_0

    .line 4215
    :cond_3
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 4218
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] error state for getCurrentPosition(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return pos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto/16 :goto_0

    .line 4222
    :cond_4
    const/4 v1, 0x0

    .line 4223
    .local v1, position:I
    const/4 v2, 0x0

    .line 4227
    .local v2, positionNegative:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    long-to-int v1, v3

    .line 4233
    :goto_1
    if-gez v1, :cond_5

    .line 4234
    const/4 v1, 0x0

    .line 4235
    const/4 v2, 0x1

    .line 4238
    :cond_5
    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    if-gt v3, v4, :cond_6

    .line 4239
    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    goto/16 :goto_0

    .line 4228
    :catch_0
    move-exception v0

    .line 4230
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 4241
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_6
    const/4 v3, -0x1

    iput v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 4244
    if-nez v2, :cond_7

    move v3, v1

    :goto_2
    iput v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 4245
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getCurrentPosition] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4244
    :cond_7
    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    goto :goto_2
.end method

.method public getCurrentSessionCookie()I
    .locals 2

    .prologue
    .line 1804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1805
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDMCControlItemInfo(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4900
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4901
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMCControlItemInfo : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    :goto_0
    return-void

    .line 4906
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4907
    :catch_0
    move-exception v0

    .line 4909
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 4130
    const/4 v1, -0x1

    .line 4132
    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 4133
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCCurrentLocalPlayIndex : invalid service"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    .line 4144
    .end local v1           #nIndex:I
    .local v2, nIndex:I
    :goto_0
    return v2

    .line 4138
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCCurrentLocalPlayIndex(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 4144
    .end local v1           #nIndex:I
    .restart local v2       #nIndex:I
    goto :goto_0

    .line 4139
    .end local v2           #nIndex:I
    .restart local v1       #nIndex:I
    :catch_0
    move-exception v0

    .line 4141
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDMCVolumeControlSupport(ILjava/lang/String;)Z
    .locals 5
    .parameter "cookie"
    .parameter "rendererID"

    .prologue
    .line 4283
    const/4 v0, 0x1

    .line 4284
    .local v0, bSupport:Z
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 4285
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "getDMCVolumeControlSupport : invalid service"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 4296
    .end local v0           #bSupport:Z
    .local v1, bSupport:I
    :goto_0
    return v1

    .line 4290
    .end local v1           #bSupport:I
    .restart local v0       #bSupport:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCVolumeControlSupport(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 4296
    .restart local v1       #bSupport:I
    goto :goto_0

    .line 4291
    .end local v1           #bSupport:I
    :catch_0
    move-exception v2

    .line 4293
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
    .line 4855
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4856
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMPContentItemDetails : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4866
    :goto_0
    return-void

    .line 4861
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4862
    :catch_0
    move-exception v0

    .line 4864
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDMPContentItemDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4877
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4878
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getDMPContentItemDetails : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4889
    :goto_0
    return-void

    .line 4883
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getDMPContentItemDetails] : serverId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4884
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4885
    :catch_0
    move-exception v0

    .line 4887
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5428
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4260
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 4261
    :cond_0
    const/4 v0, 0x0

    .line 4269
    :goto_0
    return v0

    .line 4263
    :cond_1
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 4265
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCurrentPosition] error state for getPlayingPosition(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2000(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0

    .line 4269
    :cond_2
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mDuration:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$2000(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public getErrorId()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5081
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 5082
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    :goto_0
    return v1

    .line 5087
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5088
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5091
    :catch_0
    move-exception v0

    .line 5093
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5096
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v1, 0x0

    .line 5098
    .local v1, lastErrorId:I
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorId(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 5103
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5099
    :catch_1
    move-exception v0

    .line 5101
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5118
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 5119
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getErrorReason] error state for getErrorReason(), current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5141
    :goto_0
    return-object v1

    .line 5124
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5125
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[getErrorReason] NoError "

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5126
    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5128
    :catch_0
    move-exception v0

    .line 5130
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5133
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, ""

    .line 5135
    .local v1, lastErrorReason:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getLastErrorReason(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 5140
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5136
    :catch_1
    move-exception v0

    .line 5138
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getErrorRendererID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 5049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5051
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 5052
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error state for getErrorReason(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state for getErrorRendererID(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5067
    :goto_0
    return-object v1

    .line 5057
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->checkErrorExists(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5058
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[getErrorRendererID] NoError "

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5059
    const-string v1, "No errror."
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5061
    :catch_0
    move-exception v0

    .line 5063
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5066
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getErrorRendererID] error Renderer ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5067
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFilter()I
    .locals 1

    .prologue
    .line 5378
    iget v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getHtcDLNARendererDiscoverer()Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;
    .locals 1

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    return-object v0
.end method

.method public getItemDetails()Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 4371
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "[getItemDetails]"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 4376
    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getItemDetails] error state for getItemDetails(), current state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4401
    :cond_1
    :goto_0
    return-object v0

    .line 4380
    :cond_2
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v3, :cond_1

    .line 4383
    const/4 v0, 0x0

    .line 4386
    .local v0, details:Lcom/htc/htcdlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 4387
    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4388
    :try_start_1
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v3, :cond_3

    .line 4389
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v3}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v2

    .line 4390
    .local v2, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v2, :cond_3

    .line 4392
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v0}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/htcdlnainterface/DLNAContentItemDetails;)V

    .line 4395
    .end local v2           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
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

    .line 4396
    :catch_0
    move-exception v1

    .line 4398
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 5448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5450
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 5451
    :cond_0
    const-string v3, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getRenderer] called in wrong state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5470
    :cond_1
    :goto_0
    return-object v2

    .line 5455
    :cond_2
    const/4 v1, 0x0

    .line 5459
    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 5465
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

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5467
    if-eqz v1, :cond_1

    .line 5468
    invoke-virtual {v1}, Lcom/htc/htcdlnainterface/DLNARendererData;->getRendererId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5460
    :catch_0
    move-exception v0

    .line 5462
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlayingIndex()J
    .locals 8

    .prologue
    .line 4157
    const-wide/16 v1, -0x1

    .line 4158
    .local v1, index:J
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 4170
    .end local v1           #index:J
    .local v3, index:J
    :goto_0
    return-wide v3

    .line 4162
    .end local v3           #index:J
    .restart local v1       #index:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4168
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

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 4170
    .end local v1           #index:J
    .restart local v3       #index:J
    goto :goto_0

    .line 4163
    .end local v3           #index:J
    .restart local v1       #index:J
    :catch_0
    move-exception v0

    .line 4165
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlaylistSize()J
    .locals 8

    .prologue
    .line 4102
    const-wide/16 v1, -0x1

    .line 4103
    .local v1, total:J
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 4115
    .end local v1           #total:J
    .local v3, total:J
    :goto_0
    return-wide v3

    .line 4107
    .end local v3           #total:J
    .restart local v1       #total:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4113
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

    invoke-static {v5, v6}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 4115
    .end local v1           #total:J
    .restart local v3       #total:J
    goto :goto_0

    .line 4108
    .end local v3           #total:J
    .restart local v1       #total:J
    :catch_0
    move-exception v0

    .line 4110
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3563
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 3564
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 3576
    :cond_1
    :goto_0
    return-object v0

    .line 3568
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 3569
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    goto :goto_0

    .line 3571
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getRenderer]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3573
    .local v0, currentRenderer:Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_4
    move-object v0, v1

    .line 3576
    goto :goto_0
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    .locals 5
    .parameter "rendererId"

    .prologue
    .line 3614
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 3615
    const/4 v1, 0x0

    .line 3630
    :goto_0
    return-object v1

    .line 3618
    :cond_0
    const/4 v1, 0x0

    .line 3622
    .local v1, rendererData:Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/htcdlnainterface/DLNARendererData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3628
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3623
    :catch_0
    move-exception v0

    .line 3625
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public getRendererId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatState()I
    .locals 2

    .prologue
    .line 3944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControllerInfo.Repeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1600(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3945
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1600(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    return v0
.end method

.method public getServerThumbnail(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverID"

    .prologue
    .line 4512
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4513
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getServerThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4523
    :goto_0
    return-void

    .line 4518
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4519
    :catch_0
    move-exception v0

    .line 4521
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServerThumbnail(Ljava/lang/String;)V
    .locals 4
    .parameter "serverID"

    .prologue
    .line 4533
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4534
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "getServerThumbnail : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4545
    :goto_0
    return-void

    .line 4539
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getServerThumbnail] serverID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4540
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerThumbnail(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4541
    :catch_0
    move-exception v0

    .line 4543
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 4086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4088
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getState] state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4089
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStateNameByStateCode(I)Ljava/lang/String;
    .locals 3
    .parameter "stateCode"

    .prologue
    .line 5576
    packed-switch p1, :pswitch_data_0

    .line 5596
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

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5597
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

    .line 5579
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

    .line 5581
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

    .line 5583
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

    .line 5585
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

    .line 5587
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

    .line 5589
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

    .line 5591
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

    .line 5593
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

    .line 5576
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
    .line 3997
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3998
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getVolume] error state for setVolume(), current state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    const/16 v0, -0x3e9

    .line 4003
    :goto_0
    return v0

    .line 4002
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4003
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #getter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1800(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;)I

    move-result v0

    goto :goto_0
.end method

.method public imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"
    .parameter "contentId"

    .prologue
    .line 4784
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4785
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "imageDownload : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4795
    :goto_0
    return-void

    .line 4790
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->imageDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4791
    :catch_0
    move-exception v0

    .line 4793
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

    .line 4463
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4464
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isBrowsingCmdDone: invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4473
    :goto_0
    return v1

    .line 4469
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4470
    :catch_0
    move-exception v0

    .line 4472
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isBrowsingCmdDone(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "serverID"
    .parameter "contentID"

    .prologue
    const/4 v1, 0x0

    .line 4488
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4489
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isBrowsingCmdDone: invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4499
    :goto_0
    return v1

    .line 4494
    :cond_0
    :try_start_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isBrowsingCmdDone] serverID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contentID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cookie:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4495
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4496
    :catch_0
    move-exception v0

    .line 4498
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isDTCPSupport()Z
    .locals 2

    .prologue
    .line 2969
    const-string v1, "ro.service.dpsvr.enabled"

    invoke-static {v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2970
    .local v0, dpsvr:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2971
    const/4 v1, 0x1

    .line 2973
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDTCPSupport(JI[B)Z
    .locals 1
    .parameter "id"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPSupport()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4308
    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    .line 4309
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getSlideShowStatus()I

    move-result v3

    if-nez v3, :cond_1

    .line 4312
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 4309
    goto :goto_0

    .line 4311
    :cond_2
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 4312
    .local v0, state:I
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isShuffleEnabled()Z
    .locals 5

    .prologue
    .line 4943
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 4944
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "isShuffleEnabled : invalid mService"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4945
    const/4 v1, 0x0

    .line 4957
    :goto_0
    return v1

    .line 4948
    :cond_0
    const/4 v1, 0x0

    .line 4951
    .local v1, shuffle:Z
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->isShuffleEnabled(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4952
    :catch_0
    move-exception v0

    .line 4954
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public pause()I
    .locals 5

    .prologue
    .line 3740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3741
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3742
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    const/16 v1, -0x3eb

    .line 3762
    :goto_0
    return v1

    .line 3746
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    .line 3747
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[pause] error state for pause(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3748
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3751
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[pause] Request pause"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3753
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_3

    .line 3754
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3762
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3756
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3757
    :catch_0
    move-exception v0

    .line 3759
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3663
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3664
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3665
    const/16 v1, -0x3eb

    .line 3688
    :goto_0
    return v1

    .line 3668
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3669
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3670
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3673
    :cond_2
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPPlayEnd:Z

    if-eqz v1, :cond_3

    .line 3674
    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->connectDTCPServer(Z)V

    .line 3677
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play] Request play"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3679
    :try_start_0
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_4

    .line 3680
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3688
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3682
    :cond_4
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3683
    :catch_0
    move-exception v0

    .line 3685
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public play(J)I
    .locals 4
    .parameter "index"

    .prologue
    .line 3708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3710
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3711
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[play], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    const/16 v1, -0x3eb

    .line 3729
    :goto_0
    return v1

    .line 3715
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 3716
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[play] error state for play(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3720
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3729
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3724
    :catch_0
    move-exception v0

    .line 3726
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playNext()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 3864
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3865
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3866
    const/16 v1, -0x3eb

    .line 3894
    :goto_0
    return v1

    .line 3869
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3873
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playNext] error status for playNext(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3877
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playNext] Request next"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 3883
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 3894
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3887
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3889
    :catch_0
    move-exception v0

    .line 3891
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public playPrevious()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 3820
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 3821
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] null == mService || !mRendererCreated"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    const/16 v1, -0x3eb

    .line 3850
    :goto_0
    return v1

    .line 3825
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3829
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[playPrevious] error status for playPrevious(), current status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3830
    const/16 v1, -0x3e9

    goto :goto_0

    .line 3833
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[playPrevious] Request previous"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3837
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRepeatState()I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 3839
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    .line 3850
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3843
    :cond_3
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3845
    :catch_0
    move-exception v0

    .line 3847
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
    .line 2272
    const/4 v0, 0x0

    .line 2273
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v3, :cond_0

    .line 2274
    const-string v3, "HtcDLNAServiceManager "

    const-string v4, "reArrangePushPlaylist : invalid service"

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 2284
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 2279
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reArrangePushPlaylist(ILjava/lang/String;I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 2284
    .restart local v1       #bRet:I
    goto :goto_0

    .line 2280
    .end local v1           #bRet:I
    :catch_0
    move-exception v2

    .line 2282
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public refreshRendererList()V
    .locals 3

    .prologue
    .line 4413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4414
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4425
    :goto_0
    return-void

    .line 4419
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4420
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4421
    :catch_0
    move-exception v0

    .line 4423
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshServerList()V
    .locals 3

    .prologue
    .line 4437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 4438
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4449
    :goto_0
    return-void

    .line 4443
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 4444
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getServerList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4445
    :catch_0
    move-exception v0

    .line 4447
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

    .line 2177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2179
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 2180
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[release] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, -0x3e9

    .line 2244
    :goto_0
    return v2

    .line 2183
    :cond_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2186
    .local v0, currentState:I
    invoke-virtual {p0, v6, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2189
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3

    .line 2191
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_2

    .line 2192
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/htcdlnainterface/IDLNAPluginNotify;)V

    .line 2193
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->reset()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2204
    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    .line 2207
    :try_start_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2208
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2211
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    .line 2212
    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2214
    :goto_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2217
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2224
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2225
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2239
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[release] unbindService."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    :cond_5
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->cleanDataMember()V

    .line 2244
    const/16 v2, -0x3e8

    goto :goto_0

    .line 2195
    :catch_0
    move-exception v1

    .line 2197
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2199
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2213
    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 2226
    :catch_1
    move-exception v1

    .line 2228
    .restart local v1       #e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public reset()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2043
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 2044
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    const/16 v1, -0x3e9

    .line 2064
    :goto_0
    return v1

    .line 2048
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2053
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[reset] call mService.destroyMediaController(mCookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRendererId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2055
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    :goto_1
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v4, v5}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2064
    const/16 v1, -0x3e8

    goto :goto_0

    .line 2056
    :catch_0
    move-exception v0

    .line 2058
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public runAsSlideShow()V
    .locals 0

    .prologue
    .line 5439
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "rendererId"

    .prologue
    .line 5415
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveDefaultRenderer] string:content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5416
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

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

    .line 5417
    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public seekTo(I)I
    .locals 6
    .parameter "timeSecs"

    .prologue
    .line 3906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3908
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3909
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[seekTo] error state for seekTo(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3910
    const/16 v1, -0x3e9

    .line 3932
    :goto_0
    return v1

    .line 3913
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 3914
    :cond_1
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[seekTo], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3915
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3918
    :cond_2
    if-gez p1, :cond_3

    .line 3919
    const/4 p1, 0x0

    .line 3921
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3924
    :try_start_0
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 3926
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    int-to-long v4, p1

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3932
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3927
    :catch_0
    move-exception v0

    .line 3929
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

    .line 3321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3323
    if-nez p1, :cond_0

    .line 3324
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setAVTransportURI] path == null, RETURN_CODE_INVALID_ARGUMENT"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3361
    :goto_0
    return v0

    .line 3328
    :cond_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 3329
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setAVTransportURI] null == mService || !mRendererCreated, RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3330
    const/16 v0, -0x3eb

    goto :goto_0

    .line 3333
    :cond_2
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 3334
    :cond_3
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setAVTransportURI] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    const/16 v0, -0x3e9

    goto :goto_0

    .line 3338
    :cond_4
    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3339
    iput-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3341
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    :try_start_0
    const-string v1, "rtsp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3345
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "Not support rtsp streaming."

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3356
    :catch_0
    move-exception v6

    .line 3358
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3361
    .end local v6           #e:Landroid/os/RemoteException;
    :goto_1
    const/16 v0, -0x3e8

    goto/16 :goto_0

    .line 3349
    :cond_5
    :try_start_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3350
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3351
    :cond_6
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3352
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3354
    :cond_7
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAutoReleaseAfterPlayCompleted(Z)I
    .locals 5
    .parameter "autoRelease"

    .prologue
    .line 5551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 5553
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 5554
    :cond_0
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setAutoReleaseAfterPlayCompleted] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5555
    const/16 v2, -0x3e9

    .line 5565
    :goto_0
    return v2

    .line 5559
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setAutoReleaseAfterPlayCompleted(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5560
    .local v1, result:Z
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v2, -0x3e8

    goto :goto_0

    .line 5561
    .end local v1           #result:Z
    :catch_0
    move-exception v0

    .line 5563
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 5565
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

    .line 5267
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 5268
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setBrowseThumbSize invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5277
    :goto_0
    return v1

    .line 5273
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setBrowseThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5274
    :catch_0
    move-exception v0

    .line 5276
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setClientSeekTo(I)V
    .locals 0
    .parameter "clientSeekTo"

    .prologue
    .line 1816
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mClientSeekTo:I

    .line 1817
    return-void
.end method

.method public setControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1928
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1929
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setControllerStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    const/16 v0, -0x3e9

    .line 1938
    :goto_0
    return v0

    .line 1932
    :cond_0
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1933
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1934
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 1935
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAControllerStatusListener(Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;)V

    .line 1937
    :cond_1
    monitor-exit v1

    .line 1938
    const/16 v0, -0x3e8

    goto :goto_0

    .line 1937
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDLNAServiceStatusListener(Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1953
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1954
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDLNAServiceStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    const/16 v0, -0x3e9

    .line 1959
    :goto_0
    return v0

    .line 1958
    :cond_0
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 1959
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setDMCThumbSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 5223
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 5224
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setDMCThumbSize invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5233
    :goto_0
    return v1

    .line 5229
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCThumbSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5230
    :catch_0
    move-exception v0

    .line 5232
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDMPAlbumArtSize(Ljava/lang/String;)Z
    .locals 4
    .parameter "sizeSequence"

    .prologue
    const/4 v1, 0x0

    .line 5245
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 5246
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setDMPAlbumArtSize invalid service"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5255
    :goto_0
    return v1

    .line 5251
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMPAlbumArtSize(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 5252
    :catch_0
    move-exception v0

    .line 5254
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDTCPIPDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 3282
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3297
    :cond_0
    :goto_0
    return-void

    .line 3285
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3292
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3293
    :catch_0
    move-exception v0

    .line 3295
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource([II)I
    .locals 9
    .parameter "pushList"
    .parameter "startIndex"

    .prologue
    .line 3465
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3466
    :cond_0
    const/16 v0, -0x3ea

    .line 3478
    :goto_0
    return v0

    .line 3467
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3468
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

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1f40

    :goto_1
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3478
    :goto_2
    const/16 v0, -0x3e8

    goto :goto_0

    .line 3472
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1

    .line 3473
    :catch_0
    move-exception v8

    .line 3475
    .local v8, e:Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public setDataSource(Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3435
    :cond_0
    :goto_0
    return-void

    .line 3417
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

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3423
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNAPushMediaInfo;->getMediaFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3424
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

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

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

    .line 3431
    :catch_0
    move-exception v6

    .line 3433
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3430
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

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

    .line 3160
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3176
    :cond_0
    :goto_0
    return-void

    .line 3163
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    invoke-direct {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3166
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3170
    :try_start_0
    invoke-virtual {p1}, Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;->getServerID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3171
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNARemotePlaylistInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3172
    :catch_0
    move-exception v0

    .line 3174
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

    .line 3119
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 3136
    :cond_0
    :goto_0
    return-void

    .line 3125
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3126
    iput-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3130
    :try_start_0
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 3131
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3132
    :catch_0
    move-exception v6

    .line 3134
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPListSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3243
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3258
    :cond_0
    :goto_0
    return-void

    .line 3246
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3248
    invoke-direct {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3249
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3253
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3254
    :catch_0
    move-exception v0

    .line 3256
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPSingleSource(Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 3202
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 3217
    :cond_0
    :goto_0
    return-void

    .line 3205
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    invoke-direct {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3208
    iput-boolean v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3212
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/htcdlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3213
    :catch_0
    move-exception v0

    .line 3215
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMediaTypeFiler(I)I
    .locals 3
    .parameter "filter"

    .prologue
    .line 1861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1862
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1863
    :cond_0
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setMediaTypeFiler] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const/16 v0, -0x3e9

    .line 1868
    :goto_0
    return v0

    .line 1866
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

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    iput p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mFilter:I

    .line 1868
    const/16 v0, -0x3e8

    goto :goto_0
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    .line 5207
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 5208
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5213
    :cond_0
    :goto_0
    return-void

    .line 5209
    :catch_0
    move-exception v0

    .line 5211
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

    .line 2513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2516
    if-nez p1, :cond_1

    const/16 v2, -0x3ea

    .line 2547
    :cond_0
    :goto_0
    return v2

    .line 2518
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

    invoke-static {v3, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 2521
    :cond_2
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRenderer] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    const/16 v2, -0x3e9

    goto :goto_0

    .line 2525
    :cond_3
    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-direct {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->checkCookieValue(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 2526
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRenderer] Please set valid session cookie first."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    const/16 v2, -0x3ef

    goto :goto_0

    .line 2533
    :cond_4
    :try_start_0
    iput-object p1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 2534
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->createMediaControllerAndSetControllerInfo(Ljava/lang/String;Lcom/htc/htcdlnainterface/DLNAStatusBarData;)I

    move-result v1

    .line 2535
    .local v1, result:I
    if-eq v1, v2, :cond_0

    .line 2537
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v3

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mPosition:I
    invoke-static {v2, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1502(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 2539
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->saveRenderer()Z

    .line 2541
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    .end local v1           #result:I
    :goto_1
    const/16 v2, -0x3e8

    goto/16 :goto_0

    .line 2542
    :catch_0
    move-exception v0

    .line 2544
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 6
    .parameter "statusBarData"

    .prologue
    const/16 v5, -0x4000

    const/4 v1, 0x0

    .line 2884
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 2885
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dont start discover, just send discover timeout error to AP."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    :goto_0
    return v1

    .line 2890
    :cond_0
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v2, :cond_1

    .line 2891
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsReadyDongle] error: mService is null!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2892
    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 2897
    :cond_1
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v0

    .line 2898
    .local v0, renderID:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2900
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsDefaultRenderer] no default renderer available, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 2905
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2909
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, v0}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    .line 2910
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    .line 2911
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 2912
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/medialinkhd/HtcDLNAServiceManager$5;

    invoke-direct {v2, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$5;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 2936
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    .line 2681
    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z

    move-result v0

    return v0
.end method

.method public setRendererAsMediaLinkHD(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 1
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    .line 2715
    invoke-virtual {p0, p1, p2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)Z
    .locals 1
    .parameter "statusBarData"

    .prologue
    .line 2750
    const/16 v0, 0x1388

    invoke-virtual {p0, p1, v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z

    move-result v0

    return v0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/htcdlnainterface/DLNAStatusBarData;I)Z
    .locals 6
    .parameter "statusBarData"
    .parameter "timeoutMs"

    .prologue
    const/16 v5, -0x4000

    const/4 v1, 0x0

    .line 2786
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    .line 2787
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] called in wrong state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dont start discover, just send discover timeout error to AP."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    :goto_0
    return v1

    .line 2791
    :cond_0
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

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2798
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 2799
    .local v0, info:Lcom/htc/service/DongleInfo;
    if-nez v0, :cond_1

    .line 2800
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsReadyDongle] error: mService is null!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 2803
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 2805
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 2806
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/medialinkhd/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2817
    :goto_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, p1}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setStatusBarData(Lcom/htc/htcdlnainterface/DLNAStatusBarData;)V

    .line 2818
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 2823
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/medialinkhd/HtcDLNAServiceManager$4;

    invoke-direct {v2, p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$4;-><init>(Lcom/htc/medialinkhd/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/medialinkhd/HtcDLNARendererDiscoverListener;)V

    .line 2848
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2807
    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 2810
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/medialinkhd/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 2811
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2813
    :cond_3
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle IP!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setRendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)I
    .locals 3
    .parameter "listener"

    .prologue
    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 1885
    const-string v0, "HtcDLNAServiceManager "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRendererStatusListener] called in wrong state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const/16 v0, -0x3e9

    .line 1896
    :goto_0
    return v0

    .line 1889
    :cond_0
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1890
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1891
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_1

    .line 1892
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNARendererStatusListener(Lcom/htc/medialinkhd/HtcDLNARendererStatusListener;)V

    .line 1894
    :cond_1
    monitor-exit v1

    .line 1896
    const/16 v0, -0x3e8

    goto :goto_0

    .line 1894
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
    .line 3493
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3494
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRepeat] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    const/16 v1, -0x3e9

    .line 3516
    :goto_0
    return v1

    .line 3498
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 3499
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    const/16 v1, -0x3ea

    goto :goto_0

    .line 3503
    :cond_2
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_4

    .line 3504
    :cond_3
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3506
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3510
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3516
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3511
    :catch_0
    move-exception v0

    .line 3513
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setServerStatusListener(Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;)V
    .locals 2
    .parameter "serverListener"

    .prologue
    .line 1908
    invoke-direct {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 1909
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1910
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->setHtcDLNAServerStatusListener(Lcom/htc/medialinkhd/HtcDLNAServerStatusListener;)V

    .line 1913
    :cond_0
    monitor-exit v1

    .line 1914
    return-void

    .line 1913
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
    .line 4921
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4922
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "setShuffle : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4932
    :goto_0
    return-void

    .line 4927
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4928
    :catch_0
    move-exception v0

    .line 4930
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected declared-synchronized setState(IZZ)V
    .locals 7
    .parameter "newState"
    .parameter "fromMiddleLayer"
    .parameter "notifyUser"

    .prologue
    const/4 v6, 0x1

    .line 4017
    monitor-enter p0

    :try_start_0
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "setState call stack:"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4018
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Step 1] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4019
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Step 2] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Step 3] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    invoke-virtual {p0}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v1

    .line 4023
    .local v1, statePrev:I
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setState] >>> newState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", statePrev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fromMiddleLayer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4025
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4028
    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_0

    .line 4031
    const/4 p1, 0x1

    .line 4033
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 4037
    :cond_0
    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-nez p1, :cond_2

    .line 4038
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->bIsDTCPURINext:Z

    .line 4041
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v2

    if-ne v2, v6, :cond_3

    .line 4042
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 4043
    const-string v2, "HtcDLNAServiceManager "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] mControllerInfo.setPlayState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4044
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {v2, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->setPlayState(I)V

    .line 4046
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4048
    :try_start_2
    invoke-direct {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isValidState(I)Z

    move-result v2

    if-ne v2, v6, :cond_5

    .line 4049
    if-eq v1, p1, :cond_6

    .line 4050
    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListenerLockObject:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4051
    :try_start_3
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_4

    .line 4052
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/medialinkhd/HtcDLNAMiddleLayerListener;->getHtcDLNAControllerStatusListener()Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;

    move-result-object v0

    .line 4053
    .local v0, listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_4

    .line 4054
    invoke-virtual {v0, p1}, Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V

    .line 4056
    .end local v0           #listener:Lcom/htc/medialinkhd/HtcDLNAControllerStatusListener;
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4061
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    .line 4046
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4017
    .end local v1           #statePrev:I
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 4056
    .restart local v1       #statePrev:I
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v2

    .line 4058
    :cond_6
    const-string v2, "HtcDLNAServiceManager "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setState] statePrev == newState == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "link"
    .parameter "title"
    .parameter "thumbnail"

    .prologue
    const/4 v2, 0x0

    .line 3375
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 3390
    :cond_0
    :goto_0
    return-void

    .line 3378
    :cond_1
    const-string v0, "HtcDLNAServiceManager "

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    invoke-direct {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 3381
    iput-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 3385
    :try_start_0
    iget-object v0, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3386
    :catch_0
    move-exception v6

    .line 3388
    .local v6, e:Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    .line 3959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3961
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 3962
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setVolume] error state for setVolume(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3963
    const/16 v1, -0x3e9

    .line 3987
    :goto_0
    return v1

    .line 3966
    :cond_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_3

    .line 3967
    :cond_2
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[setVolume], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3968
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3971
    :cond_3
    if-ltz p1, :cond_4

    const/16 v1, 0x64

    if-le p1, v1, :cond_5

    .line 3972
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3973
    const/16 v1, -0x3ea

    goto :goto_0

    .line 3976
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

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;

    #setter for: Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->mVolume:I
    invoke-static {v1, p1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;->access$1802(Lcom/htc/medialinkhd/HtcDLNAServiceManager$ControllerInfo;I)I

    .line 3981
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3987
    :goto_1
    const/16 v1, -0x3e8

    goto :goto_0

    .line 3982
    :catch_0
    move-exception v0

    .line 3984
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public stop()I
    .locals 7

    .prologue
    const/16 v1, -0x3e8

    const/4 v6, 0x1

    .line 3773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 3776
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 3777
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stop] error state for stop(), current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3778
    const/16 v1, -0x3e9

    .line 3806
    :goto_0
    return v1

    .line 3781
    :cond_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 3782
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] AP call stop() in STATE_STOPPED, return RETURN_CODE_OK directly."

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3786
    :cond_2
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_4

    .line 3787
    :cond_3
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "[stop], null == mService || !mRendererCreated, return RETURN_CODE_RENDERER_NOT_READY"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3788
    const/16 v1, -0x3eb

    goto :goto_0

    .line 3792
    :cond_4
    const-string v2, "HtcDLNAServiceManager "

    const-string v3, "[stop] Request stop"

    invoke-static {v2, v3}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3794
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v2, :cond_5

    .line 3795
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 3798
    :goto_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3804
    :goto_2
    invoke-direct {p0, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    goto :goto_0

    .line 3797
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3799
    :catch_0
    move-exception v0

    .line 3801
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

    .line 2092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->autoLog(Ljava/lang/String;)V

    .line 2094
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v7, :cond_0

    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 2098
    :cond_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stopAndReset] called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    const/16 v1, -0x3e9

    .line 2134
    :goto_0
    return v1

    .line 2107
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2108
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2111
    iget-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v1, :cond_2

    .line 2112
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 2115
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2118
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 2124
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCurrentPos:I

    .line 2125
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->disconnectDTCPServer(Z)V

    .line 2126
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2132
    :goto_2
    invoke-virtual {p0, v7, v5, v6}, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->setState(IZZ)V

    .line 2134
    const/16 v1, -0x3e8

    goto :goto_0

    .line 2114
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2127
    :catch_0
    move-exception v0

    .line 2129
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public subscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    .line 5291
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5292
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "subscribeServer : invalid servce"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    :goto_0
    return-void

    .line 5297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->subscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5298
    :catch_0
    move-exception v0

    .line 5300
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public subscribeServer(Ljava/lang/String;)V
    .locals 4
    .parameter "serverId"

    .prologue
    .line 5312
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5313
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "subscribeServer : invalid servce"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5324
    :goto_0
    return-void

    .line 5318
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[subscribeServer] serverId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5319
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->subscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5320
    :catch_0
    move-exception v0

    .line 5322
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistNextItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4971
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4972
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4982
    :goto_0
    return-void

    .line 4977
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4978
    :catch_0
    move-exception v0

    .line 4980
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchPlaylistPrevItem(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "rendererId"

    .prologue
    .line 4995
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 4996
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "switchPlaylistPrevItem : invalid mService"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5006
    :goto_0
    return-void

    .line 5001
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5002
    :catch_0
    move-exception v0

    .line 5004
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribeServer(ILjava/lang/String;)V
    .locals 3
    .parameter "cookie"
    .parameter "serverId"

    .prologue
    .line 5335
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5336
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "unsubscribeServer : invalid servce"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    :goto_0
    return-void

    .line 5341
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unsubscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5342
    :catch_0
    move-exception v0

    .line 5344
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unsubscribeServer(Ljava/lang/String;)V
    .locals 4
    .parameter "serverId"

    .prologue
    .line 5356
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 5357
    const-string v1, "HtcDLNAServiceManager "

    const-string v2, "unsubscribeServer : invalid servce"

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5368
    :goto_0
    return-void

    .line 5362
    :cond_0
    :try_start_0
    const-string v1, "HtcDLNAServiceManager "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unsubscribeServer] serverId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cookie:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/medialinkhd/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5363
    iget-object v1, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mService:Lcom/htc/htcdlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/medialinkhd/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2, p1}, Lcom/htc/htcdlnainterface/IDLNAPluginService;->unsubscribeServer(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5364
    :catch_0
    move-exception v0

    .line 5366
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
