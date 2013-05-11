.class Landroid/media/MediaPluginDLNA;
.super Landroid/media/MediaPlugin;
.source "MediaPluginDLNA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPluginDLNA$CreateThumbnailTask;,
        Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;,
        Landroid/media/MediaPluginDLNA$TVListener;,
        Landroid/media/MediaPluginDLNA$switchDimModeTimerTask;,
        Landroid/media/MediaPluginDLNA$EventHandler;,
        Landroid/media/MediaPluginDLNA$RendererListener;,
        Landroid/media/MediaPluginDLNA$ControllerListener;
    }
.end annotation


# static fields
.field public static final MEDIA_DLNAMIDDLELAYER_CONNECTED:I = 0x1000

.field public static final MEDIA_END:I = 0x1200

.field public static final MEDIA_ERROR:I = 0x1100

.field public static final MEDIA_IDLE:I = 0x1001

.field public static final MEDIA_INITIALIZED:I = 0x1002

.field public static final MEDIA_PAUSED:I = 0x1020

.field public static final MEDIA_PLAY_COMPLETED:I = 0x1080

.field public static final MEDIA_PREPARED:I = 0x1008

.field public static final MEDIA_PREPARE_DLNA_THUMBNAIL:I = 0x2001

.field public static final MEDIA_PREPARING:I = 0x1004

.field public static final MEDIA_SEEKED:I = 0x1400

.field public static final MEDIA_SEEK_COMPLETED:I = 0x2000

.field public static final MEDIA_STARTED:I = 0x1010

.field public static final MEDIA_STOPPED:I = 0x1040

.field public static final MEDIA_TRANSITIONING:I = 0x1800

.field private static MediaPluginDLNACookie:I = 0x0

.field public static final STATUS_CHANGE:I = 0x2010

.field public static final STATUS_ERROR:I = 0x2021

.field public static final STATUS_INIT_FAILED:I = 0x2041

.field public static final STATUS_PREPARE:I = 0x2080

.field public static final STATUS_PREPARE_FAILED:I = 0x2082

.field public static final STATUS_PREPARE_SUCCESS:I = 0x2081

.field public static final STATUS_RESPONSE:I = 0x2040

.field private static final TAG:Ljava/lang/String; = "[MediaPluginDLNA]"

.field private static volatile mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

.field private static mResetParams:Z

.field private static mbDualScreen:Z


# instance fields
.field private final COMMAND_SETAV_TIMEOUT:I

.field private final COMMAND_START_TIMEOUT:I

.field private final CONNECT_DELAY:I

.field private final FIND_MLHD_TIMEOUT:I

.field private final NOT_SEEKING:I

.field private final PAUSE_DELAY:I

.field private final SEEKING:I

.field private final SEEK_DELAY:I

.field private clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

.field private createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

.field private volatile ctx:Landroid/content/Context;

.field private eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

.field private mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

.field private mDLNALock:Ljava/lang/Object;

.field private mDataPath:Ljava/lang/String;

.field private final mDimModeDelay:I

.field private final mDimModeTimeout:I

.field private volatile mDimModeTimer:Ljava/util/Timer;

.field private mDmrID:Ljava/lang/String;

.field private mDuration:I

.field private mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

.field private mPackageName:Ljava/lang/String;

.field private final mPackageNamePrefix:Ljava/lang/String;

.field private final mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

.field private mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

.field private mPreSeekMSec:I

.field private mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

.field private mSeeking:Ljava/lang/Integer;

.field private volatile mState:Ljava/lang/Integer;

.field private mStreamingPath:Z

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mThumbnailLock:Ljava/lang/Object;

.field private final mThumbnailTaskTimeout:I

.field private volatile mThumbnailTaskTimer:Ljava/util/Timer;

.field private mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

.field private mbLocalProxy:Z

.field private statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

.field private final switchDimModeOff:Ljava/lang/String;

