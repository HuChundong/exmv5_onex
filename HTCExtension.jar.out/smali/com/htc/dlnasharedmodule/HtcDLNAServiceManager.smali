.class public Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
.super Ljava/lang/Object;
.source "HtcDLNAServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;,
        Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_DESTROY_DLNA_MEDIACONTROLLERS:Ljava/lang/String; = "com.htc.dlnasharedmodule.destroy_dlna_mediacontrollers"

.field public static final ACTION_DMC_DESTROY_NOTIFY_AP:Ljava/lang/String; = "com.htc.dlnamiddlelayer.action.dmc_destroy_notify"

.field public static final BUFFERING_TIMEOUT:I = 0xfa0

.field private static final CREATE_MEDIA_CONTROLLER_EXIST:I = 0x2

.field private static final CREATE_MEDIA_CONTROLLER_FAILED:I = 0x0

.field private static final CREATE_MEDIA_CONTROLLER_NEW:I = 0x1

.field public static final DISCOVER_TIMEOUT:I = 0x1388

.field public static final DISCOVER_TIMEOUT_LONG:I = 0x2710

.field public static final ERROR_COMMAND_PAUSE:I = -0x40c7

.field public static final ERROR_COMMAND_PAUSE_MSG:Ljava/lang/String; = "Command requestPause in wrong status"

.field public static final ERROR_COMMAND_PLAY:I = -0x40c4

.field public static final ERROR_COMMAND_PLAYBYID:I = -0x40cb

.field public static final ERROR_COMMAND_PLAYBYID_MSG:Ljava/lang/String; = "Command startPlay(String) in wrong status"

.field public static final ERROR_COMMAND_PLAYBYINDEX:I = -0x40ca

.field public static final ERROR_COMMAND_PLAYBYINDEX_MSG:Ljava/lang/String; = "Command startPlay(long) in wrong status"

.field public static final ERROR_COMMAND_PLAYNEXT:I = -0x40c5

.field public static final ERROR_COMMAND_PLAYNEXT_MSG:Ljava/lang/String; = "Command playNext in wrong status"

.field public static final ERROR_COMMAND_PLAYPREVIOUS:I = -0x40c6

.field public static final ERROR_COMMAND_PLAYPREVIOUS_MSG:Ljava/lang/String; = "Command playPrevious in wrong status"

.field public static final ERROR_COMMAND_PLAY_MSG:Ljava/lang/String; = "Command startPlay in wrong status"

.field public static final ERROR_COMMAND_SEEKTO:I = -0x40c9

.field public static final ERROR_COMMAND_SEEKTO_MSG:Ljava/lang/String; = "Command seekTo in wrong status"

.field public static final ERROR_COMMAND_STATUS:I = -0x4064

.field public static final ERROR_COMMAND_STATUS_MSG:Ljava/lang/String; = "Command Status Error"

.field public static final ERROR_COMMAND_STOP:I = -0x40c8

.field public static final ERROR_COMMAND_STOP_MSG:Ljava/lang/String; = "Command requestStop in wrong status"

.field public static final ERROR_DISCOVER_TIMOUT_CODE:I = -0x4000

.field public static final ERROR_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover Timeout"

.field public static final FILTER_AUDIO:I = 0x1

.field public static final FILTER_IMAGE:I = 0x2

.field public static final FILTER_UNKNOWN:I = 0x0

.field public static final FILTER_VIDEO:I = 0x4

.field public static final KEY_APP:Ljava/lang/String; = "appName"

.field public static final KEY_CONTROLLER:Ljava/lang/String; = "controllerName"

.field public static final KEY_COOKIE:Ljava/lang/String; = "cookie"

.field static final LOG_TAG:Ljava/lang/String; = "HtcDLNAServiceManager"

.field private static final MSG_CHANGE_STATE:I = 0x2711

.field private static final MSG_UPDTAE_POS:I = 0x2712

.field public static final NO_REPEAT:I = 0x0

.field public static final REPEAT_ALL:I = 0x1

.field public static final REPEAT_CURRENT:I = 0x2

.field public static final RESPON_DISCOVER_TIMOUT_CODE:I = 0x4e20

.field public static final RESPON_DISCOVER_TIMOUT_MSG:Ljava/lang/String; = "Discover DMR success"

.field public static final SENDING_CONTENT_TIMEOUT:I = 0xea60

.field public static final SENDING_CONTENT_TIMEOUT_LARGE:I = 0x2bf20

.field private static final SRV_DLNA:Ljava/lang/String; = "com.htc.dlnainterface.IDLNAPluginService"

.field public static final STATE_AUTOPLAYNEXT:I = 0x3e9

.field public static final STATE_AUTOPLAYWANTSHOWSTOP:I = 0x3e8

.field public static final STATE_BUFFERING:I = 0x64

