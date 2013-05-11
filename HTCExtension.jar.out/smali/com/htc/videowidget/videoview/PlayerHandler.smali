.class public Lcom/htc/videowidget/videoview/PlayerHandler;
.super Landroid/os/Handler;
.source "PlayerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_AFTER_SEEK:I = 0xc

.field public static final ACTION_BEFORE_SEEK:I = 0xb

.field public static final ACTION_COMPLETE:I = 0xa

.field public static final ACTION_CREATE:I = 0x6

.field public static final ACTION_METADATA:I = 0x8

.field public static final ACTION_PAUSE:I = 0x2

.field public static final ACTION_PLAY:I = 0x1

.field private static final ACTION_PLAYER_MODE:I = 0x9

.field public static final ACTION_RELEASE:I = 0x5

.field public static final ACTION_RESTART:I = 0x4

.field public static final ACTION_SEEKTO:I = 0x7

.field public static final ACTION_STOP:I = 0x3

.field public static final ACTION_WAIT:I = 0x0

.field private static final INVOKE_DISABLE_MEDIA_PLAYER_DLNA:I = 0x4000

.field private static final INVOKE_ENABLE_TIMEOUT_NOTIFICATION:I = 0x4268

.field private static final INVOKE_VIDEO_CHCEK_SLOW_MOTION:I = 0x22de

.field private static final INVOKE_VIDEO_GET_PLAY_MODE:I = 0x22d9

.field private static final INVOKE_VIDEO_GET_SLOW_MOTION_SPEED:I = 0x22df

.field private static final INVOKE_VIDEO_SET_PLAY_MODE:I = 0x22d7

.field private static final INVOKE_VIDEO_SET_SLOW_MOTION:I = 0x22dd

.field private static final INVOKE_VIDEO_SUPPORT_FUNCTION:I = 0x22e7

.field public static final IS_SUPPORT_CAPTURE_FRAME:I = 0x4

.field public static final IS_SUPPORT_FF_RR:I = 0x2

.field public static final IS_SUPPORT_NONE:I = 0x0

.field public static final IS_SUPPORT_SEAMLESS_LOOP:I = 0x8

.field public static final IS_SUPPORT_SLOW_MOTION:I = 0x1

.field public static final IS_SUPPORT_UNKNOWN:I = -0x1

.field public static final MOTION_SPEED_1X:I = 0x1

.field public static final MOTION_SPEED_SLOW:I = 0x0

.field public static final MOTION_SPEED_UNKNOWN:I = -0x1

.field public static final PLAY_SPEED_FAST:I = 0x1

.field public static final PLAY_SPEED_NORMAL:I = 0x0

.field public static final PLAY_SPEED_REWIND:I = 0x3

.field public static final SLOW_MOTION_DISABLE:I = 0x0

.field public static final SLOW_MOTION_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlayerHandler"


# instance fields
.field private isIdle:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mDefaultHtcEnhancer:I

.field private final mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

.field private mFunctionCheckInvokeReturn:I

.field private mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

.field private mHdmiPlugListener:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

.field private mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

.field private mHeadsetPlugListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

.field private mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

.field private final mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsBuffering:Z

.field private mIsSeekingByUser:Z

.field private mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

.field private final mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mPlayerMode:I

.field private final mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPrintLog:Z

.field private final mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUIHandler:Landroid/os/Handler;