.field private final switchDimModeOn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v0, -0x1

    sput v0, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 121
    sput-boolean v1, Landroid/media/MediaPluginDLNA;->mResetParams:Z

    .line 122
    sput-boolean v1, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/MediaPlugin$OnEventListener;)V
    .locals 9
    .parameter "context"
    .parameter "path"
    .parameter "eventListener"

    .prologue
    const/16 v6, 0x2710

    const/16 v8, 0x2041

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 125
    invoke-direct {p0}, Landroid/media/MediaPlugin;-><init>()V

    .line 53
    const-string v3, "com.android.server.HtcDongleMode.ON"

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->switchDimModeOn:Ljava/lang/String;

    .line 54
    const-string v3, "com.android.server.HtcDongleMode.OFF"

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->switchDimModeOff:Ljava/lang/String;

    .line 56
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    .line 57
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    .line 58
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 59
    const-string v3, ""

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 60
    const-string v3, ""

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    .line 61
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    .line 62
    iput-boolean v7, p0, Landroid/media/MediaPluginDLNA;->mStreamingPath:Z

    .line 63
    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x1001

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    .line 64
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    .line 65
    iput v7, p0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    .line 66
    new-instance v3, Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    invoke-direct {v3}, Lcom/htc/htcdlnainterface/DLNAStatusBarData;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    .line 92
    iput v7, p0, Landroid/media/MediaPluginDLNA;->CONNECT_DELAY:I

    .line 93
    const/16 v3, 0x64

    iput v3, p0, Landroid/media/MediaPluginDLNA;->PAUSE_DELAY:I

    .line 94
    const/16 v3, 0x3e8

    iput v3, p0, Landroid/media/MediaPluginDLNA;->SEEK_DELAY:I

    .line 95
    const/16 v3, 0x1f4

    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_START_TIMEOUT:I

    .line 96
    const/16 v3, 0xbb8

    iput v3, p0, Landroid/media/MediaPluginDLNA;->COMMAND_SETAV_TIMEOUT:I

    .line 97
    const v3, 0xea60

    iput v3, p0, Landroid/media/MediaPluginDLNA;->FIND_MLHD_TIMEOUT:I

    .line 98
    iput v7, p0, Landroid/media/MediaPluginDLNA;->NOT_SEEKING:I

    .line 99
    const/4 v3, 0x1

    iput v3, p0, Landroid/media/MediaPluginDLNA;->SEEKING:I

    .line 101
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    .line 102
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    .line 107
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 108
    const v3, 0xc350

    iput v3, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimeout:I

    .line 109
    iput v6, p0, Landroid/media/MediaPluginDLNA;->mDimModeDelay:I

    .line 111
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .line 113
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mThumbnailLock:Ljava/lang/Object;

    .line 114
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mThumbnail:Landroid/graphics/Bitmap;

    .line 115
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    .line 116
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    .line 117
    iput v6, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimeout:I

    .line 118
    iput-boolean v7, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    .line 119
    const-string v3, "PackageName://"

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPackageNamePrefix:Ljava/lang/String;

    .line 120
    const-string v3, ""

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;

    .line 123
    iput v7, p0, Landroid/media/MediaPluginDLNA;->mDuration:I

    .line 171
    new-instance v3, Landroid/media/MediaPluginDLNA$1;

    invoke-direct {v3, p0}, Landroid/media/MediaPluginDLNA$1;-><init>(Landroid/media/MediaPluginDLNA;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    .line 126
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 127
    iput-object p3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    .line 128
    new-instance v3, Landroid/media/MediaPluginDLNA$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/media/MediaPluginDLNA$EventHandler;-><init>(Landroid/media/MediaPluginDLNA;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    .line 129
    iput-object p2, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 130
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v3, :cond_5

    .line 133
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const-string v4, "MEDIA_PLAYER_DLNA_PLUGIN"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 134
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 135
    .local v0, PE:Landroid/content/SharedPreferences$Editor;
    const-string v3, "MediaPluginDLNACookie"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    sget v4, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    invoke-static {v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->isCookieValid(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 136
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->generateNewSessionCookie(Landroid/content/Context;)I

    move-result v3

    sput v3, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    .line 137
    :cond_1
    const-string v3, "MediaPluginDLNACookie"

    sget v4, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitDLNA]cookie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    sget-object v3, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v3, :cond_3

    .line 141
    new-instance v3, Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    sget v5, Landroid/media/MediaPluginDLNA;->MediaPluginDLNACookie:I

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/media/medialinkhd/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    sput-object v3, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 149
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->releaseTVHelper()V

    .line 150
    new-instance v3, Landroid/media/medialinkhd/HtcTvDisplayHelper;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    new-instance v5, Landroid/media/MediaPluginDLNA$TVListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/media/MediaPluginDLNA$TVListener;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    invoke-direct {v3, v4, v5}, Landroid/media/medialinkhd/HtcTvDisplayHelper;-><init>(Landroid/content/Context;Landroid/media/medialinkhd/HtcTvDisplayHelper$HtcTvDisplayListener;)V

    iput-object v3, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .line 151
    const/4 v3, 0x0

    sput-boolean v3, Landroid/media/MediaPluginDLNA;->mResetParams:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0           #PE:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :goto_1
    sget-object v3, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v3, :cond_4

    .line 157
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] mDLNAManager == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v3, v8, v7}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 169
    :goto_2
    return-void

    .line 143
    .restart local v0       #PE:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #settings:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    sget-boolean v3, Landroid/media/MediaPluginDLNA;->mResetParams:Z

    if-nez v3, :cond_2

    .line 144
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] reset previous params"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->resetParams()V

    .line 146
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 152
    .end local v0           #PE:Landroid/content/SharedPreferences$Editor;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "[MediaPluginDLNA]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InitDLNA] init HtcDLNAServiceManager failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v3, v8, v7}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto :goto_1

    .line 161
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    sget-object v3, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    iget-object v4, p0, Landroid/media/MediaPluginDLNA;->clientListener:Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;

    invoke-virtual {v3, v4}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setDLNAServiceStatusListener(Landroid/media/medialinkhd/HtcDLNAServiceManager$DLNAServiceStatusListener;)I

    .line 162
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->connect()V

    .line 163
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 165
    :cond_5
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] ctx = null... failed!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    invoke-interface {v3, v8, v7}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    .line 167
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[InitDLNA] out"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$100()Landroid/media/medialinkhd/HtcDLNAServiceManager;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/MediaPluginDLNA;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA;->setState(I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->enterDimMode()V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/MediaPluginDLNA;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->leaveDimMode()V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/MediaPluginDLNA;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$EventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->eventHandler:Landroid/media/MediaPluginDLNA$EventHandler;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaPluginDLNA;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    return-object v0
.end method