.field public static final STATE_NO_MEDIA:I = 0x6

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PAUSING:I = 0x69

.field public static final STATE_PLAYING:I = 0x0

.field static final STATE_REQUEST_PAUSE:I = 0x67

.field static final STATE_REQUEST_PLAY:I = 0x66

.field public static final STATE_SENDING_CONTENT:I = 0x6a

.field public static final STATE_STOPPED:I = 0x1

.field public static final STATE_TIMEOUT:I = 0x68

.field public static final STATE_TRANSITIONING:I = 0x5

.field public static final STATE_UNKNOWN:I = 0x7

.field private static final URI_PREFIX_DEF_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_default?cookie="

.field private static final URI_PREFIX_DEF_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_default?cookie="

.field private static final URI_PREFIX_GETTER:Ljava/lang/String; = "content://dlna/dmr_func_get_current?cookie="

.field private static final URI_PREFIX_SETTER:Ljava/lang/String; = "content://dlna/dmr_func_set_current?cookie="


# instance fields
.field private SEEK_STATE_CHANGE_TIMEOUT:I

.field private SEEK_THREADHOLD:I

.field private isDTCPIPContent:Z

.field mClientSeekTo:J

.field mContext:Landroid/content/Context;

.field mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

.field private mCookie:I

.field private mCurrentPos:J

.field private mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private mFilter:I

.field private mHandler:Landroid/os/Handler;

.field private mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mRendererCreated:Z

.field mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

.field mRendererId:Ljava/lang/String;

.field private mRunAsSlideShow:Z

.field mServerID:Ljava/lang/String;