.field private final mbufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# direct methods
.method public constructor <init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 4
    .parameter "fragment"
    .parameter "looper"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFunctionCheckInvokeReturn:I

    .line 93
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    .line 94
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mUIHandler:Landroid/os/Handler;

    .line 95
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    .line 96
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 97
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 98
    iput v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPlayerMode:I

    .line 99
    iput v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mDefaultHtcEnhancer:I

    .line 100
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z

    .line 102
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mIsSeekingByUser:Z

    .line 103
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mIsBuffering:Z

    .line 105
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    .line 900
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$1;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mbufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 910
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$2;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 931
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$3;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$3;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 948
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$4;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$4;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1012
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$5;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$5;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1025
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$6;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$6;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 1045
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$7;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$7;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 1179
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    .line 1180
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    .line 1181
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    .line 1182
    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    .line 1183
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$8;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$8;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiPlugListener:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    .line 1194
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler$9;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/PlayerHandler$9;-><init>(Lcom/htc/videowidget/videoview/PlayerHandler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetPlugListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    .line 109
    iput-object p3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mUIHandler:Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    .line 111
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->isNeedtoPrintLog()V

    .line 112
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1311
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 1313
    const-string v2, "PlayerHandler"

    const-string v3, "Abandon audio focus"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1315
    iput-object v4, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 1317
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1318
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1321
    .local v1, contentResolver:Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 1323
    const-string v2, "headsetowner"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1327
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/PlayerHandler;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWith2Int(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/PlayerHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/videowidget/videoview/PlayerHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mIsBuffering:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/PlayerHandler;)Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/PlayerHandler;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithError(II)V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/videowidget/videoview/PlayerHandler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/videowidget/videoview/PlayerHandler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoview/PlayerHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->createSoundEffect()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/videowidget/videoview/PlayerHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Complete()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/videowidget/videoview/PlayerHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mIsSeekingByUser:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/videowidget/videoview/PlayerHandler;Landroid/media/MediaPlayer;IILcom/htc/videowidget/videoview/utilities/PlayerState;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/videowidget/videoview/PlayerHandler;->onInfoAdapter(Landroid/media/MediaPlayer;IILcom/htc/videowidget/videoview/utilities/PlayerState;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized action_AfterSeek(I)V
    .locals 4
    .parameter "seekPosition"

    .prologue
    const/4 v3, 0x2

    .line 459
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 460
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_1

    .line 462
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v0

    .line 465
    .local v0, mDuration:I
    if-lez v0, :cond_1

    if-lt p1, v0, :cond_1

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 467
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Complete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .end local v0           #mDuration:I
    :goto_0
    monitor-exit p0

    return-void

    .line 473
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getStateBeforeSeekTo()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 474
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Play(Z)V

    .line 477
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mIsSeekingByUser:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 459
    .end local v1           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized action_BeforeSeek()V
    .locals 3

    .prologue
    .line 443
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mIsSeekingByUser:Z

    .line 445
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 446
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    .line 449
    .local v1, state:I
    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setStateBeforeSeekTo(I)V

    .line 450
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 452
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Pause(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v1           #state:I
    :cond_0
    monitor-exit p0

    return-void

    .line 443
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private action_Complete()V
    .locals 3

    .prologue
    .line 715
    const-string v1, "PlayerHandler"

    const-string v2, "action_Complete"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 718
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 720
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setCurrentPosition(I)V

    .line 721
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->updateState(I)V

    .line 723
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V

    .line 724
    return-void
.end method

.method private declared-synchronized action_Create(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    .line 482
    monitor-enter p0

    const/4 v9, 0x0

    .line 483
    .local v9, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    .line 485
    .local v7, bundle:Landroid/os/Bundle;
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 487
    const-string v0, "PlayerHandler"

    const-string v1, "action_Create : failed SurfaceHolder is not availavle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerStateFromEnd()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 493
    const-string v0, "PlayerHandler"

    const-string v1, "action_Create : failed getPlayerState is not availavle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 482
    .end local v7           #bundle:Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 496
    .restart local v7       #bundle:Landroid/os/Bundle;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerStateFromEnd()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v9

    .line 499
    invoke-virtual {v9}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v10

    .line 500
    .local v10, uri:Landroid/net/Uri;
    const-string v0, "PlayerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action_Create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v9}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 504
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-nez v0, :cond_3

    .line 506
    new-instance v0, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {v0}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-nez v0, :cond_4

    .line 510
    const-string v0, "PlayerHandler"

    const-string v1, "action_Create : mediaplayer is not availavle"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 516
    :cond_4
    :try_start_3
    const-string v0, "PlayerHandler"

    const-string v1, "action_Create : surface available"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 518
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 519
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 520
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 521
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 522
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 523
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mbufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 524
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 525
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v0, :cond_5

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][PlayerHandler][setDataSource][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_5
    if-eqz v6, :cond_c

    .line 527
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 537
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v0, :cond_7

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][PlayerHandler][setDataSource][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_7
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 543
    invoke-virtual {v9}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v0

    if-ne v0, v11, :cond_8

    .line 544
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->mediaplayer_invoke_enabletimeout(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)V

    .line 547
    :cond_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "boolean"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 548
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->mediaplayer_invoke_disabledlna(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)V

    .line 550
    :cond_9
    const-string v0, "PlayerHandler"

    const-string v1, "action_Create : prepareAsync in"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v0, :cond_a

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][PlayerHandler][prepareAsync][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_a
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v0}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->prepareAsync()V

    .line 553
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v0, :cond_b

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][PlayerHandler][prepareAsync][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_b
    const-string v0, "PlayerHandler"

    const-string v1, "action_Create : prepareAsync out"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 564
    if-eqz v6, :cond_0

    .line 568
    :try_start_4
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 570
    :catch_0
    move-exception v8

    .line 572
    .local v8, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 529
    .end local v8           #ex:Ljava/io/IOException;
    :cond_c
    if-eqz v10, :cond_6

    .line 531
    :try_start_6
    invoke-virtual {v9}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v9}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 532
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v9}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getHeaders()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 556
    :catch_1
    move-exception v8

    .line 558
    .local v8, ex:Ljava/lang/Exception;
    :try_start_7
    const-string v0, "PlayerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 564
    if-eqz v6, :cond_0

    .line 568
    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 570
    :catch_2
    move-exception v8

    .line 572
    .local v8, ex:Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 534
    .end local v8           #ex:Ljava/io/IOException;
    :cond_d
    :try_start_a
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 564
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_e

    .line 568
    :try_start_b
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 573
    :cond_e
    :goto_2
    :try_start_c
    throw v0

    .line 570
    :catch_3
    move-exception v8

    .line 572
    .restart local v8       #ex:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized action_Pause()V
    .locals 1

    .prologue
    .line 652
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Pause(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    monitor-exit p0

    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized action_Pause(Z)V
    .locals 4
    .parameter "isUpdateUI"

    .prologue
    .line 657
    monitor-enter p0

    :try_start_0
    const-string v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action_Pause(), isUpdateUI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 659
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 661
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z

    .line 662
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v1, :cond_0

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][PlayerHandler][pause][START]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->pause()V

    .line 664
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v1, :cond_1

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](302) [OTHER][PlayerHandler][pause][FINISH]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->updateState(I)V

    .line 668
    if-eqz p1, :cond_2

    .line 669
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V

    .line 671
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :cond_3
    monitor-exit p0

    return-void

    .line 657
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized action_Play()V
    .locals 2

    .prologue
    .line 626
    monitor-enter p0

    :try_start_0
    const-string v0, "PlayerHandler"

    const-string v1, "action_Play"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Play(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    monitor-exit p0

    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized action_Play(Z)V
    .locals 4
    .parameter "isUpdateUI"

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    const-string v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action_Play(), isUpdateUI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 635
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 637
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v1, :cond_0

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][PlayerHandler][start][START]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->start()V

    .line 639
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v1, :cond_1

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](302) [OTHER][PlayerHandler][start][FINISH]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->updateState(I)V

    .line 643
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->requestAudioFocus()V

    .line 645
    if-eqz p1, :cond_2

    .line 646
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    :cond_2
    monitor-exit p0

    return-void

    .line 632
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized action_Release()V
    .locals 6

    .prologue
    .line 581
    monitor-enter p0

    :try_start_0
    const-string v2, "PlayerHandler"

    const-string v3, "action_Release"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, strThreadId:Ljava/lang/String;
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasePlayer in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/16 v2, 0xd

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V

    .line 586
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->releaseSoundEffect()V

    .line 587
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 591
    :try_start_1
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before resetPlayer Tid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_0

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](301) [OTHER][PlayerHandler][reset][START]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v2}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->reset()V

    .line 594
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_1

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](302) [OTHER][PlayerHandler][reset][FINISH]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 601
    :cond_1
    :try_start_2
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before releasePlayer Tid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_2

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](301) [OTHER][PlayerHandler][release][START]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_2
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v2}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->release()V

    .line 604
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_3

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](302) [OTHER][PlayerHandler][release][FINISH]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_3
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After releasePlayer Tid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 610
    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    .line 613
    :goto_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->abandonAudioFocus()V

    .line 617
    :cond_4
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasePlayer out "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 618
    monitor-exit p0

    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasePlayer Fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 610
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 581
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #strThreadId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 610
    .restart local v1       #strThreadId:Ljava/lang/String;
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_6
    iput-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 596
    :catch_1
    move-exception v0

    .line 598
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_7
    const-string v2, "PlayerHandler"

    const-string v3, "releasePlayer Fail"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 601
    :try_start_8
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before releasePlayer Tid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_5

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](301) [OTHER][PlayerHandler][release][START]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_5
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v2}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->release()V

    .line 604
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_6

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](302) [OTHER][PlayerHandler][release][FINISH]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_6
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After releasePlayer Tid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 610
    const/4 v2, 0x0

    :try_start_9
    iput-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 606
    :catch_2
    move-exception v0

    .line 608
    :try_start_a
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releasePlayer Fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 610
    const/4 v2, 0x0

    :try_start_b
    iput-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 600
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    .line 601
    :try_start_c
    const-string v3, "PlayerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before releasePlayer Tid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-boolean v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v3, :cond_7

    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](301) [OTHER][PlayerHandler][release][START]"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_7
    iget-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v3}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->release()V

    .line 604
    iget-boolean v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v3, :cond_8

    const-string v3, "AutoTest"

    const-string v4, "[AutoProf](302) [OTHER][PlayerHandler][release][FINISH]"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_8
    const-string v3, "PlayerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After releasePlayer Tid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 610
    const/4 v3, 0x0

    :try_start_d
    iput-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    :goto_1
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 606
    :catch_3
    move-exception v0

    .line 608
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_e
    const-string v3, "PlayerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releasePlayer Fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 610
    const/4 v3, 0x0

    :try_start_f
    iput-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_4
    move-exception v2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