.method static synthetic access$1802(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$CreateThumbnailTask;)Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    return-object p1
.end method

.method static synthetic access$1900(Landroid/media/MediaPluginDLNA;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/media/MediaPluginDLNA;->isStreamingPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$202(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$ControllerListener;)Landroid/media/MediaPluginDLNA$ControllerListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mControllerListener:Landroid/media/MediaPluginDLNA$ControllerListener;

    return-object p1
.end method

.method static synthetic access$400(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPluginDLNA$RendererListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$RendererListener;)Landroid/media/MediaPluginDLNA$RendererListener;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mRendererListener:Landroid/media/MediaPluginDLNA$RendererListener;

    return-object p1
.end method

.method static synthetic access$600(Landroid/media/MediaPluginDLNA;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$602(Landroid/media/MediaPluginDLNA;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Landroid/media/MediaPluginDLNA;)Lcom/htc/htcdlnainterface/DLNAStatusBarData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    return-object v0
.end method

.method static synthetic access$900(Landroid/media/MediaPluginDLNA;)Landroid/media/MediaPlugin$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    return-object v0
.end method

.method private enterDimMode()V
    .locals 3

    .prologue
    .line 694
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 695
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[enterDimMode]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.HtcDongleMode.ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 699
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static getMirrorModeState(Lcom/htc/service/WirelessDisplayManager;)I
    .locals 9
    .parameter "wdMgr"

    .prologue
    const/4 v8, 0x3

    .line 829
    const/4 v2, -0x1

    .line 830
    .local v2, ret:I
    invoke-virtual {p0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v3

    .line 831
    .local v3, state:I
    const-string v5, "[MediaPluginDLNA]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-ne v3, v8, :cond_0

    move v4, v3

    .line 852
    .end local v3           #state:I
    .local v4, state:I
    :goto_0
    return v4

    .line 836
    .end local v4           #state:I
    .restart local v3       #state:I
    :cond_0
    const/4 v0, 0x0

    .line 837
    .local v0, count:I
    :goto_1
    const/16 v5, 0xf

    if-ge v0, v5, :cond_1

    .line 839
    const-wide/16 v5, 0xc8

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    invoke-virtual {p0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v3

    .line 845
    const-string v5, "[MediaPluginDLNA]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-ne v3, v8, :cond_2

    .line 851
    :cond_1
    :goto_2
    const-string v5, "[MediaPluginDLNA]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getMirrorModeState][Return state]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 852
    .end local v3           #state:I
    .restart local v4       #state:I
    goto :goto_0

    .line 840
    .end local v4           #state:I
    .restart local v3       #state:I
    :catch_0
    move-exception v1

    .line 841
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "[MediaPluginDLNA]"

    const-string/jumbo v6, "sleep() error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 848
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 800
    :try_start_0
    const-string/jumbo v7, "wireless_display"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/service/WirelessDisplayManager;

    .line 801
    .local v5, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v5, :cond_1

    move-object v1, v6

    .line 824
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    :goto_0
    return-object v1

    .line 804
    .restart local v5       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_1
    const/4 v1, 0x0

    .line 805
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    invoke-virtual {v5}, Lcom/htc/service/WirelessDisplayManager;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v2

    .line 806
    .local v2, dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_3

    .line 807
    :cond_2
    const-string v7, "[MediaPluginDLNA]"

    const-string v8, "[getReadyDongle] No ready to use dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 808
    goto :goto_0

    .line 811
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/DongleInfo;

    .line 812
    .local v0, dongle:Lcom/htc/service/DongleInfo;
    iget-boolean v7, v0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v7, :cond_4

    .line 813
    move-object v1, v0

    .line 814
    const-string v7, "[MediaPluginDLNA]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Found dongle via getDiscoveryDongleList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v0           #dongle:Lcom/htc/service/DongleInfo;
    :cond_5
    if-nez v1, :cond_0

    .line 819
    const-string v7, "[MediaPluginDLNA]"

    const-string v8, "[getReadyDongle] No ready to use dongle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 822
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v2           #dongles:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v3

    .line 823
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "[MediaPluginDLNA]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getReadyDongle] Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 824
    goto :goto_0
.end method

.method private getState()I
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 725
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "propertyName"

    .prologue
    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, clazz:Ljava/lang/Class;
    const/4 v4, 0x0

    .line 1002
    .local v4, propertyValue:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1003
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1004
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 1005
    :catch_0
    move-exception v2

    .line 1006
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWirelessDisplayStatus(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 735
    if-nez p0, :cond_1

    .line 736
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "context is null, can\'t getMirrorDisplayStatus!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    :goto_0
    return v1

    .line 739
    :cond_1
    const-string/jumbo v3, "wireless_display"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 740
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_2

    .line 741
    const-string v2, "[MediaPluginDLNA]"

    const-string v3, "[DLNA]getSystemService failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    :cond_2
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 745
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[DLNA]in Mirror mode"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 746
    goto :goto_0

    .line 748
    :cond_3
    const-string v3, "[MediaPluginDLNA]"

    const-string v4, "[DLNA]not in Mirror mode, check nearby ready dongle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-static {p0}, Landroid/media/MediaPluginDLNA;->startMirror(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[DLNA]there is a ready to use dongle and user select to play on TV"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 751
    goto :goto_0
.end method

.method private isStreamingPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    const/4 v0, 0x1

    .line 1021
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v0

    .line 1022
    :cond_1
    const-string/jumbo v1, "rtsp://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1024
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveDimMode()V
    .locals 3

    .prologue
    .line 702
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 703
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[leaveDimMode]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.HtcDongleMode.OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 707
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private releaseTVHelper()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 894
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    if-eqz v1, :cond_0

    .line 896
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[releaseTVHelper]release TVHelper"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcTvDisplayHelper;->release()V

    .line 898
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .line 900
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :goto_0
    iput-object v4, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    .line 906
    return-void

    .line 900
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, ex:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[releaseTVHelper]release TVHelper failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 904
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    iput-object v4, p0, Landroid/media/MediaPluginDLNA;->mTvHelper:Landroid/media/medialinkhd/HtcTvDisplayHelper;

    throw v1
.end method

.method private declared-synchronized resetParams()V
    .locals 4

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :try_start_1
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_3

    .line 598
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setAutoReleaseAfterPlayCompleted(Z)I

    .line 599
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_1

    .line 600
    :cond_0
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->release()I

    .line 601
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[resetParams]after release"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_1
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->disconnect()V

    .line 604
    const-string v1, "[MediaPluginDLNA]"

    const-string v3, "[resetParams]after disconnect"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_3

    .line 606
    :cond_2
    const/4 v1, 0x0

    sput-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 608
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    :try_start_2
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_4

    sget-boolean v1, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_5

    .line 613
    :cond_4
    const/4 v1, 0x0

    sput-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 617
    :cond_5
    :goto_0
    :try_start_3
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDLNALock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 618
    :try_start_4
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_6

    .line 619
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 620
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 621
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    .line 623
    :cond_6
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    if-eqz v1, :cond_7

    .line 624
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 625
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 626
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    .line 628
    :cond_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 632
    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 636
    :goto_1
    :try_start_6
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    if-eqz v1, :cond_8

    .line 637
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->cancel(Z)Z

    .line 638
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 644
    :cond_8
    :goto_2
    :try_start_7
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_9

    sget-boolean v1, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_a

    .line 645
    :cond_9
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/MediaPluginDLNA;->setWirelessDisplayStatus(Landroid/content/Context;Z)V

    .line 646
    :cond_a
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->releaseTVHelper()V

    .line 647
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->leaveDimMode()V

    .line 648
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 649
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    .line 650
    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->unlockCommand()V

    .line 651
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    .line 652
    const/4 v1, 0x1

    sput-boolean v1, Landroid/media/MediaPluginDLNA;->mResetParams:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 653
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, ex:Ljava/lang/Exception;
    :try_start_a
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetParams]reset DLNA params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 612
    :try_start_b
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_b

    sget-boolean v1, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_5

    .line 613
    :cond_b
    const/4 v1, 0x0

    sput-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    .line 596
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 612
    :catchall_2
    move-exception v1

    :try_start_c
    iget-boolean v2, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v2, :cond_c

    sget-boolean v2, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v2, :cond_d

    .line 613
    :cond_c
    const/4 v2, 0x0

    sput-object v2, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    .line 612
    :cond_d
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 628
    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 629
    :catch_1
    move-exception v0

    .line 630
    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_f
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetParams]reset dim params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 632
    const/4 v1, 0x0

    :try_start_10
    iput-object v1, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    goto/16 :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaPluginDLNA;->mDimModeTimer:Ljava/util/Timer;

    throw v1

    .line 640
    :catch_2
    move-exception v0

    .line 641
    .restart local v0       #ex:Ljava/lang/Exception;
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetParams]cancel createThumbnailTask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_2
.end method

.method public static setDualScreen(Z)V
    .locals 0
    .parameter "bDualScreen"

    .prologue
    .line 995
    sput-boolean p0, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    .line 996
    return-void
.end method

.method private setState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 718
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    monitor-enter v1

    .line 719
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mState:Ljava/lang/Integer;

    .line 720
    monitor-exit v1

    .line 721
    return-void

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setWirelessDisplayStatus(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "status"

    .prologue
    .line 856
    if-nez p0, :cond_0

    .line 857
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "mContext is null, can\'t setMirrorDisplayOnOff!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :goto_0
    return-void

    .line 860
    :cond_0
    const-string v2, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWirelessDisplayStatus to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v1, "TRUE"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string/jumbo v1, "wireless_display"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 862
    .local v0, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v0, :cond_2

    .line 863
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "getSystemService failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 860
    .end local v0           #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_1
    const-string v1, "FALSE"

    goto :goto_1

    .line 867
    .restart local v0       #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_2
    if-eqz p1, :cond_3

    .line 868
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 869
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "MirrorState is ENABLED."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_3
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorModeState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    .line 874
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "MirrorState is PAUSED."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 879
    :cond_4
    invoke-virtual {v0, p1}, Lcom/htc/service/WirelessDisplayManager;->setMirrorDisplayOnOff(Z)I

    goto :goto_0
.end method

.method public static startMirror(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 758
    const-string v5, "[MediaPluginDLNA]"

    const-string v6, "[DLNA]startMirror in"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :try_start_0
    const-string/jumbo v5, "wireless_display"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/WirelessDisplayManager;

    .line 761
    .local v3, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-nez v3, :cond_0

    .line 794
    .end local v3           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :goto_0
    return v4

    .line 764
    .restart local v3       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_0
    invoke-static {p0}, Landroid/media/MediaPluginDLNA;->getReadyDongle(Landroid/content/Context;)Lcom/htc/service/DongleInfo;

    move-result-object v1

    .line 765
    .local v1, dongleInfo:Lcom/htc/service/DongleInfo;
    if-nez v1, :cond_2

    .line 766
    const-string v5, "[MediaPluginDLNA]"

    const-string v6, "[DLNA][startMirror] out no ready to use dongle"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 789
    .end local v1           #dongleInfo:Lcom/htc/service/DongleInfo;
    .end local v3           #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v2

    .line 790
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "[MediaPluginDLNA]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[startMirror] Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v5, "[MediaPluginDLNA]"

    const-string v6, "[startMirror] out"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    .restart local v1       #dongleInfo:Lcom/htc/service/DongleInfo;
    .restart local v3       #wdMgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->popDialog()Z

    move-result v5

    if-nez v5, :cond_3

    .line 772
    const-string v5, "[MediaPluginDLNA]"

    const-string/jumbo v6, "user don\'t want to play on TV"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 777
    :cond_3
    iget-object v0, v1, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    .line 778
    .local v0, bssid:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 779
    invoke-virtual {v3, v0}, Lcom/htc/service/WirelessDisplayManager;->selectDongle(Ljava/lang/String;)V

    .line 780
    invoke-static {v3}, Landroid/media/MediaPluginDLNA;->getMirrorModeState(Lcom/htc/service/WirelessDisplayManager;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 781
    const-string v5, "[MediaPluginDLNA]"

    const-string v6, "[startMirror] selectDongle() in ENABLED state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v4, 0x1

    goto :goto_0

    .line 785
    :cond_4
    const-string v5, "[MediaPluginDLNA]"

    const-string v6, "[startMirror] selectDongle() not get into ENABLED state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 10

    .prologue
    .line 415
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    if-eqz v7, :cond_1

    sget-object v7, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v7, :cond_1

    .line 416
    const-string v7, "[MediaPluginDLNA]"

    const-string v8, "[connect]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 421
    .local v6, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, packageName:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 423
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iput-object v5, p0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    .line 432
    .local v1, applicationName:Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 433
    .local v3, currentAPIntent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 434
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x800

    invoke-static {v7, v8, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 435
    .local v2, contentIntent:Landroid/app/PendingIntent;
    if-eqz v2, :cond_0

    .line 436
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    invoke-virtual {v7, v2}, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->setContentIntent(Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v3           #currentAPIntent:Landroid/content/Intent;
    :cond_0
    :goto_2
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    invoke-virtual {v7, v1}, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->setAppName(Ljava/lang/String;)V

    .line 442
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    invoke-virtual {v7, v1}, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->setControllerName(Ljava/lang/String;)V

    .line 443
    iget-object v7, p0, Landroid/media/MediaPluginDLNA;->statusBarData:Lcom/htc/htcdlnainterface/DLNAStatusBarData;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/htc/htcdlnainterface/DLNAStatusBarData;->setFilterType(I)V

    .line 445
    sget-object v7, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v7}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->connect()I

    .line 447
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #applicationName:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 424
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 425
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    .line 426
    .restart local v5       #packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 429
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v1, ""

    goto :goto_1

    .line 438
    .restart local v1       #applicationName:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 439
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    return v0
.end method

.method public getDLNAThumbnail()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 927
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mThumbnail:Landroid/graphics/Bitmap;

    monitor-exit v1

    return-object v0

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Landroid/media/MediaPluginDLNA;->mDuration:I

    return v0
.end method

.method public handleGetCurrentPosition()I
    .locals 2

    .prologue
    .line 547
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 548
    const/4 v0, 0x0

    .line 550
    :goto_0
    return v0

    .line 549
    :cond_0
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getCurrentPosition()I

    move-result v1

    mul-int/lit16 v0, v1, 0x3e8

    .line 550
    .local v0, nPos:I
    goto :goto_0
.end method

.method public handleOnBufferUpdate(I)V
    .locals 2
    .parameter "percent"

    .prologue
    .line 666
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnBufferUpdate]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method public handleOnPlayComplete()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleOnPlayComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v0, 0x1080

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 663
    return-void
.end method

.method public handleOnPrepared()V
    .locals 3

    .prologue
    .line 656
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepare: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mDmrID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/16 v0, 0x1008

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 658
    return-void
.end method

.method public handlePause()V
    .locals 3

    .prologue
    .line 487
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handlePause]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 489
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handlePause][SKIP][manager is null]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    return-void

    .line 493
    :cond_0
    :try_start_0
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->pause()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_1

    .line 494
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "handlePause failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 497
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v1, 0xbb8

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized handleRelease()V
    .locals 3

    .prologue
    const/16 v2, 0x1200

    .line 587
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleRelease]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 589
    const/16 v0, 0x1200

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 590
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->resetParams()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_0
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleReset()V
    .locals 2

    .prologue
    .line 579
    monitor-enter p0

    :try_start_0
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleReset]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1200

    if-eq v0, v1, :cond_0

    .line 581
    const/16 v0, 0x1001

    invoke-direct {p0, v0}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 582
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->resetParams()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_0
    monitor-exit p0

    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleSeekComplete()V
    .locals 2

    .prologue
    .line 554
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[handleSeekComplete]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return-void
.end method

.method public handleSeekTo(I)V
    .locals 5
    .parameter "msec"

    .prologue
    const/16 v4, 0x1080

    .line 506
    :try_start_0
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/media/MediaPluginDLNA;->isSeeking()Z

    move-result v1

    if-nez v1, :cond_2

    .line 507
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 508
    const-string v1, "[MediaPluginDLNA]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSeekTo] msec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, p1, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    div-int/lit16 v2, p1, 0x3e8

    invoke-virtual {v1, v2}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->seekTo(I)I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_1

    .line 510
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 511
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 512
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v2, 0x2000

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 513
    :cond_0
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "handleSeekTo failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    return-void

    .line 517
    :cond_1
    const/16 v1, 0xbb8

    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 520
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    const/16 v2, 0x2000

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/media/MediaPlugin$OnEventListener;->onStateChanged(II)V

    .line 521
    :cond_3
    const-string v1, "[MediaPluginDLNA]"

    const-string/jumbo v2, "seeking is in progress, reject this seek..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public handleSetDataSource(Ljava/lang/String;)V
    .locals 22
    .parameter "path"

    .prologue
    .line 324
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->setSeeking(I)V

    .line 325
    const-string v6, ""

    .line 326
    .local v6, localIp:Ljava/lang/String;
    const-string v8, ""

    .line 328
    .local v8, mirrorInterface:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "wireless_display"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/service/WirelessDisplayManager;

    .line 329
    .local v7, mgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v7, :cond_0

    .line 330
    invoke-virtual {v7}, Lcom/htc/service/WirelessDisplayManager;->getInterface()Ljava/lang/String;

    move-result-object v8

    .line 331
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NetworkInterface: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 335
    .local v5, ifaces:Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 336
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 337
    .local v4, iface:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 338
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "skip Real iface addresses: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v4           #iface:Ljava/net/NetworkInterface;
    .end local v5           #ifaces:Ljava/util/Enumeration;
    .end local v7           #mgr:Lcom/htc/service/WirelessDisplayManager;
    :catch_0
    move-exception v3

    .line 362
    .local v3, e:Ljava/lang/Exception;
    const-string v17, "[MediaPluginDLNA]"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 366
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_3

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://localhost"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://localhost"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 369
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    .line 377
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "MEDIA_PLAYER_DLNA_PLUGIN"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 378
    .local v12, settings:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 379
    .local v2, PE:Landroid/content/SharedPreferences$Editor;
    const-string v17, "MediaPluginDLNAPath"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, oldPath:Ljava/lang/String;
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[handleSetDataSource]oldPath: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[handleSetDataSource]current state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    sget-object v20, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual/range {v20 .. v20}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getStateNameByStateCode(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v17, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual/range {v17 .. v17}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v17

    if-eqz v17, :cond_4

    sget-object v17, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual/range {v17 .. v17}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    sget-object v17, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual/range {v17 .. v17}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->getState()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    sget-boolean v17, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v17, :cond_e

    .line 384
    :cond_5
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[handleSetDataSource]save new path to SharedPreferences: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v17, "MediaPluginDLNAPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    sget-object v17, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-eqz v17, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/MediaPluginDLNA;->isStreamingPath(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 390
    sget-object v17, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setAVTransportURI(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 391
    const/16 v17, 0x1100

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 392
    const-string v17, "[MediaPluginDLNA]"

    const-string/jumbo v18, "onError: setAVTransportURI failed!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/media/MediaPlugin$OnEventListener;->onError(II)V

    .line 400
    :cond_6
    :goto_2
    const/16 v17, 0x1002

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/MediaPluginDLNA;->setState(I)V

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 403
    const-string v17, "[MediaPluginDLNA]"

    const-string v18, "do seek before play!!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA;->handleSeekTo(I)V

    .line 405
    const-string v17, "[MediaPluginDLNA]"

    const-string/jumbo v18, "reset preseek value"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    .line 412
    :cond_7
    :goto_3
    return-void

    .line 341
    .end local v2           #PE:Landroid/content/SharedPreferences$Editor;
    .end local v9           #oldPath:Ljava/lang/String;
    .end local v12           #settings:Landroid/content/SharedPreferences;
    .restart local v4       #iface:Ljava/net/NetworkInterface;
    .restart local v5       #ifaces:Ljava/util/Enumeration;
    .restart local v7       #mgr:Lcom/htc/service/WirelessDisplayManager;
    :cond_8
    :try_start_1
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Real iface addresses: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getSubInterfaces()Ljava/util/Enumeration;

    move-result-object v16

    .line 343
    .local v16, virtualIfaces:Ljava/util/Enumeration;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 344
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/net/NetworkInterface;

    .line 345
    .local v15, viface:Ljava/net/NetworkInterface;
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " VIRT "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v15}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v14

    .line 347
    .local v14, vaddrs:Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 348
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/InetAddress;

    .line 349
    .local v13, vaddr:Ljava/net/InetAddress;
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "vaddr \t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 352
    .end local v13           #vaddr:Ljava/net/InetAddress;
    .end local v14           #vaddrs:Ljava/util/Enumeration;
    .end local v15           #viface:Ljava/net/NetworkInterface;
    :cond_a
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v11

    .line 353
    .local v11, raddrs:Ljava/util/Enumeration;
    :cond_b
    :goto_5
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 354
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 355
    .local v10, raddr:Ljava/net/InetAddress;
    instance-of v0, v10, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 356
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 357
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "raddr \t"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 371
    .end local v4           #iface:Ljava/net/NetworkInterface;
    .end local v5           #ifaces:Ljava/util/Enumeration;
    .end local v7           #mgr:Lcom/htc/service/WirelessDisplayManager;
    .end local v10           #raddr:Ljava/net/InetAddress;
    .end local v11           #raddrs:Ljava/util/Enumeration;
    .end local v16           #virtualIfaces:Ljava/util/Enumeration;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://127.0.0.1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "http://127.0.0.1"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "http://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    .line 373
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    goto/16 :goto_1

    .line 396
    .restart local v2       #PE:Landroid/content/SharedPreferences$Editor;
    .restart local v9       #oldPath:Ljava/lang/String;
    .restart local v12       #settings:Landroid/content/SharedPreferences;
    :cond_d
    const-string v17, "[MediaPluginDLNA]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[handleSetDataSource] setStreamingDataSource: thumbnail: PackageName://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    sget-object v17, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PackageName://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setStreamingDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 409
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v17

    const/16 v18, 0x1100

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPluginDLNA;->mOnEventListener:Landroid/media/MediaPlugin$OnEventListener;

    move-object/from16 v17, v0

    const/16 v18, 0x2080

    const/16 v19, 0x2081

    invoke-interface/range {v17 .. v19}, Landroid/media/MediaPlugin$OnEventListener;->onResponse(II)V

    goto/16 :goto_3
.end method

.method public handleSetLooping(Z)V
    .locals 4
    .parameter "looping"

    .prologue
    .line 541
    const-string v2, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSetLooping]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string/jumbo v1, "true"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 543
    .local v0, repeat:I
    :goto_1
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1, v0}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setRepeat(I)I

    .line 544
    return-void

    .line 541
    .end local v0           #repeat:I
    :cond_0
    const-string v1, "false"

    goto :goto_0

    .line 542
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleSetVolume(FF)V
    .locals 4
    .parameter "leftVolume"
    .parameter "rightVolume"

    .prologue
    const/high16 v3, 0x42c8

    .line 529
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleSetVoleum]: left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    sget-object v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 535
    sget-object v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    mul-float v1, p1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setVolume(I)I

    goto :goto_0

    .line 537
    :cond_1
    sget-object v0, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    mul-float v1, p2, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->setVolume(I)I

    goto :goto_0