.field mService:Lcom/htc/dlnainterface/IDLNAPluginService;

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
    .parameter "cookie"
    .parameter "filter"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 147
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    .line 148
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 149
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 150
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 151
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 152
    iput v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    .line 154
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 155
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 156
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 157
    const/4 v1, 0x5

    iput v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    .line 158
    const/16 v1, 0x1388

    iput v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_STATE_CHANGE_TIMEOUT:I

    .line 159
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 161
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererSaver:Landroid/net/Uri;

    .line 162
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 163
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererSaver:Landroid/net/Uri;

    .line 164
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 166
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 167
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 168
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 170
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 172
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 174
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 175
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 186
    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 241
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;

    invoke-direct {v1, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$1;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    .line 278
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    .line 279
    iput p2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    .line 280
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-direct {v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;-><init>()V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    .line 281
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    .line 282
    iput p3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_current?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://dlna/dmr_func_get_default?cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "cookie"
    .parameter "filter"

    .prologue
    .line 273
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;ILjava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private initMiddleLayerListener()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-direct {v0, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 316
    :cond_0
    return-void
.end method

.method private lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 1940
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1943
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1947
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1949
    :goto_0
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    return-void

    .line 1944
    :catch_0
    move-exception v0

    .line 1945
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1947
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private sendErrorMsg(ILjava/lang/String;)I
    .locals 5
    .parameter "error_id"
    .parameter "error_msg"

    .prologue
    const/4 v4, 0x0

    .line 1902
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_1

    .line 1910
    :cond_0
    :goto_0
    return v4

    .line 1904
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1905
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1906
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendErrorMsg][id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private sendResponseMsg(Ljava/lang/String;ILjava/lang/String;)I
    .locals 5
    .parameter "rendererID"
    .parameter "response_id"
    .parameter "response_msg"

    .prologue
    const/4 v4, 0x0

    .line 1914
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_1

    .line 1922
    :cond_0
    :goto_0
    return v4

    .line 1916
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1917
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1918
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendResponseMsg][id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onResponse(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private unlockCommand()V
    .locals 2

    .prologue
    .line 1953
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1956
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1958
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1960
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    return-void

    .line 1958
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nCookie"
    .parameter "serverID"
    .parameter "contentID"

    .prologue
    .line 1802
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[albumArtDownload]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/dlnainterface/IDLNAPluginService;->albumArtDownload(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1811
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public callbackStatePAUSED()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1073
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v2

    .line 1075
    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 1076
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    const/4 v3, 0x2

    iput v3, v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1077
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1077
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1081
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v1, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1082
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {v0, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V

    goto :goto_0
.end method

.method public connect(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;)Z
    .locals 4
    .parameter "clientListener"

    .prologue
    const/4 v0, 0x0

    .line 320
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 322
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 324
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceConnected()V

    .line 328
    :cond_0
    const/4 v0, 0x1

    .line 384
    :goto_0
    return v0

    .line 331
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[connect] Request connect service"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;

    invoke-direct {v1, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$2;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 381
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public disconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 389
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 390
    .local v0, clientListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;->onServiceDisconnected()V

    .line 396
    :cond_0
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[disconnect] Request disconnect service"

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_2
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-eqz v2, :cond_3

    .line 417
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    invoke-virtual {v2}, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->disconnect()V

    .line 420
    :cond_3
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    .line 421
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 422
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mDLNAServiceStatusListener:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 423
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 424
    return-void

    .line 405
    :catch_0
    move-exception v1

    .line 408
    .local v1, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    goto :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    throw v2
.end method

.method public findUsableRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 3
    .parameter "statusBarData"

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-virtual {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[findUsableRenderer][setRendererAsReadyDongle]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return v0

    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setRendererAsDefaultRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[findUsableRenderer][setRendererAsDefaultRenderer]"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainerID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1840
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 1852
    :cond_0
    :goto_0
    return-object v0

    .line 1845
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContainerID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1847
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getContentID()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1819
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_1

    .line 1831
    :cond_0
    :goto_0
    return-object v0

    .line 1824
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCCurrentContentID(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1826
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCookie()I
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    return v0
.end method

.method public getDefaultRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriDefRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()I
    .locals 1

    .prologue
    .line 1936
    iget v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    return v0
.end method

.method public getItemDetails()Lcom/htc/dlnainterface/DLNAContentItemDetails;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 1861
    const-string v3, "HtcDLNAServiceManager"

    const-string v4, "[getItemDetails]"

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v3, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return-object v0

    .line 1866
    :cond_1
    const/4 v0, 0x0

    .line 1869
    .local v0, details:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    :try_start_0
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCContentItemDetails(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    move-result-object v0

    .line 1870
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v2, v3, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1871
    .local v2, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v2, :cond_0

    .line 1873
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingIndex()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onItemDetailsUpdated(JLcom/htc/dlnainterface/DLNAContentItemDetails;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1876
    .end local v2           #listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    :catch_0
    move-exception v1

    .line 1878
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getMirrorRenderer()Lcom/htc/dlnainterface/DLNARendererData;
    .locals 4

    .prologue
    .line 861
    const/4 v0, 0x0

    .line 865
    .local v0, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getMirrorRenderer(I)Lcom/htc/dlnainterface/DLNARendererData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 872
    :goto_0
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-object v0

    .line 867
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getPlayingIndex()J
    .locals 8

    .prologue
    .line 1705
    const-wide/16 v1, -0x1

    .line 1706
    .local v1, index:J
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 1718
    .end local v1           #index:J
    .local v3, index:J
    :goto_0
    return-wide v3

    .line 1710
    .end local v3           #index:J
    .restart local v1       #index:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistPlayIndex(ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1716
    :goto_1
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPlayingIndex] index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 1718
    .end local v1           #index:J
    .restart local v3       #index:J
    goto :goto_0

    .line 1711
    .end local v3           #index:J
    .restart local v1       #index:J
    :catch_0
    move-exception v0

    .line 1713
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPlayingPosition()J
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 1741
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v6, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return-wide v4

    .line 1750
    :cond_1
    const-wide/16 v1, 0x0

    .line 1752
    .local v1, position:J
    const/4 v3, 0x0

    .line 1756
    .local v3, positionNegative:Z
    :try_start_0
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v8, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlayPosition(ILjava/lang/String;)J

    move-result-wide v1

    .line 1757
    const-string v6, "HtcDLNAServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Original position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1765
    :goto_1
    cmp-long v6, v1, v4

    if-gez v6, :cond_2

    .line 1766
    const-wide/16 v1, 0x0

    .line 1768
    const/4 v3, 0x1

    .line 1773
    :cond_2
    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_3

    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    sub-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    iget v8, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->SEEK_THREADHOLD:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 1774
    iget-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v0

    .line 1763
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "HtcDLNAServiceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getPlayingPosition] Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1776
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_3
    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    cmp-long v4, v6, v4

    if-ltz v4, :cond_4

    .line 1778
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x2711

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1780
    :cond_4
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 1784
    if-nez v3, :cond_5

    .end local v1           #position:J
    :goto_2
    iput-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1785
    const-string v4, "HtcDLNAServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iget-wide v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto/16 :goto_0

    .line 1784
    .restart local v1       #position:J
    :cond_5
    iget-wide v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto :goto_2
.end method

.method public getPlaylistSize()J
    .locals 8

    .prologue
    .line 1687
    const-wide/16 v1, -0x1

    .line 1688
    .local v1, total:J
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v5, :cond_1

    :cond_0
    move-wide v3, v1

    .line 1700
    .end local v1           #total:J
    .local v3, total:J
    :goto_0
    return-wide v3

    .line 1692
    .end local v3           #total:J
    .restart local v1       #total:J
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getPlaylistTotalCount(ILjava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1698
    :goto_1
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getCount] total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v3, v1

    .line 1700
    .end local v1           #total:J
    .restart local v3       #total:J
    goto :goto_0

    .line 1693
    .end local v3           #total:J
    .restart local v1       #total:J
    :catch_0
    move-exception v0

    .line 1695
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getRenderer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 830
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mUriRendererGetter:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRendererData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;
    .locals 4
    .parameter "rendererID"

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 887
    .local v0, rendererData:Lcom/htc/dlnainterface/DLNARendererData;
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererIdData(Ljava/lang/String;)Lcom/htc/dlnainterface/DLNARendererData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 894
    :goto_0
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getMirrorRenderer] rendererData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-object v0

    .line 889
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getRepeatState()I
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    return v0
.end method

.method getServiceControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;
    .locals 5

    .prologue
    .line 901
    const/4 v1, 0x0

    .line 905
    .local v1, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlStatus(ILjava/lang/String;)Lcom/htc/dlnainterface/DLNAControllerStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 912
    :goto_0
    return-object v1

    .line 907
    :catch_0
    move-exception v0

    .line 909
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getServiceControlStatus] Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getSlideShowSatatus()I
    .locals 5

    .prologue
    .line 1723
    const/4 v0, 0x1

    .line 1724
    .local v0, nRet:I
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v2, :cond_1

    :cond_0
    move v1, v0

    .line 1736
    .end local v0           #nRet:I
    .local v1, nRet:I
    :goto_0
    return v1

    .line 1729
    .end local v1           #nRet:I
    .restart local v0       #nRet:I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCPhotoSlideshowState(ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    .line 1736
    .end local v0           #nRet:I
    .restart local v1       #nRet:I
    goto :goto_0

    .line 1731
    .end local v1           #nRet:I
    .restart local v0       #nRet:I
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getState()I
    .locals 4

    .prologue
    .line 1678
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 1680
    :try_start_0
    const-string v0, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getState] state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1682
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1791
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_1

    .line 1792
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-nez v3, :cond_0

    .line 1795
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 1792
    goto :goto_0

    .line 1794
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v0

    .line 1795
    .local v0, state:I
    if-eqz v0, :cond_2

    const/16 v3, 0x64

    if-eq v0, v3, :cond_2

    const/16 v3, 0x6a

    if-ne v0, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public isShuffleEnabled()Z
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    return v0
.end method

.method public playNext()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1131
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1134
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 1141
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for playNext(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/16 v0, -0x40c5

    const-string v1, "Command playNext in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1146
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[playNext] Request next"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1152
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1156
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 1157
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1163
    :goto_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistNextItem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1160
    :cond_4
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->callbackStatePAUSED()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public playPrevious()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1089
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 1099
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for playPrevious(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const/16 v0, -0x40c6

    const-string v1, "Command playPrevious in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1104
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[playPrevious] Request previous"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlaylistSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRepeatState()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1110
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->seekTo(J)V

    goto :goto_0

    .line 1123
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 1114
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4

    .line 1115
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1120
    :goto_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->switchPlaylistPrevItem(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    :cond_4
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->callbackStatePAUSED()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public powerOff()V
    .locals 3

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[powerOff] Request powerOff"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1182
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1184
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1187
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->destroyMediaController(ILjava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->resumeMirror(Landroid/content/Context;)V

    .line 1189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public refreshRendererList()V
    .locals 3

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_0

    .line 1899
    :goto_0
    return-void

    .line 1891
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->reSearchDevices(I)V

    .line 1892
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1894
    :catch_0
    move-exception v0

    .line 1897
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public requestPause()V
    .locals 4

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[pause] error status for requestPause(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/16 v0, -0x40c7

    const-string v1, "Command requestPause in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[pause] Request pause"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const/16 v0, 0x67

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1021
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_3

    .line 1022
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1024
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->pause(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public requestStop()V
    .locals 4

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1043
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1044
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[stop] error status for requestStop()"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const/16 v0, -0x40c8

    const-string v1, "Command requestStop in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1049
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[stop] Request stop"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_3

    .line 1054
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 1059
    :goto_1
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 1060
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    goto :goto_0

    .line 1062
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1056
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->stop(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public runAsSlideShow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 857
    return-void
.end method

.method public saveDefaultRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "rendererId"

    .prologue
    .line 839
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_default?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

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

    .line 840
    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method saveRenderer()Z
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public saveRenderer(Ljava/lang/String;)Z
    .locals 4
    .parameter "renderer"

    .prologue
    .line 818
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 819
    :cond_0
    const/4 v1, 0x0

    .line 822
    :goto_0
    return v1

    .line 821
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://dlna/dmr_func_set_current?cookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

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

    .line 822
    .local v0, result:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 3
    .parameter "timeSecs"

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1203
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 1204
    const-wide/16 p1, 0x0

    .line 1206
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_3

    .line 1211
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] error status for seekTo(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const/16 v0, -0x40c9

    const-string v1, "Command seekTo in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 1216
    :cond_3
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[seekTo] Request seekTo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :try_start_0
    iput-wide p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    .line 1222
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setSeek(ILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setControllerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;)V
    .locals 1
    .parameter "controllerListener"

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 307
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 308
    return-void
.end method

.method public setDTCPIPDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 698
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDTCPIPDataSource] DLNAPushMediaInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushEncryptSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    .line 711
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 747
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 755
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle2(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAPushMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 760
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 626
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] DLNARemotePlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 634
    :try_start_0
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;->serverID:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 635
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemotePlaylist(ILjava/lang/String;Lcom/htc/dlnainterface/DLNARemotePlaylistInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 640
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4
    .parameter "filePath"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_4

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v1, :cond_1

    .line 723
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[setDataSource] Error: mService is null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_1
    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v1, :cond_2

    .line 725
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] Error: mRendererCreated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :cond_2
    if-nez p1, :cond_3

    .line 727
    const-string v1, "HtcDLNAServiceManager"

    const-string v2, "[setDataSource] Error: filePath is null"

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_3
    :goto_0
    return-void

    .line 731
    :cond_4
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataSource] filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushSingle(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 741
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "serverID"
    .parameter "contentID"
    .parameter "containerID"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 610
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mServerID:Ljava/lang/String;

    .line 611
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newRemoteSingle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 613
    :catch_0
    move-exception v6

    .line 616
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataSource([II)V
    .locals 9
    .parameter "pushList"
    .parameter "startIndex"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

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

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 779
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mFilter:I

    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1f40

    :goto_1
    move v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->newPushPlaylist(ILjava/lang/String;I[IIJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 781
    :catch_0
    move-exception v8

    .line 784
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 779
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method public setIPListSource(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 675
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPListSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 683
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushList(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 688
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setIPSingleSource(Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    .locals 4
    .parameter "data"

    .prologue
    .line 651
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIPSingleSource] DLNAInternetPushPlaylistInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 659
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->newInternetPushSingle(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAInternetPushPlaylistInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 664
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setOutputPath(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "path"

    .prologue
    .line 1928
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 1929
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-interface {v1, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->setOutputPath(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1934
    :cond_0
    :goto_0
    return-void

    .line 1930
    :catch_0
    move-exception v0

    .line 1932
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRenderer(Ljava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 8
    .parameter "rendererId"
    .parameter "statusBarData"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, result:I
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 431
    :cond_0
    iput-boolean v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    move v3, v4

    .line 473
    :goto_0
    return v3

    .line 433
    :cond_1
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] renderId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", statusBarData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    .line 438
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->createMediaController(ILjava/lang/String;Lcom/htc/dlnainterface/DLNAStatusBarData;)I

    move-result v1

    .line 439
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] createMediaController result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v1, :cond_4

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    .line 442
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getServiceControlStatus()Lcom/htc/dlnainterface/DLNAControllerStatus;

    move-result-object v2

    .line 443
    .local v2, status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    if-eqz v2, :cond_2

    .line 444
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRepeat:I

    .line 445
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    .line 446
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 447
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-object v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iput-object v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mRendererID:Ljava/lang/String;

    .line 449
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 451
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v7, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMCControlItemInfo(ILjava/lang/String;)V

    .line 452
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->currentIndex:J

    iput-wide v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mIndex:J

    .line 453
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-wide v6, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->totalCount:J

    iput-wide v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mTotal:J

    .line 457
    :cond_2
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 458
    if-eqz v2, :cond_3

    .line 459
    iget v5, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 460
    :cond_3
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->saveRenderer()Z

    .line 461
    iget-object v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v6, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    invoke-interface {v5, v6}, Lcom/htc/dlnainterface/IDLNAPluginService;->getRendererList(I)V

    .line 462
    if-eqz v2, :cond_5

    .line 463
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] init DMR state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/htc/dlnainterface/DLNAControllerStatus;->curDMRPlayState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cur state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v2           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :goto_2
    if-eqz v1, :cond_6

    :goto_3
    iput-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    goto/16 :goto_0

    :cond_4
    move v5, v4

    .line 440
    goto/16 :goto_1

    .line 465
    .restart local v2       #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :cond_5
    :try_start_1
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] cur state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 467
    .end local v2           #status:Lcom/htc/dlnainterface/DLNAControllerStatus;
    :catch_0
    move-exception v0

    .line 470
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HtcDLNAServiceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setRenderer] Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/dlnasharedmodule/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    move v3, v4

    .line 473
    goto :goto_3
.end method

.method public setRendererAsDefaultRenderer(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 6
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    const/16 v5, -0x4000

    .line 555
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 556
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] error: mService is null!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    .line 596
    :goto_0
    return v1

    .line 561
    :cond_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v0

    .line 562
    .local v0, renderID:Ljava/lang/String;
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsDefaultRenderer][getDefaultRenderer] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getDefaultRenderer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 564
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsDefaultRenderer] no default renderer available, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_1
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsDefaultRenderer] statusBarData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    new-instance v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-direct {v1, p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 572
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v1, v0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererID(Ljava/lang/String;)V

    .line 573
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iput-object p1, v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 574
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 575
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$4;

    invoke-direct {v2, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$4;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;)V

    .line 596
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setRendererAsReadyDongle(Lcom/htc/dlnainterface/DLNAStatusBarData;)Z
    .locals 6
    .parameter "statusBarData"

    .prologue
    const/4 v1, 0x0

    const/16 v5, -0x4000

    .line 495
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v2, :cond_0

    .line 496
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] error: mService is null!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    .line 550
    :goto_0
    return v1

    .line 501
    :cond_0
    const-string v2, "HtcDLNAServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setRendererAsReadyDongle] statusBarData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v0

    .line 504
    .local v0, info:Lcom/htc/service/DongleInfo;
    if-nez v0, :cond_1

    .line 505
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle Info!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 510
    :cond_1
    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-direct {v2, p0}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    iput-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    .line 512
    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 513
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 514
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] WirelessDisplayHelper.getReadyDongleIP(mContext) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/dlnasharedmodule/WirelessDisplayHelper;->getReadyDongleIP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_1
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    iput-object p1, v1, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->mStatusBarData:Lcom/htc/dlnainterface/DLNAStatusBarData;

    .line 527
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setTimeout(J)V

    .line 528
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    new-instance v2, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$3;

    invoke-direct {v2, p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$3;-><init>(Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->startDiscover(Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverListener;)V

    .line 550
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 516
    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 517
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererDiscoverer:Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNARendererDiscoverer;->setRendererIP(Ljava/lang/String;)V

    .line 518
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/service/DongleInfo;->getInetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v1, "HtcDLNAServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRendererAsReadyDongle] info.getInetAddress() length = "

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

    invoke-static {v1, v2}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :cond_3
    const-string v2, "HtcDLNAServiceManager"

    const-string v3, "[setRendererAsReadyDongle] Can not get dongle IP!!, dont start discover, just send discover timeout error to AP."

    invoke-static {v2, v3}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v2, "Discover Timeout"

    invoke-direct {p0, v5, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setRendererStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;)V
    .locals 1
    .parameter "rendererListener"

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 291
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mRendererListener:Lcom/htc/dlnasharedmodule/HtcDLNARendererStatusListener;

    .line 292
    return-void
.end method

.method public setRepeat(I)V
    .locals 3
    .parameter "nRepeatState"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setRepeat] Request setRepeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setRepeat(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1250
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setServerStatusListener(Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;)V
    .locals 1
    .parameter "serverListener"

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->initMiddleLayerListener()V

    .line 301
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iput-object p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mServerListener:Lcom/htc/dlnasharedmodule/HtcDLNAServerStatusListener;

    .line 302
    return-void
.end method

.method public setShuffle()V
    .locals 4

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[setShuffleEnabled]"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :try_start_0
    iget-object v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iget-boolean v0, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mShuffle:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v3, v0}, Lcom/htc/dlnainterface/IDLNAPluginService;->setShuffle(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1293
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method declared-synchronized setState(IZ)V
    .locals 7
    .parameter "newState"
    .parameter "fromMiddleLayer"

    .prologue
    const/4 v6, 0x1

    .line 1308
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getState()I

    move-result v2

    .line 1309
    .local v2, statePrev:I
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] >>> newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    if-eqz p2, :cond_0

    if-ne p1, v6, :cond_0

    .line 1312
    invoke-direct {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->unlockCommand()V

    .line 1314
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 1636
    :goto_0
    :sswitch_0
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState] <<< newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", statePrev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fromMiddleLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    iget-object v4, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    .line 1641
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput p1, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPlayState:I

    .line 1642
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_2

    .line 1643
    :cond_1
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCurrentPos:J

    .line 1644
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1646
    if-eq v2, p1, :cond_3

    .line 1648
    :try_start_2
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_b

    .line 1662
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 1318
    :sswitch_1
    sparse-switch p1, :sswitch_data_1

    .line 1351
    :try_start_3
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_UNKNOWN]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1308
    .end local v2           #statePrev:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1322
    .restart local v2       #statePrev:I
    :sswitch_2
    if-eqz p2, :cond_4

    .line 1323
    :try_start_4
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_UNKNOWN]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1326
    :cond_4
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    const/16 p1, 0x64

    .line 1328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1329
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1330
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1331
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1341
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_3
    const/16 p1, 0x64

    .line 1342
    goto/16 :goto_0

    .line 1346
    :sswitch_4
    const/16 p1, 0x3e8

    .line 1347
    goto/16 :goto_0

    .line 1361
    :sswitch_5
    sparse-switch p1, :sswitch_data_2

    .line 1423
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_BUFFERING/STATE_TRANSITIONING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1365
    :sswitch_6
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_5

    .line 1367
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1368
    const/4 p1, 0x2

    goto/16 :goto_0

    .line 1372
    :cond_5
    const/16 p1, 0x69

    .line 1374
    goto/16 :goto_0

    .line 1378
    :sswitch_7
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 1381
    const/4 p1, 0x2

    .line 1382
    goto/16 :goto_0

    .line 1384
    :cond_6
    const/4 p1, 0x0

    .line 1385
    goto/16 :goto_0

    .line 1389
    :sswitch_8
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getSlideShowSatatus()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 1391
    const/4 p1, 0x2

    .line 1392
    goto/16 :goto_0

    .line 1394
    :cond_7
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1395
    const/16 p1, 0x64

    .line 1396
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1397
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1398
    const/16 v3, 0x6a

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1399
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1404
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_9
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1405
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1406
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1407
    const/16 v3, 0x68

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1408
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1413
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_a
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 1418
    :sswitch_b
    const/16 p1, 0x3e8

    .line 1419
    goto/16 :goto_0

    .line 1431
    :sswitch_c
    sparse-switch p1, :sswitch_data_3

    .line 1455
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PAUSING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1435
    :sswitch_d
    const/4 p1, 0x2

    .line 1436
    goto/16 :goto_0

    .line 1440
    :sswitch_e
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1441
    const/4 p1, 0x2

    .line 1442
    goto/16 :goto_0

    .line 1445
    :sswitch_f
    const/4 p1, 0x1

    .line 1446
    goto/16 :goto_0

    .line 1450
    :sswitch_10
    const/16 p1, 0x3e8

    .line 1451
    goto/16 :goto_0

    .line 1463
    :sswitch_11
    sparse-switch p1, :sswitch_data_4

    .line 1503
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PAUSED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1467
    :sswitch_12
    if-eqz p2, :cond_8

    .line 1469
    const-string v3, "HtcDLNAServiceManager"

    const-string v4, "[setState][STATE_PAUSED] deny play from middler layer and keep pause state"

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 p1, 0x2

    .line 1471
    goto/16 :goto_0

    .line 1473
    :cond_8
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1474
    const/16 p1, 0x64

    .line 1475
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1476
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1477
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1478
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1483
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_13
    const/4 p1, 0x0

    .line 1484
    goto/16 :goto_0

    .line 1488
    :sswitch_14
    const/16 p1, 0x69

    .line 1489
    goto/16 :goto_0

    .line 1493
    :sswitch_15
    const/16 p1, 0x64

    .line 1494
    goto/16 :goto_0

    .line 1498
    :sswitch_16
    const/16 p1, 0x3e8

    .line 1499
    goto/16 :goto_0

    .line 1511
    :sswitch_17
    sparse-switch p1, :sswitch_data_5

    .line 1561
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_PLAYING]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1515
    :sswitch_18
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1516
    const/16 p1, 0x64

    .line 1517
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1518
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1519
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1520
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1525
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_19
    iget-boolean v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v3, :cond_9

    .line 1527
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1528
    const/4 p1, 0x2

    goto/16 :goto_0

    .line 1532
    :cond_9
    const/16 p1, 0x69

    .line 1534
    goto/16 :goto_0

    .line 1538
    :sswitch_1a
    if-eqz p2, :cond_3

    .line 1539
    const/16 p1, 0x64

    .line 1540
    goto/16 :goto_0

    .line 1546
    :sswitch_1b
    const/4 p1, 0x2

    .line 1547
    goto/16 :goto_0

    .line 1551
    :sswitch_1c
    const/4 p1, 0x1

    .line 1552
    goto/16 :goto_0

    .line 1556
    :sswitch_1d
    const/16 p1, 0x3e8

    .line 1557
    goto/16 :goto_0

    .line 1569
    :sswitch_1e
    sparse-switch p1, :sswitch_data_6

    .line 1600
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_STOPPED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1573
    :sswitch_1f
    if-eqz p2, :cond_a

    .line 1574
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_STOPPED]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1577
    :cond_a
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1578
    const/16 p1, 0x64

    .line 1579
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1580
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1581
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1582
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1587
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_20
    const/16 p1, 0x3e8

    .line 1588
    goto/16 :goto_0

    .line 1592
    :sswitch_21
    if-eqz p2, :cond_3

    .line 1593
    const/16 p1, 0x64

    .line 1594
    goto/16 :goto_0

    .line 1608
    :sswitch_22
    sparse-switch p1, :sswitch_data_7

    .line 1628
    const-string v3, "HtcDLNAServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setState][STATE_AUTOPLAYWANTSHOWSTOP]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]Skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1611
    :sswitch_23
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1612
    const/16 p1, 0x64

    .line 1613
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1614
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x2711

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1615
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1616
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1620
    .end local v1           #msg:Landroid/os/Message;
    :sswitch_24
    if-eqz p2, :cond_3

    .line 1621
    const/16 p1, 0x64

    .line 1622
    goto/16 :goto_0

    .line 1644
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 1650
    :cond_b
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v3, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1651
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_3

    .line 1652
    invoke-virtual {v0, p1}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onPlayStateChanged(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1314
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_11
        0x7 -> :sswitch_1
        0x64 -> :sswitch_5
        0x69 -> :sswitch_c
        0x6a -> :sswitch_5
        0x3e8 -> :sswitch_22
    .end sparse-switch

    .line 1318
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_3
        0x66 -> :sswitch_2
        0x3e8 -> :sswitch_4
    .end sparse-switch

    .line 1361
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x66 -> :sswitch_8
        0x67 -> :sswitch_6
        0x68 -> :sswitch_a
        0x6a -> :sswitch_9
        0x3e8 -> :sswitch_b
    .end sparse-switch

    .line 1431
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_e
        0x66 -> :sswitch_d
        0x3e8 -> :sswitch_10
    .end sparse-switch

    .line 1463
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_13
        0x5 -> :sswitch_15
        0x66 -> :sswitch_12
        0x67 -> :sswitch_14
        0x3e8 -> :sswitch_16
    .end sparse-switch

    .line 1511
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_1b
        0x5 -> :sswitch_1a
        0x66 -> :sswitch_18
        0x67 -> :sswitch_19
        0x3e8 -> :sswitch_1d
    .end sparse-switch

    .line 1569
    :sswitch_data_6
    .sparse-switch
        0x5 -> :sswitch_21
        0x66 -> :sswitch_1f
        0x3e8 -> :sswitch_20
    .end sparse-switch

    .line 1608
    :sswitch_data_7
    .sparse-switch
        0x5 -> :sswitch_24
        0x66 -> :sswitch_23
    .end sparse-switch
.end method

.method public setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "link"
    .parameter "title"
    .parameter "thumbnail"

    .prologue
    .line 790
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[setStreamingDataSource] newPushPlaylist"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->isDTCPIPContent:Z

    .line 798
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->newSingleURI(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v6

    .line 803
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setVolume(I)V
    .locals 3
    .parameter "volume"

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVolume] Request volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput p1, v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mVolume:I

    .line 1271
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->setVolume(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPlay()V
    .locals 4

    .prologue
    .line 917
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 927
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const/16 v0, -0x40c4

    const-string v1, "Command startPlay in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 932
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    const-string v1, "[startPlay] Request play"

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRunAsSlideShow:Z

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->setDMCPhotoSlideshowState(ILjava/lang/String;I)Z

    .line 942
    :goto_1
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V

    .line 943
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mClientSeekTo:J

    goto/16 :goto_0

    .line 945
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 939
    :cond_3
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/htc/dlnainterface/IDLNAPluginService;->play(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public startPlay(J)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x2

    .line 952
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 962
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(long), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const/16 v0, -0x40ca

    const-string v1, "Command startPlay(long) in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 967
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlay] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/htc/dlnainterface/IDLNAPluginService;->changePushPlaylistItem(ILjava/lang/String;J)V

    .line 971
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 972
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 973
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public startPlay(Ljava/lang/String;)V
    .locals 4
    .parameter "contentID"

    .prologue
    const/4 v3, 0x2

    .line 978
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererCreated:Z

    if-nez v0, :cond_1

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    .line 988
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[play] error status for startPlay(long), current status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const/16 v0, -0x40cb

    const-string v1, "Command startPlay(String) in wrong status"

    invoke-direct {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->sendErrorMsg(ILjava/lang/String;)I

    goto :goto_0

    .line 993
    :cond_2
    const-string v0, "HtcDLNAServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startPlay] Request play @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/dlnasharedmodule/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    iget v1, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mCookie:I

    iget-object v2, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mRendererId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/htc/dlnainterface/IDLNAPluginService;->changeRemotePlaylistItem(ILjava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 998
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->setState(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 999
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method updatePlayingPosition()V
    .locals 4

    .prologue
    .line 1666
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    if-nez v3, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1668
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getPlayingPosition()J

    move-result-wide v1

    .line 1669
    .local v1, position:J
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mControllerInfo:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;

    iput-wide v1, v3, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager$ControllerInfo;->mPosition:J

    .line 1671
    iget-object v3, p0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->mMiddleLayerListener:Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;

    iget-object v0, v3, Lcom/htc/dlnasharedmodule/HtcDLNAMiddleLayerListener;->mControllerListener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;

    .line 1672
    .local v0, listener:Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;
    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {v0, v1, v2}, Lcom/htc/dlnasharedmodule/HtcDLNAControllerStatusListener;->onUpdatePosition(J)V

    goto :goto_0
.end method