.end method

.method private declared-synchronized action_Seekto(I)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    const-string v1, "PlayerHandler"

    const-string v2, "action_Seekto"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 704
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 706
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setSeeking(Z)V

    .line 708
    :cond_0
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v1, :cond_1

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](301) [OTHER][PlayerHandler][seekTo][START]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v1, p1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->seekTo(I)V

    .line 710
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v1, :cond_2

    const-string v1, "AutoTest"

    const-string v2, "[AutoProf](302) [OTHER][PlayerHandler][seekTo][FINISH]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_2
    monitor-exit p0

    return-void

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized action_Stop()V
    .locals 4

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    const-string v2, "PlayerHandler"

    const-string v3, "action_Stop"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 680
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_3

    .line 682
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getCurrentPosition()I

    move-result v1

    .line 683
    .local v1, pos:I
    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setCurrentPosition(I)V

    .line 684
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->updateState(I)V

    .line 686
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    .line 688
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z

    .line 689
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_1

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](301) [OTHER][PlayerHandler][stop][START]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v2}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->stop()V

    .line 691
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    if-eqz v2, :cond_2

    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](302) [OTHER][PlayerHandler][stop][FINISH]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z

    .line 695
    .end local v1           #pos:I
    :cond_3
    const/16 v2, 0xc

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->updateUiNotificationWithInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 677
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized action_Wait()V
    .locals 2

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    const-string v0, "PlayerHandler"

    const-string v1, "action_wait"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createSoundEffect()V
    .locals 3

    .prologue
    .line 1216
    const-string v1, "PlayerHandler"

    const-string v2, "[createSoundEffect]"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1218
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetPlugListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiPlugListener:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    if-nez v1, :cond_2

    .line 1220
    :cond_0
    const-string v1, "PlayerHandler"

    const-string v2, "ignore createSoundEffect"

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    :cond_1
    :goto_0
    return-void

    .line 1224
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    if-nez v1, :cond_3

    .line 1226
    new-instance v1, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    invoke-direct {v1}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;-><init>()V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    .line 1229
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    if-eqz v1, :cond_4

    .line 1231
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetPlugListener:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;

    invoke-virtual {v1, v0, v2}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->startMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HeadSetHelper$IHeadsetPlugReceiver;)V

    .line 1234
    :cond_4
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEnhancerFactory;->createSoundEffect(Landroid/content/Context;Landroid/media/MediaPlayer;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    .line 1235
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    if-eqz v1, :cond_5

    .line 1238
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    iget v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mDefaultHtcEnhancer:I

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setDefaultHtcEnhancer(I)V

    .line 1239
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->init()V

    .line 1242
    :cond_5
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    if-nez v1, :cond_6

    .line 1244
    new-instance v1, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    invoke-direct {v1}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;-><init>()V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    .line 1247
    :cond_6
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    if-eqz v1, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiPlugListener:Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;

    invoke-virtual {v1, v0, v2}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->startMonitor(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/HdmiHelper$IHdmiPlugReceiver;)Z

    goto :goto_0
.end method

.method private getActionString(I)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 422
    packed-switch p1, :pswitch_data_0

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDEFINED ACTION("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, d:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 423
    .end local v0           #d:Ljava/lang/String;
    :pswitch_0
    const-string v0, "ACTION_WAIT"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 424
    .end local v0           #d:Ljava/lang/String;
    :pswitch_1
    const-string v0, "ACTION_PLAY"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 425
    .end local v0           #d:Ljava/lang/String;
    :pswitch_2
    const-string v0, "ACTION_PAUSE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 426
    .end local v0           #d:Ljava/lang/String;
    :pswitch_3
    const-string v0, "ACTION_STOP"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 427
    .end local v0           #d:Ljava/lang/String;
    :pswitch_4
    const-string v0, "ACTION_RESTART"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 428
    .end local v0           #d:Ljava/lang/String;
    :pswitch_5
    const-string v0, "ACTION_RELEASE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 429
    .end local v0           #d:Ljava/lang/String;
    :pswitch_6
    const-string v0, "ACTION_CREATE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 430
    .end local v0           #d:Ljava/lang/String;
    :pswitch_7
    const-string v0, "ACTION_SEEKTO"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 431
    .end local v0           #d:Ljava/lang/String;
    :pswitch_8
    const-string v0, "ACTION_METADATA"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 432
    .end local v0           #d:Ljava/lang/String;
    :pswitch_9
    const-string v0, "ACTION_PLAYER_MODE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v0           #d:Ljava/lang/String;
    :pswitch_a
    const-string v0, "ACTION_COMPLETE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 434
    .end local v0           #d:Ljava/lang/String;
    :pswitch_b
    const-string v0, "ACTION_AFTER_SEEK"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v0           #d:Ljava/lang/String;
    :pswitch_c
    const-string v0, "ACTION_BEFORE_SEEK"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1147
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .locals 2

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    instance-of v1, v1, Lcom/htc/videowidget/videoview/HtcVideoFgm;

    if-eqz v1, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    .line 1153
    .local v0, Fgm:Lcom/htc/videowidget/videoview/HtcVideoFgm;
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 1155
    .end local v0           #Fgm:Lcom/htc/videowidget/videoview/HtcVideoFgm;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPlayerStateFromEnd()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .locals 2

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    instance-of v1, v1, Lcom/htc/videowidget/videoview/HtcVideoFgm;

    if-eqz v1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFragment:Lcom/htc/videowidget/videoview/HtcVideoFgm;

    .line 1161
    .local v0, Fgm:Lcom/htc/videowidget/videoview/HtcVideoFgm;
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerStateFromEnd()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 1163
    .end local v0           #Fgm:Lcom/htc/videowidget/videoview/HtcVideoFgm;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSupportFunctionString(I)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 287
    packed-switch p1, :pswitch_data_0

    .line 294
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDEFINED FUNCTION("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, d:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 289
    .end local v0           #d:Ljava/lang/String;
    :pswitch_1
    const-string v0, "SLOW_MOTION"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v0           #d:Ljava/lang/String;
    :pswitch_2
    const-string v0, "FF_RR"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 291
    .end local v0           #d:Ljava/lang/String;
    :pswitch_3
    const-string v0, "CAPTURE_FRAME"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 292
    .end local v0           #d:Ljava/lang/String;
    :pswitch_4
    const-string v0, "SEAMLESS_LOOP"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v0           #d:Ljava/lang/String;
    :pswitch_5
    const-string v0, "FUNCTION_NONE"

    .restart local v0       #d:Ljava/lang/String;
    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private isNeedtoPrintLog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1342
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1343
    :cond_0
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    .line 1346
    :goto_0
    return-void

    .line 1345
    :cond_1
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPrintLog:Z

    goto :goto_0
.end method

.method private mediaplayer_invoke_checkslowmotion(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)I
    .locals 6
    .parameter "mp"

    .prologue
    .line 811
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_checkslowmotion"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 813
    .local v2, req:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 814
    const/16 v4, 0x22de

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 817
    .local v1, rep:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 818
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 825
    :goto_0
    return v3

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_checkslowmotion failed :IllegalStateException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 822
    :catch_1
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_checkslowmotion failed :RuntimeException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private mediaplayer_invoke_disabledlna(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 729
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_disabledlna"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 731
    .local v2, req:Landroid/os/Parcel;
    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 735
    .local v1, rep:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 741
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_disabledlna failed :IllegalStateException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 739
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_disabledlna failed :RuntimeException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mediaplayer_invoke_enabletimeout(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 747
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_enabletimeout"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 749
    .local v2, req:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    const/16 v3, 0x4268

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 754
    .local v1, rep:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 760
    :goto_0
    return-void

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_enabletimeout failed :IllegalStateException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 757
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 758
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_enabletimeout failed :RuntimeException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mediaplayer_invoke_getplayermode(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)I
    .locals 6
    .parameter "mp"

    .prologue
    .line 766
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_getplayermode"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 768
    .local v2, req:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    const/16 v4, 0x22d9

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 773
    .local v1, rep:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 774
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 782
    :goto_0
    return v3

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_getplayermode failed :IllegalStateException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 778
    :catch_1
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_getplayermode failed :RuntimeException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private mediaplayer_invoke_getslowmotionspeed(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)I
    .locals 6
    .parameter "mp"

    .prologue
    .line 836
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_getslowmotionspeed"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 838
    .local v2, req:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    const/16 v4, 0x22df

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 842
    .local v1, rep:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 850
    :goto_0
    return v3

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_getslowmotionspeed failed :IllegalStateException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 847
    :catch_1
    move-exception v0

    .line 848
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_getslowmotionspeed failed :RuntimeException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private mediaplayer_invoke_setplayermode(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;I)V
    .locals 5
    .parameter "mp"
    .parameter "mode"

    .prologue
    .line 787
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_setplayermode"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 789
    .local v2, req:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 792
    .local v1, rep:Landroid/os/Parcel;
    const/16 v3, 0x22d7

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 801
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_setplayermode failed :IllegalStateException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 798
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_setplayermode failed :RuntimeException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mediaplayer_invoke_setslowmotionspeed(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 858
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_setslowmotionspeed"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 860
    .local v2, req:Landroid/os/Parcel;
    const-string v3, "android.media.IMediaPlayer"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 861
    const/16 v3, 0x22dd

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 864
    .local v1, rep:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 870
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_setslowmotionspeed failed :IllegalStateException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 868
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "PlayerHandler"

    const-string v4, "mediaplayer_invoke_setslowmotionspeed failed :RuntimeException"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mediaplayer_invoke_videosupportfunction(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)I
    .locals 6
    .parameter "mp"

    .prologue
    .line 882
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_videosupportfunction"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 884
    .local v2, req:Landroid/os/Parcel;
    const-string v4, "android.media.IMediaPlayer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 885
    const/16 v4, 0x22e7

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 888
    .local v1, rep:Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1, v2, v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 889
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 896
    :goto_0
    return v3

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_videosupportfunction failed :IllegalStateException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 893
    :catch_1
    move-exception v0

    .line 894
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "PlayerHandler"

    const-string v5, "mediaplayer_invoke_videosupportfunction failed :RuntimeException"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onInfoAdapter(Landroid/media/MediaPlayer;IILcom/htc/videowidget/videoview/utilities/PlayerState;)Z
    .locals 10
    .parameter "mp"
    .parameter "what"
    .parameter "extra"
    .parameter "state"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1099
    const/16 v5, 0x385

    .line 1100
    .local v5, INFO_Viode_Only:I
    const/16 v0, 0x386

    .line 1101
    .local v0, INFO_Audio_Only:I
    const/16 v4, 0x387

    .line 1102
    .local v4, INFO_Video_Audio:I
    const/16 v3, 0x388

    .line 1103
    .local v3, INFO_Video3D:I
    const/16 v1, 0x3e9

    .line 1104
    .local v1, INFO_EXT_PACKET_LOSS:I
    const/16 v2, 0x5dd

    .line 1106
    .local v2, INFO_RTSP_LIVE_STREAMING:I
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v6, v7

    .line 1142
    :goto_0
    return v6

    .line 1108
    :sswitch_0
    const/16 v8, 0x3e9

    if-ne p3, v8, :cond_1

    .line 1109
    const-string v7, "PlayerHandler"

    const-string v8, "onInfo INFO_EXT_PACKET_LOSS"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    :cond_1
    const/16 v8, 0x385

    if-ne p3, v8, :cond_2

    .line 1112
    const-string v7, "PlayerHandler"

    const-string v8, "onInfo INFO_Viode_Only"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const/4 v7, 0x2

    invoke-virtual {p4, v7}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setClipType(I)V

    goto :goto_0

    .line 1115
    :cond_2
    const/16 v8, 0x386

    if-ne p3, v8, :cond_3

    .line 1116
    const-string v8, "PlayerHandler"

    const-string v9, "onInfo INFO_Audio_Only"

    invoke-static {v8, v9}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p4, v7}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setClipType(I)V

    goto :goto_0

    .line 1119
    :cond_3
    const/16 v8, 0x387

    if-ne p3, v8, :cond_4

    .line 1120
    const-string v7, "PlayerHandler"

    const-string v8, "onInfo INFO_Video_Audio"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p4, v6}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setClipType(I)V

    goto :goto_0

    .line 1123
    :cond_4
    const/16 v8, 0x388

    if-ne p3, v8, :cond_0

    .line 1124
    const-string v7, "PlayerHandler"

    const-string v8, "onInfo INFO_Video3D"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->set3D()V

    goto :goto_0

    .line 1130
    :sswitch_1
    const-string v7, "PlayerHandler"

    const-string v8, "onInfo MEDIA_INFO_NOT_SEEKABLE"

    invoke-static {v7, v8}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setNotSeekable()V

    goto :goto_0

    .line 1134
    :sswitch_2
    const-string v8, "PlayerHandler"

    const-string v9, "onInfo INFO_RTSP_LIVE_STREAMING"

    invoke-static {v8, v9}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setLiveStreaming()V

    .line 1136
    invoke-virtual {p4, v7}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setDuration(I)V

    .line 1137
    invoke-virtual {p4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setNotSeekable()V

    goto :goto_0

    .line 1106
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x321 -> :sswitch_1
        0x5dd -> :sswitch_2
    .end sparse-switch
.end method

.method private releaseSoundEffect()V
    .locals 2

    .prologue
    .line 1255
    const-string v0, "PlayerHandler"

    const-string v1, "[releaseSoundEffect]"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->deinit()V

    .line 1260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHdmiHelper:Lcom/htc/videowidget/videoview/utilities/HdmiHelper;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/HdmiHelper;->stopMonitor()Z

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    if-eqz v0, :cond_2

    .line 1265
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadSetHelper:Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/HeadSetHelper;->stopMonitor()V

    .line 1266
    :cond_2
    return-void
.end method

.method private requestAudioFocus()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1287
    iget-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mAudioManager:Landroid/media/AudioManager;

    if-nez v3, :cond_1

    .line 1289
    const-string v3, "PlayerHandler"

    const-string v4, "Request audio focus"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mAudioManager:Landroid/media/AudioManager;

    .line 1291
    iget-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 1292
    .local v2, ret:I
    if-eq v2, v6, :cond_0

    .line 1294
    const-string v3, "PlayerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request audio focus fail. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :cond_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1298
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 1300
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1301
    .local v1, contentResolver:Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    .line 1303
    const-string v3, "headsetowner"

    const-string v4, "Watch"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1307
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #contentResolver:Landroid/content/ContentResolver;
    .end local v2           #ret:I
    :cond_1
    return-void
.end method

.method private updateUiNotificationWith2Int(II)V
    .locals 3
    .parameter "type1"
    .parameter "type2"

    .prologue
    .line 1170
    const/16 v0, 0xf

    .line 1171
    .local v0, UI_ACTION_MEDIAUPDATE:I
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p2, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWith2Int(IIILandroid/os/Handler;)V

    .line 1172
    return-void
.end method

.method private updateUiNotificationWithError(II)V
    .locals 4
    .parameter "nFramework_err"
    .parameter "nImplement_err"

    .prologue
    .line 1174
    const/16 v0, 0xf

    .line 1175
    .local v0, UI_ACTION_MEDIAUPDATE:I
    const/16 v1, 0xf

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v2, p1, p2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithError(IIIILandroid/os/Handler;)V

    .line 1176
    return-void
.end method

.method private updateUiNotificationWithInt(I)V
    .locals 3
    .parameter "type1"

    .prologue
    .line 1166
    const/16 v0, 0xf

    .line 1167
    .local v0, UI_ACTION_MEDIAUPDATE:I
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, p1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    .line 1168
    return-void
.end method


# virtual methods
.method public captureFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v0}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->captureFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkSlowMotion()I
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 210
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->mediaplayer_invoke_checkslowmotion(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)I

    move-result v1

    .line 215
    .end local v0           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkVideoSupportFunction(I)Z
    .locals 6
    .parameter "checkSupport"

    .prologue
    const/4 v2, 0x0

    .line 244
    if-gez p1, :cond_1

    .line 246
    const-string v3, "PlayerHandler"

    const-string v4, "[checkVideoSupportFunction] Use undefine check item"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :cond_0
    :goto_0
    return v2

    .line 249
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v3, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 252
    .local v1, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    iget v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFunctionCheckInvokeReturn:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 256
    iget-object v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->mediaplayer_invoke_videosupportfunction(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)I

    move-result v3

    iput v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFunctionCheckInvokeReturn:I

    .line 258
    :cond_2
    const-string v3, "PlayerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkVideoSupportFunction] MM Invoke return value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFunctionCheckInvokeReturn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFunctionCheckInvokeReturn:I

    if-gez v3, :cond_3

    .line 261
    const-string v3, "PlayerHandler"

    const-string v4, "[checkVideoSupportFunction] Check invoke return fail"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    iget v3, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mFunctionCheckInvokeReturn:I

    and-int v0, v3, p1

    .line 266
    .local v0, checkResult:I
    packed-switch v0, :pswitch_data_0

    .line 276
    :pswitch_0
    const-string v3, "PlayerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[checkVideoSupportFunction] No support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSupportFunctionString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :pswitch_1
    const-string v2, "PlayerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[checkVideoSupportFunction] Support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSupportFunctionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 127
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSlowMotionSpeed()I
    .locals 2

    .prologue
    .line 220
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 223
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->mediaplayer_invoke_getslowmotionspeed(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)I

    move-result v1

    .line 228
    .end local v0           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x1

    .line 332
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 333
    .local v0, bundle:Landroid/os/Bundle;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 417
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 418
    return-void

    .line 336
    :pswitch_0
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_WAIT \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Wait()V

    goto :goto_0

    .line 341
    :pswitch_1
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_PLAY \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz v0, :cond_1

    const-string v6, "boolean"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 343
    .local v1, isUpdateUI:Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Play(Z)V

    goto :goto_0

    .line 348
    .end local v1           #isUpdateUI:Z
    :pswitch_2
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_PAUSE \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    if-eqz v0, :cond_2

    const-string v6, "boolean"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 350
    .restart local v1       #isUpdateUI:Z
    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Pause(Z)V

    goto :goto_0

    .line 354
    .end local v1           #isUpdateUI:Z
    :pswitch_3
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_RELEASE \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Release()V

    goto :goto_0

    .line 358
    :pswitch_4
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_CREATE \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Create(Landroid/os/Message;)V

    goto :goto_0

    .line 362
    :pswitch_5
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_STOP \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Stop()V

    goto :goto_0

    .line 366
    :pswitch_6
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_RESTART \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_7
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_SEEKTO \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    if-eqz v0, :cond_0

    .line 373
    const-string v6, "int"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 374
    .local v4, pos:I
    if-ltz v4, :cond_0

    .line 376
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Seekto(I)V

    goto :goto_0

    .line 383
    .end local v4           #pos:I
    :pswitch_8
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_METADATA \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v3

    .line 385
    .local v3, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 386
    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->prepare()V

    goto/16 :goto_0

    .line 391
    .end local v3           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :pswitch_9
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_PLAYER_MODE \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    if-eqz v0, :cond_0

    .line 395
    const-string v6, "int"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 396
    .local v2, mode:I
    if-ltz v2, :cond_0

    .line 398
    iget-object v6, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0, v6, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->mediaplayer_invoke_setplayermode(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;I)V

    goto/16 :goto_0

    .line 404
    .end local v2           #mode:I
    :pswitch_a
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_COMPLETE \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Complete()V

    goto/16 :goto_0

    .line 408
    :pswitch_b
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32m ACTION_BEFORE_SEEK \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_BeforeSeek()V

    goto/16 :goto_0

    .line 412
    :pswitch_c
    const-string v6, "PlayerHandler"

    const-string v7, "PlayerHandler: \u001b[32mACTION_AFTER_SEEK \u001b[m"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-eqz v0, :cond_3

    const-string v6, "int"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 414
    .local v5, seekPos:I
    :cond_3
    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_AfterSeek(I)V

    goto/16 :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mIsBuffering:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->isIdle:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v0}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->isPlaying()Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAudioSessionId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v0, p1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->setAudioSessionId(I)V

    .line 322
    :cond_0
    return-void
.end method

.method public setDefaultHtcEnhancer(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1331
    iget v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mDefaultHtcEnhancer:I

    if-ne p1, v0, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    iput p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mDefaultHtcEnhancer:I

    .line 1334
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->setDefaultHtcEnhancer(I)V

    .line 1337
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSoundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->autoUpdateSoundEffect(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    goto :goto_0
.end method

.method public setHeadsetStateChangeListener(Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    .line 1276
    return-void
.end method

.method public setPlayerMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPlayerMode:I

    if-eq v0, p1, :cond_2

    .line 303
    const-string v0, "PlayerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayerMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPlayerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 306
    :cond_0
    const/4 p1, 0x1

    .line 312
    :cond_1
    :goto_0
    iput p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mPlayerMode:I

    .line 313
    const/16 v0, 0x9

    invoke-static {v0, p1, p0}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    .line 315
    :cond_2
    return-void

    .line 308
    :cond_3
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 310
    :cond_4
    const/4 p1, 0x3

    goto :goto_0
.end method

.method public setSlowMotionSpeed()V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 235
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->mediaplayer_invoke_setslowmotionspeed(Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;)V

    .line 240
    .end local v0           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_0
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "surfaceHolder"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 326
    return-void
.end method

.method public stepBackward()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 149
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Play()V

    .line 155
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Pause()V

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 160
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->stepBackward()Z

    .line 168
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1
    :goto_0
    return-void

    .line 164
    .restart local v0       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_2
    const-string v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stepBackward] Call in wrong state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stepForward()V
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    if-eqz v1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 175
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Play()V

    .line 181
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/PlayerHandler;->action_Pause()V

    .line 184
    :cond_0
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 186
    iget-object v1, p0, Lcom/htc/videowidget/videoview/PlayerHandler;->mMediaPlayer:Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;

    invoke-virtual {v1}, Lcom/htc/wrap/android/media/HtcWrapMediaPlayer;->stepForward()Z

    .line 194
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1
    :goto_0
    return-void

    .line 190
    .restart local v0       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_2
    const-string v1, "PlayerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[stepForward] Call in wrong state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