.end method

.method public handleStart()V
    .locals 3

    .prologue
    .line 450
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStart]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 452
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStart][SKIP][manager is null]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_0
    return-void

    .line 456
    :cond_0
    :try_start_0
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->play()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_1

    .line 457
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "handleStart failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 460
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v1, 0x1f4

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public handleStop()V
    .locals 3

    .prologue
    .line 558
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    if-nez v1, :cond_0

    .line 560
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop][SKIP][manager is null]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    return-void

    .line 564
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPluginDLNA;->mbLocalProxy:Z

    if-nez v1, :cond_1

    sget-boolean v1, Landroid/media/MediaPluginDLNA;->mbDualScreen:Z

    if-nez v1, :cond_3

    .line 565
    :cond_1
    sget-object v1, Landroid/media/MediaPluginDLNA;->mDLNAManager:Landroid/media/medialinkhd/HtcDLNAServiceManager;

    invoke-virtual {v1}, Landroid/media/medialinkhd/HtcDLNAServiceManager;->stop()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_2

    .line 566
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "handleStop failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 569
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v1, 0xbb8

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/media/MediaPluginDLNA;->lockCommand(I)V

    goto :goto_0

    .line 571
    :cond_3
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[handleStop][SKIP][not local proxy server...]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 471
    invoke-direct {p0}, Landroid/media/MediaPluginDLNA;->getState()I

    move-result v0

    const/16 v1, 0x1010

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeeking()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 481
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    monitor-enter v1

    .line 482
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lockCommand(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 670
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 673
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    int-to-long v2, p1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 679
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][OUT]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v1, "[MediaPluginDLNA]"

    const-string v2, "[lockCommand][InterruptedException]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    goto :goto_0

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setDLNAThumbnail(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "thumbnail"

    .prologue
    .line 921
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 922
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPluginDLNA;->mThumbnail:Landroid/graphics/Bitmap;

    .line 923
    monitor-exit v1

    .line 924
    return-void

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "msec"

    .prologue
    .line 1013
    iput p1, p0, Landroid/media/MediaPluginDLNA;->mDuration:I

    .line 1014
    return-void
.end method

.method public setPreSeek(I)V
    .locals 3
    .parameter "msec"

    .prologue
    .line 730
    const-string v0, "[MediaPluginDLNA]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreSeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iput p1, p0, Landroid/media/MediaPluginDLNA;->mPreSeekMSec:I

    .line 732
    return-void
.end method

.method public setSeeking(I)V
    .locals 2
    .parameter "seek"

    .prologue
    .line 475
    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    monitor-enter v1

    .line 476
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mSeeking:Ljava/lang/Integer;

    .line 477
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startDLNAThumbnailTask()V
    .locals 4

    .prologue
    .line 909
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    new-instance v0, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    invoke-direct {v0, p0}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;-><init>(Landroid/media/MediaPluginDLNA;)V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    .line 911
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->createThumbnailTask:Landroid/media/MediaPluginDLNA$CreateThumbnailTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/MediaPluginDLNA;->mDataPath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/MediaPluginDLNA$CreateThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 913
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 914
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    .line 915
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mThumbnailTaskTimer:Ljava/util/Timer;

    new-instance v1, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/MediaPluginDLNA$CreateThumbnailTimerTask;-><init>(Landroid/media/MediaPluginDLNA;Landroid/media/MediaPluginDLNA$1;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 918
    :cond_0
    return-void
.end method

.method public unlockCommand()V
    .locals 2

    .prologue
    .line 683
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 686
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    iget-object v0, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 690
    const-string v0, "[MediaPluginDLNA]"

    const-string v1, "[unlockCommand][OUT]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    return-void

    .line 688
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaPluginDLNA;->mPlayerThreadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
