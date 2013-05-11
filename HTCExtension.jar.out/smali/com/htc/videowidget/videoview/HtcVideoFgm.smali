.class public Lcom/htc/videowidget/videoview/HtcVideoFgm;
.super Landroid/app/Fragment;
.source "HtcVideoFgm.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/htc/videowidget/videoview/IHtcPlayerAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/HtcVideoFgm$14;,
        Lcom/htc/videowidget/videoview/HtcVideoFgm$SetSoundEffectRunnable;,
        Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    }
.end annotation


# static fields
.field private static final ACTION_WAIT_RETRY_TIME:I = 0x32

.field private static final CENTER_BTN_TYPE_PAUSE:I = 0x1f6

.field private static final CENTER_BTN_TYPE_PLAY:I = 0x1f5

.field private static final GET_POSITION_DELAY_TIME:I = 0x1f4

.field private static final HIDE_WINDOW_BKG_DELAY_TIME:I = 0x64

.field private static final NAV_BAR_HEIGHT:I = 0x54

.field private static final REQ_CODE_MSG_SELECT_DMR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HtcVideoFgm"

.field private static final UI_ACTION_AUDIOICONVIEW:I = 0x13

.field private static final UI_ACTION_AUDIO_VIDEO:I = 0x26

.field private static final UI_ACTION_BUFFER:I = 0x12

.field private static final UI_ACTION_CAMERABUTTON:I = 0x18

.field private static final UI_ACTION_CENTER_BUTTON:I = 0x14

.field private static final UI_ACTION_CLEAN_FRAME_BUFFER:I = 0x24

.field private static final UI_ACTION_CONTROLLER_SELECT:I = 0x20

.field private static final UI_ACTION_GETDURATION:I = 0xe

.field private static final UI_ACTION_GETPOSITION:I = 0xc

.field private static final UI_ACTION_GRAYOUT:I = 0x15

.field private static final UI_ACTION_MEDIAUPDATE:I = 0xf

.field private static final UI_ACTION_MEDIAUPDATE_SELECT_DMR:I = 0x21

.field private static final UI_ACTION_MEDIAUPDATE_TITLE:I = 0x1e

.field private static final UI_ACTION_PLAY_BTN:I = 0x11

.field private static final UI_ACTION_SETVIDEOSIZE:I = 0xb

.field private static final UI_ACTION_SHOW_CONTROLLER:I = 0x1b

.field private static final UI_ACTION_SHOW_LOCKSCREEN:I = 0x1d

.field private static final UI_ACTION_SHOW_TOAST:I = 0x27

.field private static final UI_ACTION_SLOWMOTION_BTN:I = 0x1a

.field private static final UI_ACTION_SUBTITLE:I = 0x16

.field private static final UI_ACTION_SURFACEVIEW:I = 0x17

.field private static final UI_ACTION_TEXT_TIME:I = 0x25

.field private static final UI_ACTION_TIMEOUT:I = 0x1c

.field private static final UI_ACTION_TOUCHSCREEN:I = 0x1f

.field private static final UI_ACTION_UPDATE_SEEKBAR_SECONDARY_PROGRESS:I = 0x22

.field private static final UI_ACTION_WAIT:I = 0x23

.field private static final UI_ACTION_WAITINGCURSOR:I = 0x10

.field private static final WAITINGCURSOR_TIMEOUT:I = 0xea60


# instance fields
.field private final NOT_INITIALIZE:I

.field private isDefaultController:Z

.field private isSufaceReady:Z

.field private mActivity:Landroid/app/Activity;

.field private mAudioIconView:Landroid/widget/ImageView;

.field private mBeatsChangeRunnable:Ljava/lang/Runnable;

.field private mBtnCenter:Lcom/htc/widget/HtcRimButton;

.field private mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

.field private final mCenterOnClickListener:Landroid/view/View$OnClickListener;

.field private mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field private mDefaultHtcEnhancer:I

.field private mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

.field private mDisplayMode:I

.field private mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

.field private mFooterControllerListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

.field private mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

.field private mHdmiChaneRunnable:Ljava/lang/Runnable;

.field private mHeadsetChangeRunnable:Ljava/lang/Runnable;

.field private mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

.field private mHelperListener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

.field private mIntentSubtitleNameFilter:Landroid/content/IntentFilter;

.field private mIsNavigationBarExist:Z

.field private mIsSeekbarDraging:Z

.field private mIsSubtitleInitial:Z

.field private mLockModeListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

.field private mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;

.field private mMenu:Landroid/view/Menu;

.field private mPausedPlaybackPosition:I

.field private mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

.field private mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

.field private mPlayerStateListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

.field private mPlayerStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/videowidget/videoview/utilities/PlayerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayerThread:Landroid/os/HandlerThread;

.field private mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

.field private mPrintLog:Z

.field private mProgressText:Landroid/widget/TextView;

.field private mProgressView:Landroid/view/View;

.field private mResumePosition:I

.field private mRetSubtitleIndex:I

.field private mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

.field private mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

.field private mSoundDialogListener:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

.field private mSoundEffectHandler:Landroid/os/Handler;

.field private mSoundEffectThread:Landroid/os/HandlerThread;

.field private mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

.field private mSubtitleName:Ljava/lang/String;

.field private mSubtitleNameReceiver:Landroid/content/BroadcastReceiver;

.field private mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mSurfaceContainer:Landroid/widget/RelativeLayout;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

.field private mToast:Landroid/widget/Toast;

.field private mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

.field private mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

.field private final mViewContainerChangedListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

.field private mbCaptureButtonOn:Z

.field private mbDefaultSubtitleShow:Z

.field private mbDisableAutoDLNA:Z

.field private mbInstantPlay:Z

.field private mbIsClosedCaption:Z

.field private mbIsDMP:Z

.field private mbIsShowMe:Z

.field private mbIsSupportByteSeek:Z

.field private mbIsSupportHighSpeedMode:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    .line 139
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 140
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    .line 141
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    .line 142
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;

    .line 144
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    .line 146
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    .line 147
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-direct {v0, p0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    .line 148
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;

    .line 149
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;

    .line 150
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressText:Landroid/widget/TextView;

    .line 151
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;

    .line 152
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;

    .line 153
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    .line 154
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    .line 155
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    .line 156
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    .line 157
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    .line 158
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z

    .line 159
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isSufaceReady:Z

    .line 160
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    .line 162
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    .line 163
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    .line 164
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    .line 165
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    .line 166
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    .line 168
    iput v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    .line 170
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbInstantPlay:Z

    .line 171
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDisableAutoDLNA:Z

    .line 173
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z

    .line 174
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportByteSeek:Z

    .line 175
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportHighSpeedMode:Z

    .line 178
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsShowMe:Z

    .line 179
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleName:Ljava/lang/String;

    .line 184
    iput v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mRetSubtitleIndex:I

    .line 185
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSubtitleInitial:Z

    .line 186
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    .line 188
    iput v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDefaultHtcEnhancer:I

    .line 189
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDefaultSubtitleShow:Z

    .line 190
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsClosedCaption:Z

    .line 193
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    .line 195
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z

    .line 196
    iput v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->NOT_INITIALIZE:I

    .line 197
    iput v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mResumePosition:I

    .line 198
    iput v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPausedPlaybackPosition:I

    .line 200
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsNavigationBarExist:Z

    .line 886
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$2;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainerChangedListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

    .line 912
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$3;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$3;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCenterOnClickListener:Landroid/view/View$OnClickListener;

    .line 1490
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$5;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$5;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHelperListener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

    .line 1511
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$6;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$6;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStateListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    .line 3179
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$7;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogListener:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    .line 3242
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$8;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mFooterControllerListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 3965
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$9;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    .line 4010
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$10;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$10;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockModeListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    .line 4083
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;

    .line 4084
    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectThread:Landroid/os/HandlerThread;

    .line 4086
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$11;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$11;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHeadsetChangeRunnable:Ljava/lang/Runnable;

    .line 4094
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$12;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$12;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBeatsChangeRunnable:Ljava/lang/Runnable;

    .line 4102
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$13;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$13;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHdmiChaneRunnable:Ljava/lang/Runnable;

    .line 4110
    return-void
.end method

.method private _setDataSource(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V
    .locals 6
    .parameter "p"

    .prologue
    const/16 v5, 0x15

    const/16 v4, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2344
    const/16 v0, 0x25c

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v5, v0, v3, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2345
    const/16 v0, 0x25d

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v5, v0, v3, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2346
    const/16 v0, 0x25

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v2, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 2348
    invoke-virtual {p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2352
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageDelay(ILandroid/os/Handler;I)V

    .line 2353
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setFFFRButtonVisibility(Z)V

    .line 2354
    invoke-direct {p0, v4, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2380
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay()V

    .line 2381
    return-void

    .line 2360
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setFFFRButtonVisibility(Z)V

    .line 2362
    invoke-virtual {p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2364
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z

    if-nez v0, :cond_2

    .line 2366
    invoke-direct {p0, v4, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2367
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->isTrimFunctionAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2369
    const/4 v0, 0x5

    invoke-direct {p0, v0, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2374
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    if-nez v0, :cond_0

    .line 2376
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    .line 2377
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v0, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->setMediaPlayer(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->forceDisableSubtitle()V

    return-void
.end method

.method static synthetic access$1100(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getHelperString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onPrepared_setup_subtitle()V

    return-void
.end method

.method static synthetic access$1300(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSizeByModeAndCheckFunction(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/PlayerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_play()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_pause()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_close()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_error()V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_prepared()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_completion()V

    return-void
.end method

.method static synthetic access$2100(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_seek_completion(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->ui_mediaplayer_info(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->callbackApp(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/videowidget/videoview/HtcVideoFgm;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->refreshCenterBtn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSeekbarDraging:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mAudioIconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/widget/HtcRimButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/widget/HtcRimButton;)Lcom/htc/widget/HtcRimButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBtnCenter:Lcom/htc/widget/HtcRimButton;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCenterOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportByteSeek:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportHighSpeedMode:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/CameraButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/videowidget/videoview/widget/CameraButton;)Lcom/htc/videowidget/videoview/widget/CameraButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/ViewContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsNavigationBarExist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickPlayButton()V

    return-void
.end method

.method static synthetic access$4000(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setCameraBtnRightMargin(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkAndshowController()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkAndhideController()V

    return-void
.end method

.method static synthetic access$4300(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->notifyLockMode(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/htc/videowidget/videoview/HtcVideoFgm;Lcom/htc/videowidget/videoview/widget/LockScreenView;)Lcom/htc/videowidget/videoview/widget/LockScreenView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockModeListener:Lcom/htc/videowidget/videoview/widget/LockScreenView$OnLockModeChangeListener;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay(I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/htc/videowidget/videoview/HtcVideoFgm;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->forceDisableControllerFunction(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickFFButton()V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickRRButton()V

    return-void
.end method

.method static synthetic access$5400(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onMoreMenuItemSelected(IZ)V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickSlowMotionButton()V

    return-void
.end method

.method static synthetic access$5600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHdmiChaneRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHeadsetChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mBeatsChangeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/htc/videowidget/videoview/HtcVideoFgm;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateSoundEffectStyle(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->beatsStateChangeFromOutside()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/videowidget/videoview/HtcVideoFgm;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/videowidget/videoview/HtcVideoFgm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDefaultSubtitleShow:Z

    return v0
.end method

.method private addPlayerState(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V
    .locals 6
    .parameter "newState"

    .prologue
    const/4 v5, 0x1

    .line 3023
    if-nez p1, :cond_0

    .line 3038
    :goto_0
    return-void

    .line 3025
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 3026
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3027
    .local v0, size:I
    const-string v2, "HtcVideoFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPlayerState size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    :goto_1
    if-le v0, v5, :cond_1

    .line 3030
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/PlayerState;

    .line 3031
    .local v1, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3032
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3033
    goto :goto_1

    .line 3034
    .end local v1           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3036
    .end local v0           #size:I
    :cond_2
    const-string v2, "HtcVideoFgm"

    const-string v3, "addPlayerState failed mPlayerStates is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private beatsStateChangeFromOutside()V
    .locals 3

    .prologue
    .line 3149
    const-string v1, "HtcVideoFgm"

    const-string v2, "[beatsStateChangeFromOutside]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v0

    .line 3151
    .local v0, soundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    :goto_0
    if-eqz v0, :cond_0

    .line 3152
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->beatsStateChangeFromOutside()V

    .line 3153
    :cond_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 3154
    return-void

    .line 3150
    .end local v0           #soundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private callbackApp(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1547
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    if-eqz v2, :cond_0

    .line 1550
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1551
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "int"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1552
    .local v1, code:I
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    invoke-interface {v2, v1, v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 1554
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    :cond_0
    return-void
.end method

.method private checkAndhideController()V
    .locals 3

    .prologue
    .line 947
    const-string v1, "HtcVideoFgm"

    const-string v2, "checkAndhideController"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v1, :cond_0

    .line 950
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 953
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 954
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->simpleHide()Z

    .line 957
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCameraButton(Z)V

    .line 960
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_0
    return-void

    .line 956
    .restart local v0       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->hide()Z

    goto :goto_0
.end method

.method private checkAndshowController()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 923
    const-string v1, "HtcVideoFgm"

    const-string v2, "checkAndshowController"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mLockScreenView:Lcom/htc/videowidget/videoview/widget/LockScreenView;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/LockScreenView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    const/16 v1, 0x24

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v3, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 931
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->show()Z

    .line 934
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 935
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    if-eqz v1, :cond_0

    .line 939
    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCameraButton(Z)V

    goto :goto_0
.end method

.method private checkBeforeSavePosition()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 652
    const-string v2, "HtcVideoFgm"

    const-string v3, "can\'t write last position, context = null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return v1

    .line 655
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 656
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-nez v0, :cond_1

    .line 658
    const-string v2, "HtcVideoFgm"

    const-string v3, "saveCurrentPosition failed no state"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :cond_1
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    .line 664
    const-string v2, "HtcVideoFgm"

    const-string v3, "saveCurrentPosition failed no uri"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :cond_2
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 670
    const-string v2, "HtcVideoFgm"

    const-string v3, "saveCurrentPosition failed no path"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_3
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isSeekable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 676
    const-string v2, "HtcVideoFgm"

    const-string v3, "saveCurrentPosition failed due to not seekable"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_4
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isLiveStreaming()Z

    move-result v3

    if-ne v3, v2, :cond_5

    .line 682
    const-string v2, "HtcVideoFgm"

    const-string v3, "saveCurrentPosition failed due to live streaming"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 685
    goto :goto_0
.end method

.method private clickFFButton()V
    .locals 9

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3683
    iget-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportHighSpeedMode:Z

    if-nez v3, :cond_0

    .line 3733
    :goto_0
    return-void

    .line 3686
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 3687
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_3

    .line 3689
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoSpeed()I

    move-result v2

    .line 3690
    .local v2, playspeed:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v3, :cond_1

    .line 3692
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3694
    packed-switch v2, :pswitch_data_0

    .line 3706
    :goto_1
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[clickFFButton] Fast Forward: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3722
    :goto_2
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->isPlaying()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    .line 3724
    :cond_1
    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v6, v4}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3726
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v8, v6, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3727
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v8, v7, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    goto :goto_0

    .line 3699
    :pswitch_0
    const/4 v2, 0x1

    .line 3700
    goto :goto_1

    .line 3703
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_1

    .line 3712
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->stepForward()V

    .line 3713
    const/16 v3, 0xc

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v4, v5}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3714
    const-string v3, "HtcVideoFgm"

    const-string v4, "[clickFFButton] Step Forward"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3716
    :catch_0
    move-exception v0

    .line 3718
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3719
    const-string v3, "HtcVideoFgm"

    const-string v4, "[clickFFButton] Step Forward fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3731
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #playspeed:I
    :cond_3
    const-string v3, "HtcVideoFgm"

    const-string v4, "clickFFButton failed no state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3694
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private clickLocalPlayButton()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3631
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v5, :cond_7

    .line 3633
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v2

    .line 3634
    .local v2, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v2, :cond_4

    .line 3636
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 3638
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoSpeed()I

    move-result v4

    .line 3639
    .local v4, videospeed:I
    if-eqz v4, :cond_1

    .line 3641
    const/4 v5, 0x0

    invoke-direct {p0, v5, v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    .line 3679
    .end local v2           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .end local v4           #videospeed:I
    :cond_0
    :goto_0
    return-void

    .line 3645
    .restart local v2       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .restart local v4       #videospeed:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->pause()V

    goto :goto_0

    .line 3648
    .end local v4           #videospeed:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v5

    if-eq v5, v7, :cond_3

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 3650
    :cond_3
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->play()V

    goto :goto_0

    .line 3655
    :cond_4
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    if-eqz v5, :cond_6

    .line 3657
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 3658
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 3659
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_5

    .line 3661
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getHeaders()Ljava/util/HashMap;

    move-result-object v1

    .line 3662
    .local v1, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v3, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setDataSource(Landroid/net/Uri;Ljava/util/HashMap;)V

    goto :goto_0

    .line 3664
    .end local v1           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    if-eqz v0, :cond_0

    .line 3666
    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_0

    .line 3671
    .end local v0           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_6
    const-string v5, "HtcVideoFgm"

    const-string v6, "there is no played log,can not replay"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3677
    .end local v2           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_7
    const-string v5, "HtcVideoFgm"

    const-string v6, "clickLocalPlayButton failed no mPlayerHandler"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized clickPlayButton()V
    .locals 3

    .prologue
    .line 3556
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 3557
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    .line 3559
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3561
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickStreamPlayButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3572
    :goto_0
    monitor-exit p0

    return-void

    .line 3565
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickLocalPlayButton()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3556
    .end local v0           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3570
    .restart local v0       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1
    :try_start_2
    const-string v1, "HtcVideoFgm"

    const-string v2, "clickPlayButton failed no state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private clickRRButton()V
    .locals 9

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3737
    iget-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportHighSpeedMode:Z

    if-nez v3, :cond_0

    .line 3787
    :goto_0
    return-void

    .line 3740
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 3741
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_3

    .line 3743
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoSpeed()I

    move-result v2

    .line 3744
    .local v2, playspeed:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v3, :cond_1

    .line 3746
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3748
    packed-switch v2, :pswitch_data_0

    .line 3760
    :goto_1
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[clickRRButton] Fast Backward: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    :goto_2
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->isPlaying()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    .line 3778
    :cond_1
    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v6, v4}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3780
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v8, v6, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3781
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v8, v7, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    goto :goto_0

    .line 3753
    :pswitch_0
    const/4 v2, -0x1

    .line 3754
    goto :goto_1

    .line 3757
    :pswitch_1
    const/4 v2, -0x2

    goto :goto_1

    .line 3766
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/PlayerHandler;->stepBackward()V

    .line 3767
    const/16 v3, 0xc

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v4, v5}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3768
    const-string v3, "HtcVideoFgm"

    const-string v4, "[clickRRButton] Step Backward"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3770
    :catch_0
    move-exception v0

    .line 3772
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3773
    const-string v3, "HtcVideoFgm"

    const-string v4, "[clickRRButton] Step Backward fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3785
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v2           #playspeed:I
    :cond_3
    const-string v3, "HtcVideoFgm"

    const-string v4, "clickRRButton failed no state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3748
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private clickSlowMotionButton()V
    .locals 3

    .prologue
    .line 3815
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_0

    .line 3817
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->setSlowMotionSpeed()V

    .line 3818
    const/16 v0, 0x1a

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3820
    :cond_0
    return-void
.end method

.method private clickStreamPlayButton()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 3576
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v4, :cond_8

    .line 3578
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v2

    .line 3579
    .local v2, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v2, :cond_6

    .line 3581
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 3583
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getProtocol()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 3585
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->stop()V

    .line 3627
    .end local v2           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_0
    :goto_0
    return-void

    .line 3589
    .restart local v2       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->pause()V

    goto :goto_0

    .line 3592
    :cond_2
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    if-eq v4, v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 3594
    :cond_3
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v1

    .line 3595
    .local v1, mDuration:I
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getProtocol()I

    move-result v4

    if-ne v4, v6, :cond_4

    .line 3597
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay()V

    goto :goto_0

    .line 3599
    :cond_4
    if-lez v1, :cond_5

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCurrentPosition()I

    move-result v4

    if-lt v4, v1, :cond_5

    .line 3601
    const/16 v4, 0xa

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    goto :goto_0

    .line 3605
    :cond_5
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->play()V

    goto :goto_0

    .line 3611
    .end local v1           #mDuration:I
    :cond_6
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    if-eqz v4, :cond_7

    .line 3613
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 3614
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getHeaders()Ljava/util/HashMap;

    move-result-object v0

    .line 3615
    .local v0, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, v3, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setDataSource(Landroid/net/Uri;Ljava/util/HashMap;)V

    goto :goto_0

    .line 3619
    .end local v0           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #uri:Landroid/net/Uri;
    :cond_7
    const-string v4, "HtcVideoFgm"

    const-string v5, "there is no played log,can not replay"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3625
    .end local v2           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_8
    const-string v4, "HtcVideoFgm"

    const-string v5, "clickStreamPlayButton failed no mPlayerHandler"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createActionHandleThread()V
    .locals 3

    .prologue
    .line 1478
    const-string v0, "HtcVideoFgm"

    const-string v1, "CreateActionHandleThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1481
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PlayerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    .line 1482
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1483
    new-instance v0, Lcom/htc/videowidget/videoview/PlayerHandler;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    .line 1484
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHeadsetStateChangeListener:Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->setHeadsetStateChangeListener(Lcom/htc/videowidget/videoview/PlayerHandler$IHeadsetStateChangeListener;)V

    .line 1485
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    iget v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDefaultHtcEnhancer:I

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/PlayerHandler;->setDefaultHtcEnhancer(I)V

    .line 1487
    :cond_0
    return-void
.end method

.method private createHelper()V
    .locals 2

    .prologue
    .line 1529
    new-instance v0, Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mHelperListener:Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;

    invoke-direct {v0, v1}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;-><init>(Lcom/htc/videowidget/videoview/HtcPlayerHelper$HelperListener;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    .line 1530
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->createHelper(Landroid/app/Activity;)V

    .line 1531
    return-void
.end method

.method private deCodeDxDrmPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fusePath"

    .prologue
    .line 779
    const-string v5, "HtcVideoFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[deCodeDxDrmPath]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :try_start_0
    const-string v1, "/data/DxDrm/fuse"

    .line 783
    .local v1, HEAD:Ljava/lang/String;
    const-string v0, ".eny"

    .line 784
    .local v0, ENY:Ljava/lang/String;
    move-object v2, p1

    .line 785
    .local v2, decodeString:Ljava/lang/String;
    const-string v5, "/data/DxDrm/fuse"

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 786
    const-string v5, ".eny"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 787
    .local v4, end:I
    const/4 v5, 0x0

    add-int/lit8 v6, v4, 0x4

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 790
    const-string v5, "HtcVideoFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[deCodeDxDrmPath], return"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    .end local v0           #ENY:Ljava/lang/String;
    .end local v1           #HEAD:Ljava/lang/String;
    .end local v2           #decodeString:Ljava/lang/String;
    .end local v4           #end:I
    :goto_0
    return-object v2

    .line 793
    :catch_0
    move-exception v3

    .line 795
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, p1

    .line 796
    goto :goto_0
.end method

.method private destroyActionHandleThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1535
    const-string v0, "HtcVideoFgm"

    const-string v1, "onDestroyActionHandleThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1539
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerThread:Landroid/os/HandlerThread;

    .line 1540
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    .line 1542
    :cond_0
    return-void
.end method

.method private forceDisableControllerFunction(I)V
    .locals 8
    .parameter "funcId"

    .prologue
    const/16 v7, 0x8

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2677
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[forceDisableControllerFunction], funcId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 2748
    :cond_0
    :goto_0
    return-void

    .line 2680
    :cond_1
    if-nez p1, :cond_2

    .line 2682
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2683
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2684
    invoke-direct {p0, v3, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2685
    invoke-direct {p0, v4, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_0

    .line 2687
    :cond_2
    if-ne p1, v7, :cond_3

    .line 2689
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2690
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2691
    invoke-direct {p0, v7, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2692
    const/16 v0, 0x9

    invoke-direct {p0, v0, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_0

    .line 2694
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 2696
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    if-eqz v0, :cond_4

    .line 2697
    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCameraButton(Z)V

    .line 2698
    :cond_4
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    .line 2699
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2700
    invoke-direct {p0, p1, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_0

    .line 2702
    :cond_5
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    .line 2704
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2705
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2706
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2708
    invoke-direct {p0, v4, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2709
    invoke-direct {p0, v3, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2710
    invoke-direct {p0, v6, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_0

    .line 2712
    :cond_6
    const/16 v0, 0xf

    if-ne p1, v0, :cond_7

    .line 2714
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2715
    invoke-direct {p0, v5, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_0

    .line 2717
    :cond_7
    const/16 v0, 0xe

    if-ne p1, v0, :cond_a

    .line 2719
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2720
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2722
    iget v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    if-nez v0, :cond_9

    .line 2724
    invoke-direct {p0, v3, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2725
    invoke-direct {p0, v4, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2733
    :goto_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2735
    invoke-direct {p0, v5, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2738
    :cond_8
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2740
    invoke-direct {p0, v6, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto/16 :goto_0

    .line 2729
    :cond_9
    invoke-direct {p0, v3, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2730
    invoke-direct {p0, v4, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_1

    .line 2745
    :cond_a
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2746
    invoke-direct {p0, p1, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto/16 :goto_0
.end method

.method private forceDisableSubtitle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1206
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    if-eqz v0, :cond_1

    .line 1208
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1211
    const/16 v0, 0x24

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v1, v3, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->enableSubtitle(Z)V

    .line 1214
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->changeSubtitle(IZ)V

    .line 1216
    :cond_1
    const-string v0, "HtcVideoFgm"

    const-string v1, "[forceDisableSubtitle] Set subtitle no show via AP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void
.end method

.method private getHelperString(I)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 3231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNDEFINED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3232
    .local v0, d:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3239
    :goto_0
    return-object v0

    .line 3233
    :pswitch_0
    const-string v0, "HELPER_ONHDMICONNECTED"

    goto :goto_0

    .line 3234
    :pswitch_1
    const-string v0, "HELPER_ONHDMIDISCONNECTED"

    goto :goto_0

    .line 3235
    :pswitch_2
    const-string v0, "HELPER_HEADSETSTATECHANGE"

    goto :goto_0

    .line 3236
    :pswitch_3
    const-string v0, "HELPER_BEATSSTATECHANGE"

    goto :goto_0

    .line 3237
    :pswitch_4
    const-string v0, "HELPER_ONAIRPLANMODE"

    goto :goto_0

    .line 3232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getNumPlayerState()I
    .locals 1

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3117
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideCenterButtonDelay()V
    .locals 4

    .prologue
    .line 2886
    const-string v0, "HtcVideoFgm"

    const-string v1, "hideCenterButtonDelay()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2887
    const/16 v0, 0x14

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    const/16 v3, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBooleanDelay(IZLandroid/os/Handler;I)V

    .line 2888
    return-void
.end method

.method private hideCenterButtonInternal()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 2879
    const-string v0, "HtcVideoFgm"

    const-string v1, "hideCenterButtonInternal()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v0}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 2881
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 2882
    return-void
.end method

.method private initForceDisableFunctionTable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 207
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 208
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 209
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 210
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 211
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 212
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 213
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 214
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 215
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 216
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 217
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 218
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 219
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 221
    :cond_0
    return-void
.end method

.method private initSubtitleReceiver()V
    .locals 2

    .prologue
    .line 1042
    const-string v0, "HtcVideoFgm"

    const-string v1, "[initSubtitleReceiver]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v0, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$4;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleNameReceiver:Landroid/content/BroadcastReceiver;

    .line 1081
    return-void
.end method

.method private invokeControllerFunction(IZ)V
    .locals 1
    .parameter "functionId"
    .parameter "isEnable"

    .prologue
    .line 2752
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZZ)V

    .line 2753
    return-void
.end method

.method private invokeControllerFunction(IZZ)V
    .locals 3
    .parameter "functionId"
    .parameter "isEnable"
    .parameter "bToggleState"

    .prologue
    .line 2757
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[invokeControllerFunction], functionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2761
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2762
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunction(IZ)V

    .line 2766
    :cond_0
    :goto_0
    return-void

    .line 2764
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunctionEx(IZZ)V

    goto :goto_0
.end method

.method private isFragmentFullScreen()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    .line 4063
    const/4 v2, 0x0

    .line 4064
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    if-eqz v7, :cond_0

    .line 4066
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4067
    .local v0, display:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 4069
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4070
    .local v1, displaySize:Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4071
    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4072
    .local v3, screenH:I
    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4073
    .local v4, screenW:I
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    invoke-virtual {v7}, Lcom/htc/videowidget/videoview/widget/ViewContainer;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    invoke-virtual {v8}, Lcom/htc/videowidget/videoview/widget/ViewContainer;->getWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 4074
    .local v5, surfaceH:I
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    invoke-virtual {v7}, Lcom/htc/videowidget/videoview/widget/ViewContainer;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    invoke-virtual {v8}, Lcom/htc/videowidget/videoview/widget/ViewContainer;->getWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4075
    .local v6, surfaceW:I
    sub-int v7, v3, v5

    if-ge v7, v9, :cond_0

    sub-int v7, v4, v6

    if-ge v7, v9, :cond_0

    .line 4076
    const/4 v2, 0x1

    .line 4079
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #displaySize:Landroid/graphics/Point;
    .end local v3           #screenH:I
    .end local v4           #screenW:I
    .end local v5           #surfaceH:I
    .end local v6           #surfaceW:I
    :cond_0
    const-string v7, "HtcVideoFgm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isFragmentFullScreen], result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    return v2
.end method

.method private isNeedtoPrintLog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4194
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    const-string v0, "profiler.performance"

    invoke-static {v0, v1}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 4195
    :cond_0
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    .line 4198
    :goto_0
    return-void

    .line 4197
    :cond_1
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    goto :goto_0
.end method

.method private launchSelectPlayer(IZ)V
    .locals 7
    .parameter "resultMsgId"
    .parameter "autoSearch"

    .prologue
    const/4 v6, 0x0

    .line 3475
    const-string v4, "HtcVideoFgm"

    const-string v5, "[launchSelectPlayer]"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 3477
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3479
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/videowidget/videoDMC/DMCUtil;->getSessionCookie(Landroid/content/Context;)I

    move-result v2

    .line 3481
    .local v2, miPreviousDlnaSessionCookie:I
    const-string v4, "com.htc.selectplayer"

    const-string v5, "com.htc.selectplayer.DmrListActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3484
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v3

    .line 3485
    .local v3, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v3, :cond_1

    .line 3487
    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3489
    const-string v4, "SELECTPLAYER_DTCPIP_ONLY"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3490
    const-string v4, "HtcVideoFgm"

    const-string v5, "[launchSelectPlayer] SELECTPLAYER_DTCPIP_ONLY true"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    :goto_0
    const-string v4, "COOKIE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3501
    const-string v4, "HtcVideoFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[launchSelectPlayer] COOKIE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3509
    :goto_1
    return-void

    .line 3492
    :cond_0
    const-string v4, "SELECTPLAYER_DTCPIP_ONLY"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3493
    const-string v4, "HtcVideoFgm"

    const-string v5, "[launchSelectPlayer] SELECTPLAYER_DTCPIP_ONLY false"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3496
    :cond_1
    const-string v4, "SELECTPLAYER_DTCPIP_ONLY"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3497
    const-string v4, "HtcVideoFgm"

    const-string v5, "[launchSelectPlayer] SELECTPLAYER_DTCPIP_ONLY false"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3506
    :catch_0
    move-exception v0

    .line 3507
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "HtcVideoFgm"

    const-string v5, "[launchSelectPlayer]: start DMR list activity fail"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notifyLockMode(Z)V
    .locals 3
    .parameter "isLock"

    .prologue
    .line 4022
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    if-eqz v2, :cond_0

    .line 4024
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4025
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "lock_mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4026
    const/16 v1, 0xe

    .line 4027
    .local v1, code:I
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    invoke-interface {v2, v1, v0}, Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;->onEvent(ILandroid/os/Bundle;)V

    .line 4029
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #code:I
    :cond_0
    return-void
.end method

.method private onCaptureItemClick(Z)V
    .locals 3
    .parameter "bToggleState"

    .prologue
    .line 3513
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCaptureItemClick] toggle state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    .line 3516
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCameraButton(Z)V

    .line 3517
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->setCapturePref(Landroid/content/Context;Z)V

    .line 3518
    return-void
.end method

.method private onMoreMenuItemSelected(IZ)V
    .locals 12
    .parameter "menuID"
    .parameter "bToggleState"

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3352
    invoke-static {p1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->getFunctionStringById(I)Ljava/lang/String;

    move-result-object v4

    .line 3353
    .local v4, s:Ljava/lang/String;
    const-string v6, "HtcVideoFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "More menu selected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 3355
    .local v3, res:Landroid/content/res/Resources;
    if-nez v3, :cond_1

    .line 3357
    const-string v6, "HtcVideoFgm"

    const-string v7, "[onCreateView] res is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3361
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3365
    :pswitch_1
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    if-nez v6, :cond_4

    .line 3366
    iput v9, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    .line 3368
    const v6, 0x609000c

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3369
    .local v1, msg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 3379
    .end local v1           #msg:Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 3381
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3382
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    if-ne v6, v9, :cond_5

    .line 3384
    const/4 v6, -0x1

    invoke-virtual {v0, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3392
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    :goto_2
    const/16 v6, 0xb

    iget v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    iget-object v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v7, v8}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    goto :goto_0

    .line 3371
    :cond_4
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    if-ne v6, v9, :cond_2

    .line 3372
    iput v10, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    .line 3374
    const v6, 0x204031e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3375
    .restart local v1       #msg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 3388
    .end local v1           #msg:Ljava/lang/String;
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-virtual {v0, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 3395
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->startSubtitleSetting()V

    goto :goto_0

    .line 3398
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onCaptureItemClick(Z)V

    goto :goto_0

    .line 3401
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showSoundDialog()V

    goto :goto_0

    .line 3405
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v2

    .line 3406
    .local v2, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v2, :cond_0

    .line 3408
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 3409
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 3411
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/trim/TrimHelper;->callTrimApplication(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 3419
    .end local v2           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .end local v5           #uri:Landroid/net/Uri;
    :pswitch_6
    const/16 v6, 0x1d

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v9, v7}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 3420
    const/16 v6, 0x24

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v9, v7}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    goto/16 :goto_0

    .line 3423
    :pswitch_7
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    if-nez v6, :cond_6

    .line 3425
    new-instance v6, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    .line 3426
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    invoke-virtual {v6, p0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->setPlayer(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V

    .line 3428
    :cond_6
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    if-eqz v6, :cond_0

    .line 3430
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->changeStereoVision(I)V

    goto/16 :goto_0

    .line 3434
    :pswitch_8
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    if-nez v6, :cond_7

    .line 3436
    new-instance v6, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    .line 3437
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    invoke-virtual {v6, p0}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->setPlayer(Lcom/htc/videowidget/videoview/IHtcPlayerAPI;)V

    .line 3439
    :cond_7
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    if-eqz v6, :cond_0

    .line 3441
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;->changeStereoVision(I)V

    goto/16 :goto_0

    .line 3445
    :pswitch_9
    invoke-direct {p0, v9, v9}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->launchSelectPlayer(IZ)V

    goto/16 :goto_0

    .line 3448
    :pswitch_a
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showShareDialog()V

    goto/16 :goto_0

    .line 3452
    :pswitch_b
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v2

    .line 3453
    .restart local v2       #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3455
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->isReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3457
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    if-nez v6, :cond_8

    .line 3459
    new-instance v6, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    .line 3461
    :cond_8
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    if-eqz v6, :cond_0

    .line 3463
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->setMeta(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    .line 3464
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->show()V

    goto/16 :goto_0

    .line 3361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private onPrepared_check_HighSpeedMode()V
    .locals 6

    .prologue
    const/16 v5, 0x25a

    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 1183
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 1184
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1186
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v1, :cond_1

    .line 1188
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->checkVideoSupportFunction(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1190
    :cond_0
    const-string v1, "HtcVideoFgm"

    const-string v2, "[onPrepared_check_HighSpeedMode] Support high speed mode video"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportHighSpeedMode:Z

    .line 1192
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v4, v5, v3, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 1201
    :cond_1
    :goto_0
    return-void

    .line 1196
    :cond_2
    const-string v1, "HtcVideoFgm"

    const-string v2, "[onPrepared_check_HighSpeedMode] Not support high speed mode video"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v4, v5, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    goto :goto_0
.end method

.method private onPrepared_setup_capture()V
    .locals 6

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 1222
    .local v1, playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1224
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v3

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z

    if-eqz v3, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    const/4 v2, 0x0

    .line 1228
    .local v2, videoPath:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v0

    .line 1229
    .local v0, metaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->isReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1231
    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1234
    :cond_2
    if-eqz v2, :cond_3

    .line 1236
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->getCapturePref(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    .line 1237
    const/4 v3, 0x3

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbCaptureButtonOn:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZZ)V

    .line 1238
    const/16 v3, 0x18

    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    goto :goto_0

    .line 1242
    :cond_3
    const-string v3, "HtcVideoFgm"

    const-string v4, "[onPrepared_setup_capture] Couldn\'t get valid path for frame capture!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPrepared_setup_subtitle()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1142
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 1143
    .local v1, playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    iget-boolean v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSubtitleInitial:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1145
    const/4 v4, 0x0

    .line 1146
    .local v4, videoPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1148
    .local v2, srtAfd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v0

    .line 1149
    .local v0, metaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->isReady()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1151
    invoke-interface {v0}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1158
    :cond_0
    :goto_0
    const-string v5, "HtcVideoFgm"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onPrepared_setup_subtitle],  path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getSubtitleFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 1160
    if-eqz v2, :cond_4

    .line 1162
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->SubtitleParse(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)V

    .line 1163
    iput-boolean v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSubtitleInitial:Z

    .line 1179
    .end local v0           #metaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    .end local v2           #srtAfd:Landroid/content/res/AssetFileDescriptor;
    .end local v4           #videoPath:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1153
    .restart local v0       #metaData:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;
    .restart local v2       #srtAfd:Landroid/content/res/AssetFileDescriptor;
    .restart local v4       #videoPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1155
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 1156
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->deCodeDxDrmPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1165
    .end local v3           #uri:Landroid/net/Uri;
    :cond_4
    if-eqz v4, :cond_1

    .line 1167
    iget-boolean v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsShowMe:Z

    if-eqz v5, :cond_5

    .line 1170
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->SubtitleParse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    :goto_3
    iput-boolean v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsSubtitleInitial:Z

    goto :goto_1

    .line 1174
    :cond_5
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->SubtitleParse(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private onhandleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 4157
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 4158
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 4159
    .local v0, action:I
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[dispatchKeyEvent], keyCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 4160
    sparse-switch v1, :sswitch_data_0

    .line 4190
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    .line 4164
    :sswitch_0
    if-ne v0, v2, :cond_0

    .line 4165
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickPlayButton()V

    goto :goto_0

    .line 4168
    :sswitch_1
    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 4169
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->play()V

    goto :goto_0

    .line 4172
    :sswitch_2
    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 4173
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->pause()V

    goto :goto_0

    .line 4176
    :sswitch_3
    if-ne v0, v2, :cond_0

    .line 4177
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickFFButton()V

    goto :goto_0

    .line 4180
    :sswitch_4
    if-ne v0, v2, :cond_0

    .line 4181
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->clickRRButton()V

    goto :goto_0

    .line 4184
    :sswitch_5
    if-ne v0, v2, :cond_0

    .line 4185
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->stop()V

    goto :goto_0

    .line 4160
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_5
        0x59 -> :sswitch_4
        0x5a -> :sswitch_3
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method private refreshCenterBtn(Ljava/lang/String;)V
    .locals 6
    .parameter "caller"

    .prologue
    const/16 v5, 0x1f5

    .line 3861
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v1

    .line 3862
    .local v1, state:I
    const-string v2, "HtcVideoFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshCenterBtn(), caller = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getControllerType()I

    move-result v0

    .line 3865
    .local v0, controllerType:I
    :goto_0
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x259

    if-ne v0, v2, :cond_3

    .line 3867
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 3882
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->hideCenterButtonInternal()V

    .line 3888
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 3863
    .end local v0           #controllerType:I
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 3873
    .restart local v0       #controllerType:I
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCenterButtonInternal(I)V

    goto :goto_1

    .line 3876
    :pswitch_3
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbInstantPlay:Z

    if-nez v2, :cond_1

    .line 3878
    invoke-direct {p0, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCenterButtonInternal(I)V

    goto :goto_1

    .line 3887
    :cond_3
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->hideCenterButtonInternal()V

    goto :goto_1

    .line 3867
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private registerSubtitleReceiver()V
    .locals 3

    .prologue
    .line 1085
    const-string v0, "HtcVideoFgm"

    const-string v1, "[registerSubtitleReceiver]"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1088
    const-string v0, "HtcVideoFgm"

    const-string v1, "[registerSubtitleReceiver] Caller is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIntentSubtitleNameFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 1093
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIntentSubtitleNameFilter:Landroid/content/IntentFilter;

    .line 1094
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIntentSubtitleNameFilter:Landroid/content/IntentFilter;

    const-string v1, "com.htc.intent.action.subtitle_name_list"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleNameReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIntentSubtitleNameFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeOptionMenuItem(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const v2, 0xff02

    const v1, 0xff01

    .line 3836
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3837
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 3838
    :cond_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3839
    invoke-interface {p1, v2}, Landroid/view/Menu;->removeItem(I)V

    .line 3840
    :cond_1
    return-void
.end method

.method private restoreLastPlay()V
    .locals 1

    .prologue
    .line 802
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay(I)V

    .line 803
    return-void
.end method

.method private restoreLastPlay(I)V
    .locals 10
    .parameter "retryCount"

    .prologue
    const/16 v9, 0x23

    const/4 v8, 0x6

    const/4 v7, 0x0

    .line 806
    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_0

    .line 807
    const-string v4, "HtcVideoFgm"

    const-string v5, "restoreLastPlay"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerStateFromEnd()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 809
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-nez v1, :cond_2

    .line 811
    const-string v4, "HtcVideoFgm"

    const-string v5, "restoreLastPlay failed no state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_1
    :goto_0
    return-void

    .line 815
    :cond_2
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-nez v4, :cond_3

    .line 817
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->createActionHandleThread()V

    .line 820
    :cond_3
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v4, :cond_c

    .line 822
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 823
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getFd()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 825
    .local v0, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v0, :cond_b

    .line 827
    :cond_5
    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_6

    .line 828
    const-string v4, "HtcVideoFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreLastPlay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getStatusString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSufaceReady="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isSufaceReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_6
    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isSufaceReady:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    if-eq v4, v8, :cond_7

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    .line 831
    :cond_7
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v9, v4}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 833
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Lcom/htc/videowidget/videoview/PlayerHandler;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 834
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStateListener:Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;

    invoke-virtual {v1, v4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setListener(Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;)V

    .line 835
    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDisableAutoDLNA:Z

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v8, v4, v5}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 837
    const/16 v4, 0x13

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v4, v7, v5}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 839
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v4, :cond_8

    .line 841
    const/16 v4, 0xc

    invoke-direct {p0, v4, v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 842
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v4

    if-nez v4, :cond_8

    .line 844
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v5, 0x387

    invoke-virtual {v4, v5, v7}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    .line 847
    :cond_8
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->startHelper(Landroid/app/Activity;Z)V

    .line 849
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v4

    if-nez v4, :cond_1

    .line 853
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/videowidget/videoview/HtcVideoFgm$1;

    invoke-direct {v4, p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm$1;-><init>(Lcom/htc/videowidget/videoview/HtcVideoFgm;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 868
    .local v2, threadMeta:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 871
    .end local v2           #threadMeta:Ljava/lang/Thread;
    :cond_9
    rem-int/lit8 v4, p1, 0x64

    if-nez v4, :cond_a

    .line 872
    const-string v4, "HtcVideoFgm"

    const-string v5, "restoreLastPlay ,action wait"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_a
    add-int/lit8 p1, p1, 0x1

    .line 875
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    const/16 v5, 0x32

    invoke-static {v9, p1, v4, v5}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntDelay(IILandroid/os/Handler;I)V

    goto/16 :goto_0

    .line 878
    :cond_b
    const-string v4, "HtcVideoFgm"

    const-string v5, "restoreLastPlay failed, no Uri"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 881
    .end local v0           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_c
    const-string v4, "HtcVideoFgm"

    const-string v5, "restoreLastPlay failed, no mPlayerHandler"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 3538
    if-nez p2, :cond_1

    .line 3553
    :cond_0
    :goto_0
    return-void

    .line 3540
    :cond_1
    if-eqz p1, :cond_0

    .line 3542
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    .line 3543
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3545
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3547
    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 3549
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setText(I)V

    .line 3551
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "text"

    .prologue
    .line 3522
    if-nez p2, :cond_1

    .line 3535
    :cond_0
    :goto_0
    return-void

    .line 3524
    :cond_1
    if-eqz p1, :cond_0

    .line 3526
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_2

    .line 3527
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 3528
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3529
    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 3531
    .end local v0           #toast:Landroid/widget/Toast;
    :cond_2
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3533
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setCameraBtnRightMargin(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const v4, 0x2050001

    .line 368
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCameraBtnRightMargin] : orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/CameraButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 373
    .local v0, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 374
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x54

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-virtual {v1, v0}, Lcom/htc/videowidget/videoview/widget/CameraButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    .end local v0           #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 376
    .restart local v0       #rlp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method private setControllerByOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setOrientation(I)V

    .line 362
    :cond_0
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsNavigationBarExist:Z

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setCameraBtnRightMargin(I)V

    .line 364
    :cond_1
    return-void
.end method

.method private setVideoSizeByMode(I)Z
    .locals 17
    .parameter "nMode"

    .prologue
    .line 964
    const-string v13, "HtcVideoFgm"

    const-string v14, "setVideoSizeByMode"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    const/4 v10, 0x0

    .line 967
    .local v10, nNewHeight:I
    const/4 v11, 0x0

    .line 969
    .local v11, nNewWidth:I
    const-wide/16 v6, 0x0

    .line 970
    .local v6, mVideoWidth:D
    const-wide/16 v4, 0x0

    .line 972
    .local v4, mVideoHeight:D
    invoke-virtual/range {p0 .. p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v12

    .line 973
    .local v12, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-nez v12, :cond_0

    .line 975
    const/4 v13, 0x0

    .line 1037
    :goto_0
    return v13

    .line 978
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;

    if-nez v13, :cond_1

    .line 980
    const/4 v13, 0x0

    goto :goto_0

    .line 983
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v9

    .line 984
    .local v9, mViewWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v13}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    .line 986
    .local v8, mViewHeight:I
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoWidth()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_2

    invoke-virtual {v12}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoHeight()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmpl-double v13, v13, v15

    if-nez v13, :cond_3

    .line 988
    :cond_2
    const-string v13, "HtcVideoFgm"

    const-string v14, "setVideoSizeByMode : no video exists or video dimension is not acceptable"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    int-to-double v6, v9

    .line 990
    int-to-double v4, v8

    .line 998
    :goto_1
    div-double v1, v6, v4

    .line 999
    .local v1, aspect:D
    packed-switch p1, :pswitch_data_0

    .line 1029
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    invoke-virtual {v13}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1030
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v11, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1031
    iput v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1033
    const-string v13, "HtcVideoFgm"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setVideoSizeByMode after lp("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), view("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "),video("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") mode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    invoke-virtual {v13, v3}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    invoke-virtual {v13, v11, v10}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setViewSize(II)V

    .line 1037
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 994
    .end local v1           #aspect:D
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v12}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoWidth()D

    move-result-wide v6

    .line 995
    invoke-virtual {v12}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoHeight()D

    move-result-wide v4

    goto/16 :goto_1

    .line 1002
    .restart local v1       #aspect:D
    :pswitch_0
    int-to-double v13, v8

    mul-double/2addr v13, v1

    int-to-double v15, v9

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_4

    .line 1004
    move v10, v8

    .line 1005
    int-to-double v13, v8

    mul-double/2addr v13, v1

    double-to-int v11, v13

    goto/16 :goto_2

    .line 1009
    :cond_4
    move v11, v9

    .line 1010
    int-to-double v13, v9

    div-double/2addr v13, v1

    double-to-int v10, v13

    .line 1012
    goto/16 :goto_2

    .line 1014
    :pswitch_1
    int-to-double v13, v8

    mul-double/2addr v13, v1

    int-to-double v15, v9

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_5

    .line 1016
    move v10, v8

    .line 1017
    int-to-double v13, v8

    mul-double/2addr v13, v1

    double-to-int v11, v13

    goto/16 :goto_2

    .line 1021
    :cond_5
    move v11, v9

    .line 1022
    int-to-double v13, v9

    div-double/2addr v13, v1

    double-to-int v10, v13

    .line 1024
    goto/16 :goto_2

    .line 999
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setVideoSizeByModeAndCheckFunction(I)V
    .locals 4
    .parameter "displayMode"

    .prologue
    const/4 v3, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4033
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_0

    .line 4035
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isFragmentFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4037
    invoke-direct {p0, v1, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 4038
    invoke-direct {p0, v2, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 4039
    invoke-direct {p0, v3, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 4040
    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSizeByMode(I)Z

    .line 4041
    const/16 v0, 0x1d

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v2, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 4059
    :cond_0
    :goto_0
    return-void

    .line 4045
    :cond_1
    if-nez p1, :cond_2

    .line 4047
    invoke-direct {p0, v1, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 4048
    invoke-direct {p0, v2, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 4055
    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 4056
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSizeByMode(I)Z

    goto :goto_0

    .line 4052
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 4053
    invoke-direct {p0, v2, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_1
.end method

.method private setVideoSpeed(IZ)V
    .locals 3
    .parameter "playspeed"
    .parameter "isPlaying"

    .prologue
    const/16 v2, 0x11

    .line 3791
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 3792
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-nez v0, :cond_1

    .line 3794
    const-string v1, "HtcVideoFgm"

    const-string v2, "setVideoSpeed failed no state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    :cond_0
    :goto_0
    return-void

    .line 3797
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-nez v1, :cond_2

    .line 3799
    const-string v1, "HtcVideoFgm"

    const-string v2, "setVideoSpeed failed ,no mPlayerHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3802
    :cond_2
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3805
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v1, p1}, Lcom/htc/videowidget/videoview/PlayerHandler;->setPlayerMode(I)V

    .line 3807
    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setVideoSpeed(I)V

    .line 3809
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 3810
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, p2, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    goto :goto_0
.end method

.method private setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;
    .locals 2
    .parameter "menu"
    .parameter "index"
    .parameter "id"
    .parameter "order"
    .parameter "title"
    .parameter "imageResource"

    .prologue
    .line 3825
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 3826
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 3828
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3829
    invoke-interface {v0, p6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3831
    :cond_0
    return-object p1
.end method

.method private showCameraButton(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 3844
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCameraButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    if-nez v0, :cond_1

    .line 3857
    :cond_0
    :goto_0
    return-void

    .line 3847
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mForceDisableFunctionTable:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3849
    :cond_2
    if-eqz p1, :cond_3

    .line 3851
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/CameraButton;->show()V

    goto :goto_0

    .line 3855
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mCameraButton:Lcom/htc/videowidget/videoview/widget/CameraButton;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/CameraButton;->hide()V

    goto :goto_0
.end method

.method private showCenterButtonInternal(I)V
    .locals 5
    .parameter "type"

    .prologue
    const/16 v4, 0x14

    .line 2856
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCenterButtonInternal() type ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->getControllerType()I

    move-result v0

    .line 2858
    .local v0, controllerType:I
    :goto_0
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x259

    if-ne v0, v1, :cond_2

    .line 2860
    :cond_0
    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1f6

    if-ne p1, v1, :cond_2

    .line 2862
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v4, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 2863
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v4, p1, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2866
    :cond_2
    return-void

    .line 2857
    .end local v0           #controllerType:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private showShareDialog()V
    .locals 6

    .prologue
    .line 3210
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 3211
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3213
    const/4 v0, 0x0

    .line 3214
    .local v0, mimeType:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3216
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 3218
    :cond_0
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 3219
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v2, v0}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;-><init>(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    .line 3220
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showShareDialog() URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", MIME:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    .end local v0           #mimeType:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    if-eqz v3, :cond_2

    .line 3225
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->init()V

    .line 3226
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;->showShareDialog()V

    .line 3228
    :cond_2
    return-void
.end method

.method private showSoundDialog()V
    .locals 8

    .prologue
    .line 3158
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    if-nez v5, :cond_0

    .line 3159
    new-instance v5, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    .line 3161
    :cond_0
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    if-eqz v5, :cond_1

    .line 3163
    const v5, 0x2040249

    invoke-virtual {p0, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3164
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v1

    .line 3165
    .local v1, effect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    :goto_0
    if-eqz v1, :cond_1

    .line 3167
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v0

    .line 3168
    .local v0, currentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentEffect()I

    move-result v6

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogListener:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;

    invoke-virtual {v5, v6, v7, v4, v0}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->showSoundDialog(ILcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper$OnSoundDialogClickListener;Ljava/lang/String;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)Z

    move-result v2

    .line 3169
    .local v2, isShow:Z
    if-nez v2, :cond_1

    .line 3171
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v0, v6}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getNotSupportToastString(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;Z)Ljava/lang/String;

    move-result-object v3

    .line 3172
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3173
    const/16 v5, 0x27

    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v5, v3, v6}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithString(ILjava/lang/String;Landroid/os/Handler;)V

    .line 3177
    .end local v0           #currentState:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    .end local v1           #effect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    .end local v2           #isShow:Z
    .end local v3           #s:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    return-void

    .line 3164
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startSubtitleSetting()V
    .locals 6

    .prologue
    .line 3932
    const-string v4, "HtcVideoFgm"

    const-string v5, "[startSubtitleSetting]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3933
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3934
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.htc.videowidget.res"

    const-string v5, "com.htc.videowidget.videoview.utilities.subtitle.SubtitleMenuList"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3935
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    if-eqz v4, :cond_2

    .line 3939
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleList()Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3941
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 3942
    .local v2, subtitleListSize:I
    new-array v3, v2, [Ljava/lang/String;

    .line 3943
    .local v3, subtitleNameList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3944
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v0

    .line 3943
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3948
    .end local v0           #i:I
    .end local v2           #subtitleListSize:I
    .end local v3           #subtitleNameList:[Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 3949
    .restart local v2       #subtitleListSize:I
    const/4 v3, 0x0

    .line 3951
    .restart local v3       #subtitleNameList:[Ljava/lang/String;
    :cond_1
    const-string v4, "subtitle_name_list"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3952
    const-string v4, "subtitle_list_index"

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getPlayedSubtitleIndex()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3953
    const-string v4, "subtitle_path"

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitlePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3954
    const-string v4, "subtitle_byte_array"

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3955
    const-string v4, "subtitle_charset"

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleCharset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3961
    .end local v2           #subtitleListSize:I
    .end local v3           #subtitleNameList:[Ljava/lang/String;
    :goto_1
    const-string v4, "INTENT_SUBTITLE_IS_CLOSE_CAPTION"

    iget-boolean v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsClosedCaption:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3962
    const/16 v4, 0x64

    invoke-virtual {p0, v1, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3963
    return-void

    .line 3959
    :cond_2
    const-string v4, "subtitle_name_list"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private ui_mediaplayer_close()V
    .locals 2

    .prologue
    .line 1422
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1424
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->stopHelper(Landroid/app/Activity;)V

    .line 1426
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->saveCurrentPosition()V

    .line 1428
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->removePlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrePlayerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;

    .line 1429
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 1431
    return-void
.end method

.method private ui_mediaplayer_completion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1321
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1322
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v3, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1324
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 1325
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 1327
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->updateState(I)V

    .line 1329
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->saveCurrentPosition(I)V

    .line 1331
    invoke-direct {p0, v3, v3}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    .line 1333
    const-string v1, "onCompletion"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->refreshCenterBtn(Ljava/lang/String;)V

    .line 1334
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 1336
    return-void
.end method

.method private ui_mediaplayer_error()V
    .locals 2

    .prologue
    .line 1340
    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1342
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 1343
    return-void
.end method

.method private ui_mediaplayer_info(Landroid/os/Bundle;)V
    .locals 9
    .parameter "bundle"

    .prologue
    const/16 v8, 0x25b

    const/16 v7, 0x259

    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1390
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 1391
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_1

    .line 1393
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1395
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getClipType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1396
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1399
    :cond_0
    if-eqz p1, :cond_1

    .line 1401
    const-string v2, "int2"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1402
    .local v1, what:I
    packed-switch v1, :pswitch_data_0

    .line 1419
    .end local v1           #what:I
    :cond_1
    :goto_0
    return-void

    .line 1404
    .restart local v1       #what:I
    :pswitch_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v8, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1405
    :cond_2
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v7, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    goto :goto_0

    .line 1408
    :pswitch_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isSeekable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v8, v4}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1409
    :cond_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v2, v7, v4}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerGrayOut(IZ)V

    .line 1410
    :cond_4
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-virtual {v2, v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1412
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    const/16 v3, 0x1f4

    invoke-static {v6, v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageDelay(ILandroid/os/Handler;I)V

    goto :goto_0

    .line 1402
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ui_mediaplayer_pause()V
    .locals 3

    .prologue
    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 1130
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v0}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1131
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v2, v0}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1132
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v2, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1133
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1135
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 1137
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCenterButtonInternal(I)V

    .line 1138
    return-void
.end method

.method private ui_mediaplayer_play()V
    .locals 4

    .prologue
    const/16 v3, 0x11

    const/16 v1, 0xc

    const/4 v2, 0x1

    .line 1116
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v0}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1117
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v2, v0}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1119
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v0}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1120
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v0}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 1121
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v2, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1122
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 1124
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showCenterButtonInternal(I)V

    .line 1125
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->hideCenterButtonDelay()V

    .line 1126
    return-void
.end method

.method private ui_mediaplayer_prepared()V
    .locals 8

    .prologue
    const/16 v7, 0x259

    const/16 v6, 0x15

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1249
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1251
    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 1252
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbInstantPlay:Z

    if-ne v2, v4, :cond_8

    .line 1254
    invoke-direct {p0, v5, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    .line 1262
    :goto_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->readLastPosition()I

    move-result v0

    .line 1263
    .local v0, lastPosition:I
    if-lez v0, :cond_0

    .line 1265
    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->seekTo(I)V

    .line 1269
    :cond_0
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbInstantPlay:Z

    if-ne v2, v4, :cond_1

    .line 1271
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v4, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 1274
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 1276
    .local v1, playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    .line 1278
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1280
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->isBuffering()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1282
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v7, v4, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 1292
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isLiveStreaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1294
    const/16 v2, 0x25

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v5, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1295
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v7, v5, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 1297
    :cond_3
    const/16 v2, 0x25d

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 1298
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1300
    sget-boolean v2, Lcom/htc/videowidget/common/Constants;->HAS_3D_BARRIER:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->is3D()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1302
    const/16 v2, 0x8

    invoke-direct {p0, v2, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 1304
    :cond_4
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onPrepared_check_HighSpeedMode()V

    .line 1306
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1307
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onPrepared_setup_subtitle()V

    .line 1309
    :cond_5
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onPrepared_setup_capture()V

    .line 1311
    :cond_6
    const/16 v2, 0xe

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 1312
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 1313
    const/16 v2, 0x26

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 1314
    const-string v2, "onPrepared"

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->refreshCenterBtn(Ljava/lang/String;)V

    .line 1317
    :cond_7
    return-void

    .line 1258
    .end local v0           #lastPosition:I
    .end local v1           #playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_8
    invoke-direct {p0, v5, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    goto/16 :goto_0

    .line 1285
    .restart local v0       #lastPosition:I
    .restart local v1       #playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_9
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isLiveStreaming()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1287
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->isBuffering()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1289
    const/16 v2, 0x25c

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    goto :goto_1
.end method

.method private ui_mediaplayer_seek_completion(Landroid/os/Bundle;)V
    .locals 10
    .parameter "bundle"

    .prologue
    const/16 v9, 0x1f4

    const/16 v8, 0xc

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1347
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 1348
    .local v0, playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_2

    .line 1350
    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z

    if-eqz v4, :cond_2

    .line 1352
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoSpeed()I

    move-result v1

    .line 1353
    .local v1, playspeed:I
    const-string v4, "int2"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1354
    .local v2, pos:I
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v3

    .line 1356
    .local v3, state:I
    if-ne v3, v7, :cond_0

    .line 1358
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v4, :cond_0

    .line 1359
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/16 v5, 0x386

    invoke-virtual {v4, v5, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSeekBar(II)V

    .line 1362
    :cond_0
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v4

    if-ne v4, v7, :cond_3

    .line 1364
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/PlayerHandler;->isBuffering()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1366
    const/16 v4, 0x15

    const/16 v5, 0x25c

    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v4, v5, v7, v6}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 1369
    :cond_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v8, v4}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 1370
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v8, v4, v9}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageDelay(ILandroid/os/Handler;I)V

    .line 1386
    .end local v1           #playspeed:I
    .end local v2           #pos:I
    .end local v3           #state:I
    :cond_2
    :goto_0
    return-void

    .line 1375
    .restart local v1       #playspeed:I
    .restart local v2       #pos:I
    .restart local v3       #state:I
    :cond_3
    if-ge v2, v9, :cond_2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/4 v4, -0x2

    if-ne v1, v4, :cond_2

    .line 1377
    :cond_4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 1378
    invoke-direct {p0, v6, v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    goto :goto_0

    .line 1379
    :cond_5
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1380
    invoke-direct {p0, v6, v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSpeed(IZ)V

    goto :goto_0
.end method

.method private unregisterSubtitleReceiver()V
    .locals 4

    .prologue
    .line 1101
    const-string v1, "HtcVideoFgm"

    const-string v2, "[unregisterSubtitleReceiver]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleNameReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIntentSubtitleNameFilter:Landroid/content/IntentFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    :goto_0
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1109
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unregisterSubtitleReceiver] Fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBeatsIndicator()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 3892
    const-string v6, "HtcVideoFgm"

    const-string v7, "updateBeatsIndicator"

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3894
    .local v1, bundle:Landroid/os/Bundle;
    const-string v6, "int"

    const/16 v7, 0x16

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3895
    const/4 v4, 0x1

    .line 3897
    .local v4, isSupport:Z
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 3898
    :cond_0
    const/4 v4, 0x0

    .line 3909
    :goto_0
    if-ne v4, v0, :cond_1

    .line 3913
    :try_start_0
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentEffect()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 3914
    .local v0, beatsState:Z
    :goto_1
    if-eqz v0, :cond_5

    const v2, 0x6020006

    .line 3915
    .local v2, drawableId:I
    :goto_2
    const-string v6, "beats_indicator_resource"

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3922
    .end local v0           #beatsState:Z
    .end local v2           #drawableId:I
    :cond_1
    :goto_3
    const-string v6, "beats_indicator_is_support"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3923
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 3924
    .local v5, msg:Landroid/os/Message;
    const/16 v6, 0xf

    iput v6, v5, Landroid/os/Message;->what:I

    .line 3925
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3926
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    if-eqz v6, :cond_2

    .line 3927
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-virtual {v6, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3928
    :cond_2
    return-void

    .line 3901
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    sget-object v6, Lcom/htc/videowidget/videoview/HtcVideoFgm$14;->$SwitchMap$com$htc$videowidget$videoview$utilities$soundenhancer$Constant$SoundEffectState:[I

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v7}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 3905
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 3913
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 3914
    .restart local v0       #beatsState:Z
    :cond_5
    const v2, 0x6020005

    goto :goto_2

    .line 3917
    .end local v0           #beatsState:Z
    :catch_0
    move-exception v3

    .line 3919
    .local v3, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_3

    .line 3901
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateSoundEffectStyle(Z)V
    .locals 5
    .parameter "isShowNotSupportToast"

    .prologue
    .line 3127
    const-string v2, "HtcVideoFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateSoundEffectStyle], isShowNotSupportToast= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/PlayerHandler;->getSoundEffect()Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;

    move-result-object v1

    .line 3129
    .local v1, soundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    :goto_0
    if-eqz v1, :cond_1

    .line 3131
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->isStateChange()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 3133
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->autoUpdateSoundEffect(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    .line 3134
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    if-eqz v2, :cond_0

    .line 3135
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentEffect()I

    move-result v3

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->refleshDialogList(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V

    .line 3136
    :cond_0
    if-eqz p1, :cond_1

    .line 3138
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getCurrentState()Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;->getNotSupportToastString(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;Z)Ljava/lang/String;

    move-result-object v0

    .line 3139
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 3140
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v0, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithString(ILjava/lang/String;Landroid/os/Handler;)V

    .line 3144
    .end local v0           #s:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 3145
    return-void

    .line 3128
    .end local v1           #soundEffect:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundEffectBase;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public captureFrame()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2430
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v0, :cond_0

    .line 2432
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/PlayerHandler;->captureFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2434
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 4151
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onhandleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method getCallerActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 3102
    const/4 v0, 0x0

    .line 3103
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 3104
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mActivity:Landroid/app/Activity;

    .line 3108
    :goto_0
    if-nez v0, :cond_0

    .line 3110
    const-string v1, "HtcVideoFgm"

    const-string v2, "[getCallerActivity] Activity is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    :cond_0
    return-object v0

    .line 3106
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 2397
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2398
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 2400
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getCurrentPosition()I

    move-result v1

    .line 2402
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 2408
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2409
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 2411
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v1

    .line 2413
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .locals 3

    .prologue
    .line 3045
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 3046
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3047
    .local v0, size:I
    if-lez v0, :cond_0

    .line 3048
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/PlayerState;

    .line 3055
    .end local v0           #size:I
    :goto_0
    return-object v1

    .line 3050
    .restart local v0       #size:I
    :cond_0
    const-string v1, "HtcVideoFgm"

    const-string v2, "getPlayerState failed size is zero"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    .end local v0           #size:I
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3053
    :cond_1
    const-string v1, "HtcVideoFgm"

    const-string v2, "getPlayerState failed mPlayerStates is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getPlayerStateFromEnd()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .locals 3

    .prologue
    .line 3063
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 3064
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3065
    .local v0, size:I
    if-lez v0, :cond_0

    .line 3066
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/utilities/PlayerState;

    .line 3073
    .end local v0           #size:I
    :goto_0
    return-object v1

    .line 3068
    .restart local v0       #size:I
    :cond_0
    const-string v1, "HtcVideoFgm"

    const-string v2, "getPlayerStateFromEnd failed size is zero"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    .end local v0           #size:I
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3071
    :cond_1
    const-string v1, "HtcVideoFgm"

    const-string v2, "getPlayerStateFromEnd failed mPlayerStates is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getProperty(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .parameter "nTagId"

    .prologue
    const/4 v4, -0x1

    .line 2771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2772
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 2773
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-nez p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2774
    :cond_0
    const-string v3, "TAG_VIDEO_HEIGHT"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2775
    if-eqz v1, :cond_2

    .line 2776
    const-string v3, "TAG_VIDEO_HEIGHT"

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoHeight()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2803
    :cond_1
    :goto_0
    return-object v0

    .line 2778
    :cond_2
    const-string v3, "TAG_VIDEO_HEIGHT"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2779
    :cond_3
    const-string v3, "TAG_VIDEO_WIDTH"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2780
    if-eqz v1, :cond_4

    .line 2781
    const-string v3, "TAG_VIDEO_WIDTH"

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoWidth()D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2783
    :cond_4
    const-string v3, "TAG_VIDEO_WIDTH"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2784
    :cond_5
    const-string v3, "TAG_AUDIO_SESSION_ID"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2785
    if-eqz v1, :cond_1

    .line 2787
    const-string v3, "TAG_AUDIO_SESSION_ID"

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getAudioSessionId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2789
    :cond_6
    const-string v3, "TAG_VIDEO_SPEED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2790
    if-eqz v1, :cond_1

    .line 2792
    const/4 v2, 0x0

    .line 2794
    .local v2, videospeed:I
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getVideoSpeed()I

    move-result v2

    .line 2795
    const-string v3, "TAG_VIDEO_SPEED"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2797
    .end local v2           #videospeed:I
    :cond_7
    const-string v3, "TAG_DISPLAY_MODE"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2798
    const-string v3, "TAG_DISPLAY_MODE"

    iget v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2799
    :cond_8
    const-string v3, "TAG_SET_DEFAULT_SUBTITLE_SHOW"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2800
    const-string v3, "TAG_SET_DEFAULT_SUBTITLE_SHOW"

    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDefaultSubtitleShow:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 2386
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2387
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 2389
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    .line 2391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2419
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2420
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 2422
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 2424
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideCenterButton()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2875
    return-void
.end method

.method public hideController()V
    .locals 2

    .prologue
    .line 2900
    const-string v0, "HtcVideoFgm"

    const-string v1, "hideController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkAndhideController()V

    .line 2902
    return-void
.end method

.method public hideWaitingCursor()V
    .locals 3

    .prologue
    .line 2842
    const-string v0, "HtcVideoFgm"

    const-string v1, "hideWaitingCursor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    const/16 v0, 0x10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 2844
    return-void
.end method

.method public isControllerShowing()Z
    .locals 1

    .prologue
    .line 2907
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_0

    .line 2908
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->isShowing()Z

    move-result v0

    .line 2910
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 2918
    const-string v6, "HtcVideoFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onActivityResult] requestCode ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",resultCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    .line 2921
    const-string v6, "DMR"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2923
    .local v0, dmr:Ljava/lang/String;
    const-string v6, "DLNA_SERVER"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2925
    .local v5, serverID:Ljava/lang/String;
    const-string v6, "HtcVideoFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onActivityResult] dmr ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    const-string v6, "HtcVideoFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onActivityResult] serverID ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 2931
    const/16 v6, 0x21

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v0, v7}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithString(ILjava/lang/String;Landroid/os/Handler;)V

    .line 3020
    .end local v0           #dmr:Ljava/lang/String;
    .end local v5           #serverID:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2934
    :cond_1
    const/16 v6, 0x64

    if-ne p1, v6, :cond_0

    .line 2936
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    if-eqz v6, :cond_0

    .line 2938
    const/4 v1, 0x0

    .line 2939
    .local v1, isCharsetChangeViaUser:Z
    const/4 v3, 0x0

    .line 2940
    .local v3, isSubtitleIndexChange:Z
    const/4 v2, 0x0

    .line 2941
    .local v2, isNeedAutoDetect:Z
    const/4 v6, -0x1

    if-ne p2, v6, :cond_9

    .line 2943
    const-string v6, "subtitle_list_return_index"

    const/4 v7, -0x1

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mRetSubtitleIndex:I

    .line 2944
    const-string v6, "subtitle_charset"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2945
    .local v4, sCharset:Ljava/lang/String;
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mRetSubtitleIndex:I

    if-gez v6, :cond_5

    .line 2947
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 2949
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2950
    const/16 v6, 0x24

    const/16 v7, 0x64

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v7, v8, v9}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2952
    :cond_2
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->enableSubtitle(Z)V

    .line 2953
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDefaultSubtitleShow:Z

    .line 2965
    :goto_1
    iget v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mRetSubtitleIndex:I

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getPlayedSubtitleIndex()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 2968
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2970
    const-string v6, "HtcVideoFgm"

    const-string v7, "[onActivityResult][OK] Return charset is different with auto detect result."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->setEncoding(Ljava/lang/String;Landroid/content/Context;)V

    .line 2972
    const/4 v1, 0x1

    .line 2985
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    .line 2987
    const/4 v2, 0x1

    .line 2989
    :cond_4
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mRetSubtitleIndex:I

    invoke-virtual {v6, v7, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->changeSubtitle(IZ)V

    goto :goto_0

    .line 2957
    :cond_5
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 2959
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2960
    const/16 v6, 0x24

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v6, v7, v8}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 2962
    :cond_6
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->enableSubtitle(Z)V

    .line 2963
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDefaultSubtitleShow:Z

    goto :goto_1

    .line 2974
    :cond_7
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->getEncoding(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2976
    const-string v6, "HtcVideoFgm"

    const-string v7, "[onActivityResult][OK] Return charset is equal to preference save."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    const/4 v1, 0x1

    goto :goto_2

    .line 2982
    :cond_8
    const-string v6, "HtcVideoFgm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onActivityResult][OK] Subtitle menu index has changed must be auto detect charset. New index:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mRetSubtitleIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const/4 v3, 0x1

    goto :goto_2

    .line 2994
    .end local v4           #sCharset:Ljava/lang/String;
    :cond_9
    if-eqz p3, :cond_0

    .line 2996
    const-string v6, "subtitle_charset"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2997
    .restart local v4       #sCharset:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2999
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getSubtitleCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 3001
    const-string v6, "HtcVideoFgm"

    const-string v7, "[onActivityResult][CANCEL] Return charset is different with auto detect result."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->setEncoding(Ljava/lang/String;Landroid/content/Context;)V

    .line 3003
    const/4 v1, 0x1

    .line 3014
    :goto_3
    iget-object v6, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->getPlayedSubtitleIndex()I

    move-result v7

    invoke-virtual {v6, v7, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->changeSubtitle(IZ)V

    goto/16 :goto_0

    .line 3005
    :cond_a
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;->getEncoding(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3007
    const-string v6, "HtcVideoFgm"

    const-string v7, "[onActivityResult][CANCEL] Return charset is equal to preference save."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3008
    const/4 v1, 0x1

    goto :goto_3

    .line 3012
    :cond_b
    const/4 v2, 0x1

    goto :goto_3
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mActivity:Landroid/app/Activity;

    .line 534
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 535
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const v8, 0x2050008

    const/high16 v7, 0x205

    const/4 v6, 0x2

    const/16 v5, 0xc

    const/4 v4, 0x1

    .line 542
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onConfigurationChanged], orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v1, :cond_4

    .line 545
    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setControllerByOrientation(I)V

    .line 549
    :goto_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-virtual {v1, v5}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->hasMessages(I)Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 551
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v5, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 552
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    const/16 v2, 0x3e8

    invoke-static {v5, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageDelay(ILandroid/os/Handler;I)V

    .line 555
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 558
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v6, :cond_5

    .line 560
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 561
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 568
    :goto_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 573
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 574
    :cond_2
    const-string v1, "onConfigurationChanged"

    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->refreshCenterBtn(Ljava/lang/String;)V

    .line 575
    :cond_3
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 576
    return-void

    .line 547
    :cond_4
    invoke-direct {p0, v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setControllerByOrientation(I)V

    goto :goto_0

    .line 565
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 566
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveInstanceState"

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isNeedtoPrintLog()V

    .line 247
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][HtcVideoFgm][onCreate][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 252
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->createHelper()V

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setHasOptionsMenu(Z)V

    .line 254
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->initForceDisableFunctionTable()V

    .line 255
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->initSubtitleReceiver()V

    .line 257
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpdateHeadsetThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectThread:Landroid/os/HandlerThread;

    .line 258
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;

    .line 260
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][HtcVideoFgm][onCreate][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v7, 0xff02

    const v2, 0xff01

    const/4 v4, 0x1

    .line 470
    const-string v0, "HtcVideoFgm"

    const-string v1, "[onCreateOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const v5, 0x20402d8

    const v6, 0x20800c7

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;

    .line 472
    const v5, 0x2040323

    const v6, 0x20800a1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;

    .line 473
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x2050008

    const/high16 v10, 0x205

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 304
    const-string v4, "HtcVideoFgm"

    const-string v5, "[onCreateView]"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const v4, 0x6030014

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 308
    .local v3, view:Landroid/view/View;
    const v4, 0x60b0045

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    iput-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    .line 309
    const v4, 0x60b0043

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/videowidget/videoview/widget/ViewContainer;

    iput-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    .line 310
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainer:Lcom/htc/videowidget/videoview/widget/ViewContainer;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mViewContainerChangedListener:Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;

    invoke-virtual {v4, v5}, Lcom/htc/videowidget/videoview/widget/ViewContainer;->setListener(Lcom/htc/videowidget/videoview/widget/ViewContainer$OnViewContainerChangedListener;)V

    .line 311
    const v4, 0x60b0044

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceContainer:Landroid/widget/RelativeLayout;

    .line 312
    const v4, 0x60b0048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressView:Landroid/view/View;

    .line 313
    const v4, 0x60b0049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mProgressText:Landroid/widget/TextView;

    .line 314
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    .line 315
    const v4, 0x60b0047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 317
    .local v2, sh:Landroid/view/SurfaceHolder;
    invoke-interface {v2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 319
    new-instance v4, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x259

    iget-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsNavigationBarExist:Z

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    .line 320
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mFooterControllerListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    invoke-virtual {v4, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V

    .line 321
    iget-boolean v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsClosedCaption:Z

    if-ne v4, v8, :cond_1

    .line 322
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const v5, 0x6090002

    invoke-virtual {v4, v9, v5}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setMoreMenuItemText(II)V

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 325
    .local v1, rotation:I
    packed-switch v1, :pswitch_data_0

    .line 336
    invoke-direct {p0, v8}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setControllerByOrientation(I)V

    .line 340
    :goto_0
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    .line 343
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 344
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 351
    :goto_1
    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V

    .line 353
    return-object v3

    .line 329
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    invoke-direct {p0, v8}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setControllerByOrientation(I)V

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-direct {p0, v9}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setControllerByOrientation(I)V

    goto :goto_0

    .line 348
    .restart local v0       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 349
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][HtcVideoFgm][onDestroy][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->destoryHelper(Landroid/app/Activity;)V

    .line 274
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    .line 275
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mShareDialogHelper:Lcom/htc/videowidget/videoview/utilities/share/ShareDialogHelper;

    .line 276
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mStereoDialogHelper:Lcom/htc/videowidget/videoview/utilities/stereo/StereoDialogHelper;

    .line 277
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDetailsDialogHelper:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    .line 278
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleNameReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPausedPlaybackPosition:I

    .line 280
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->stopRenderSubtitle()V

    .line 283
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->releaseSubtitle()V

    .line 284
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;->releaseSubtitleList()V

    .line 285
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleOperator:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleOperator;

    .line 287
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 289
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 290
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectHandler:Landroid/os/Handler;

    .line 291
    :cond_2
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 293
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 294
    iput-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundEffectThread:Landroid/os/HandlerThread;

    .line 296
    :cond_3
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_4

    .line 297
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][HtcVideoFgm][onDestroy][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/16 v3, 0x20

    .line 480
    const-string v1, "HtcVideoFgm"

    const-string v2, "[onOptionsItemSelected]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x1

    .line 482
    .local v0, bRet:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 495
    const/4 v0, 0x0

    .line 498
    :goto_0
    return v0

    .line 485
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/AudioHelper;->popupVolumePanel(Landroid/content/Context;)V

    .line 487
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->showBrightnessDialog()V

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v3, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0xff01
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v2, :cond_0

    .line 413
    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](301) [OTHER][HtcVideoFgm][onPause][START]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    const/16 v2, 0x1c

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 415
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 416
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 417
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v1

    .line 420
    .local v1, state:I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 422
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 424
    :cond_1
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 427
    .end local v1           #state:I
    :cond_2
    const/16 v2, 0x1d

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 428
    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 429
    const/16 v2, 0x13

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 431
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->unregisterSubtitleReceiver()V

    .line 435
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 436
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    if-eqz v2, :cond_3

    .line 437
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSoundDialogHelper:Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogHelper;->dismissSoundDialog()V

    .line 438
    :cond_3
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    if-eqz v2, :cond_4

    .line 439
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->stopBrightnessHelper()V

    .line 440
    :cond_4
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v2, :cond_5

    .line 441
    const-string v2, "AutoTest"

    const-string v3, "[AutoProf](302) [OTHER][HtcVideoFgm][onPause][FINISH]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_5
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0xff02

    const v2, 0xff01

    const/4 v4, 0x1

    .line 506
    const-string v0, "HtcVideoFgm"

    const-string v1, "[onPrepareOptionsMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mMenu:Landroid/view/Menu;

    .line 508
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->removeOptionMenuItem(Landroid/view/Menu;)V

    .line 509
    const v5, 0x20402d8

    const v6, 0x20800c7

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;

    .line 510
    const v5, 0x2040323

    const v6, 0x20800a1

    move-object v0, p0

    move-object v1, p1

    move v2, v7

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setupActionbarBtn(Landroid/view/Menu;IIIII)Landroid/view/Menu;

    .line 511
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->updateBeatsIndicator()V

    .line 512
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 513
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_0

    .line 450
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][HtcVideoFgm][onResume][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 452
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->createActionHandleThread()V

    .line 453
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->registerSubtitleReceiver()V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showSurfaceView(Z)V

    .line 457
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHelper:Lcom/htc/videowidget/videoview/HtcPlayerHelper;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/HtcPlayerHelper;->startBrightnessHelper()V

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->restoreLastPlay()V

    .line 461
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_2

    .line 462
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][HtcVideoFgm][onResume][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][HtcVideoFgm][onStart][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 389
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_1

    .line 390
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][HtcVideoFgm][onStart][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_0

    .line 399
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](301) [OTHER][HtcVideoFgm][onStop][START]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->showSurfaceView(Z)V

    .line 402
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->destroyActionHandleThread()V

    .line 403
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPrintLog:Z

    if-eqz v0, :cond_1

    .line 404
    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](302) [OTHER][HtcVideoFgm][onStop][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 2479
    const-string v1, "HtcVideoFgm"

    const-string v2, "IHtcPlayerAPI::pause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->removeMessage(ILandroid/os/Handler;)V

    .line 2481
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 2483
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2484
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2486
    const/16 v1, 0x15

    const/16 v2, 0x25b

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2488
    :cond_0
    return-void
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2493
    const-string v1, "HtcVideoFgm"

    const-string v2, "IHtcPlayerAPI::play()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v4, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 2495
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2496
    .local v0, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2498
    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isLiveStreaming()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isSeekable()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2500
    const/16 v1, 0x15

    const/16 v2, 0x25b

    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v2, v4, v3}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2503
    :cond_0
    return-void
.end method

.method public readLastPosition()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 585
    const-string v5, "HtcVideoFgm"

    const-string v6, "[readLastPosition]"

    invoke-static {v5, v6}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    .line 589
    const-string v5, "HtcVideoFgm"

    const-string v6, "can\'t read last position, context = null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 645
    :goto_0
    return v1

    .line 592
    :cond_0
    const/4 v1, 0x0

    .line 594
    .local v1, lastPosition:I
    iget v5, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mResumePosition:I

    if-le v5, v7, :cond_1

    .line 596
    iget v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mResumePosition:I

    .line 597
    iput v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mResumePosition:I

    goto :goto_0

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v2

    .line 602
    .local v2, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v2, :cond_4

    .line 604
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isSeekable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 606
    const-string v5, "HtcVideoFgm"

    const-string v6, "readLastPosition is Not Seekable, return 0"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 607
    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 612
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->readLastStreamPosFromSharePref(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 641
    :cond_3
    :goto_1
    add-int/lit16 v4, v1, 0x1f4

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 642
    const/4 v1, 0x0

    .line 644
    :cond_4
    const-string v4, "HtcVideoFgm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[readLastPosition] Last playback position is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_5
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 618
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->deCodeDxDrmPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, decodePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->readLastPositionFromSharePref(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 620
    goto :goto_1

    .line 621
    .end local v0           #decodePath:Ljava/lang/String;
    :cond_6
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->isReady()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 623
    invoke-virtual {v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, videoPath:Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 626
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->readLastPositionFromSharePref(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 631
    :cond_7
    iget v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPausedPlaybackPosition:I

    if-eq v4, v7, :cond_3

    .line 632
    iget v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPausedPlaybackPosition:I

    goto :goto_1

    .line 637
    .end local v3           #videoPath:Ljava/lang/String;
    :cond_8
    const-string v4, "HtcVideoFgm"

    const-string v5, "resume to latest postion failed, to local path"

    invoke-static {v4, v5}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected removePlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3082
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 3083
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 3084
    .local v1, state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_0

    .line 3085
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3086
    iget-object v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerStates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3087
    .local v0, size:I
    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setListener(Lcom/htc/videowidget/videoview/utilities/PlayerState$IPlayerStateListener;)V

    .line 3088
    const-string v2, "HtcVideoFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePlayerState size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    .end local v0           #size:I
    .end local v1           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :goto_0
    return-object v1

    .line 3090
    .restart local v1       #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_0
    const-string v2, "HtcVideoFgm"

    const-string v3, "removePlayerState failed ,size is zero"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3094
    .end local v1           #state:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1
    const-string v3, "HtcVideoFgm"

    const-string v4, "removePlayerState failed mPlayerStates is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 3096
    goto :goto_0
.end method

.method public saveCurrentPosition()V
    .locals 6

    .prologue
    .line 694
    const-string v3, "HtcVideoFgm"

    const-string v4, "[saveCurrentPosition]"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkBeforeSavePosition()Z

    move-result v3

    if-nez v3, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCurrentPosition()I

    move-result v2

    .line 702
    .local v2, resumePosition:I
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 703
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_0

    .line 708
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getDuration()I

    move-result v0

    .line 710
    .local v0, duration:I
    if-lez v0, :cond_3

    if-le v2, v0, :cond_3

    .line 712
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "we will reset the resumePosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") due to it is large than duration("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v2, 0x0

    .line 729
    :cond_2
    :goto_1
    iput v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPausedPlaybackPosition:I

    .line 730
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCurrentPosition  resumePosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCurrentPosition  duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-virtual {p0, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->saveCurrentPosition(I)V

    goto :goto_0

    .line 715
    :cond_3
    if-lez v0, :cond_4

    if-ge v2, v0, :cond_4

    sub-int v3, v0, v2

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_4

    .line 717
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "we will reset the resumePosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") due to it is closed to the duration("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const/4 v2, 0x0

    goto :goto_1

    .line 720
    :cond_4
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getState()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 722
    const-string v3, "HtcVideoFgm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "we will reset the resumePosition("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") due to playback complete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public saveCurrentPosition(I)V
    .locals 4
    .parameter "resumePosition"

    .prologue
    .line 743
    const-string v2, "HtcVideoFgm"

    const-string v3, "[saveCurrentPosition] with position"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkBeforeSavePosition()Z

    move-result v2

    if-nez v2, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v1

    .line 751
    .local v1, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v1, :cond_0

    .line 755
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 757
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastStreamPosFromSharePref(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isPlayReadyDRMContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 763
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->deCodeDxDrmPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, decodePath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastPositionToSharePref(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 766
    .end local v0           #decodePath:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->isReady()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 768
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getMetaData()Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;->writeLastPositionToSharePref(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_4
    const-string v2, "HtcVideoFgm"

    const-string v3, "save latest postion failed, to local path"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 6
    .parameter "nPos"

    .prologue
    const/4 v5, 0x7

    .line 2440
    invoke-static {}, Lcom/htc/videowidget/videoview/utilities/LOG;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHtcPlayerAPI::seekTo()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    :cond_0
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-nez v1, :cond_1

    .line 2444
    iput p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mResumePosition:I

    .line 2465
    :goto_0
    return-void

    .line 2448
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v1, v5}, Lcom/htc/videowidget/videoview/PlayerHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2450
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v1, v5}, Lcom/htc/videowidget/videoview/PlayerHandler;->removeMessages(I)V

    .line 2453
    :cond_2
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v0

    .line 2455
    .local v0, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->isStreaming()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2458
    const/16 v1, 0x15

    const/16 v2, 0x25c

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2461
    :cond_3
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v5, p1, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    goto :goto_0
.end method

.method public setControllerEnable(Z)V
    .locals 3
    .parameter "bCanControl"

    .prologue
    .line 2809
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerEnable()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isDefaultController:Z

    .line 2811
    return-void
.end method

.method public setControllerMode(I)V
    .locals 3
    .parameter "nMode"

    .prologue
    .line 2816
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerMode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    const/16 v0, 0x259

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25a

    if-ne p1, v0, :cond_1

    .line 2818
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    invoke-virtual {v0, p1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerType(I)V

    .line 2819
    :cond_1
    const-string v0, "setControllerMode"

    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->refreshCenterBtn(Ljava/lang/String;)V

    .line 2820
    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .parameter "fd"

    .prologue
    .line 2312
    if-nez p1, :cond_1

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2314
    :cond_1
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHtcPlayerAPI::setDataSource() fd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/videowidget/videoview/utilities/PlayerState;-><init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;)V

    .line 2317
    .local v0, p:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 2319
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->addPlayerState(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    .line 2321
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->_setDataSource(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;Landroid/content/res/AssetFileDescriptor;)V
    .locals 4
    .parameter "fd"
    .parameter "srtfd"

    .prologue
    .line 2330
    if-nez p1, :cond_1

    .line 2340
    :cond_0
    :goto_0
    return-void

    .line 2332
    :cond_1
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHtcPlayerAPI::setDataSource() fd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",srt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;-><init>(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Landroid/content/res/AssetFileDescriptor;)V

    .line 2335
    .local v0, p:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 2337
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->addPlayerState(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    .line 2339
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->_setDataSource(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    goto :goto_0
.end method

.method public setDataSource(Landroid/net/Uri;Ljava/util/HashMap;)V
    .locals 4
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2293
    .local p2, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2295
    :cond_1
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHtcPlayerAPI::setDataSource() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/PlayerState;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getCallerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/htc/videowidget/videoview/utilities/PlayerState;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/HashMap;)V

    .line 2298
    .local v0, p:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v0, :cond_0

    .line 2300
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->addPlayerState(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    .line 2302
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->_setDataSource(Lcom/htc/videowidget/videoview/utilities/PlayerState;)V

    goto :goto_0
.end method

.method public setOnEventListener(Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 2512
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOnEventListener()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mEventListener:Lcom/htc/videowidget/videoview/IHtcPlayerAPI$OnEventListener;

    .line 2514
    return-void
.end method

.method public setProperty(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11
    .parameter "nTagId"
    .parameter "b"

    .prologue
    .line 2519
    if-eqz p1, :cond_0

    const-string v7, ""

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2520
    :cond_0
    const/4 v7, 0x0

    .line 2672
    :goto_0
    return v7

    .line 2522
    :cond_1
    const-string v7, "HtcVideoFgm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setProperty()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const-string v7, "TAG_AUDIO_SESSION_ID"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2525
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v4

    .line 2526
    .local v4, playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-nez v4, :cond_2

    .line 2528
    const-string v7, "HtcVideoFgm"

    const-string v8, "TAG_AUDIO_SESSION_ID failed no state"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const/4 v7, 0x1

    goto :goto_0

    .line 2532
    :cond_2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setAudioSessionId(I)V

    .line 2533
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v7, :cond_3

    .line 2535
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v4}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->getAudioSessionId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/htc/videowidget/videoview/PlayerHandler;->setAudioSessionId(I)V

    .line 2537
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 2539
    .end local v4           #playerState:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_4
    const-string v7, "TAG_ADJUST_VOLUME"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2541
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2542
    .local v0, audio:Landroid/media/AudioManager;
    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 2543
    const/4 v7, 0x1

    goto :goto_0

    .line 2545
    .end local v0           #audio:Landroid/media/AudioManager;
    :cond_5
    const-string v7, "TAG_STEREO_MODE"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2547
    const-string v7, "TAG_STEREO_MODE"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2548
    .local v3, mode:I
    const/16 v7, 0x8

    if-ne v3, v7, :cond_7

    .line 2549
    const/16 v7, 0x8

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2550
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2555
    :cond_6
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2551
    :cond_7
    const/16 v7, 0x9

    if-ne v3, v7, :cond_6

    .line 2552
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    .line 2553
    const/16 v7, 0x9

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->invokeControllerFunction(IZ)V

    goto :goto_1

    .line 2557
    .end local v3           #mode:I
    :cond_8
    const-string v7, "TAG_DISPLAY_MODE"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2559
    const-string v7, "TAG_DISPLAY_MODE"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2560
    .restart local v3       #mode:I
    if-eqz v3, :cond_9

    const/4 v7, 0x1

    if-ne v3, v7, :cond_a

    .line 2561
    :cond_9
    iput v3, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    .line 2563
    const/16 v7, 0xb

    iget v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDisplayMode:I

    iget-object v9, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v7, v8, v9}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    .line 2565
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2568
    .end local v3           #mode:I
    :cond_b
    const-string v7, "TAG_MHL_CONTROLLER"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2570
    if-eqz p2, :cond_1d

    .line 2572
    const-string v7, "TAG_MHL_CONTROLLER"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2573
    .local v2, keycode:I
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-direct {p0, v7}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->onhandleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    goto/16 :goto_0

    .line 2576
    .end local v2           #keycode:I
    :cond_c
    const-string v7, "TAG_DMP"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2578
    if-eqz p2, :cond_1d

    .line 2581
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsDMP:Z

    .line 2582
    const-string v7, "TAG_DMP"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportByteSeek:Z

    .line 2583
    const-string v7, "HtcVideoFgm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TAG_DMP Is Support Byte Seek:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportByteSeek:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    iget-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsSupportByteSeek:Z

    if-nez v7, :cond_d

    .line 2586
    const/16 v7, 0x15

    const/16 v8, 0x25b

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v7, v8, v9, v10}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2588
    :cond_d
    const/16 v7, 0x15

    const/16 v8, 0x25a

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v7, v8, v9, v10}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithIntBoolean(IIZLandroid/os/Handler;)V

    .line 2589
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2592
    :cond_e
    const-string v7, "TAG_SHOWME"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 2594
    if-eqz p2, :cond_1d

    .line 2597
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsShowMe:Z

    .line 2598
    const-string v7, "TAG_SHOWME"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleName:Ljava/lang/String;

    .line 2599
    const-string v7, "HtcVideoFgm"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Is ShowMe case and use indicate subtitle file name:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSubtitleName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2603
    :cond_f
    const-string v7, "TAG_UPDATE_SECONDARY_PROGRESS"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 2605
    const-string v7, "TAG_UPDATE_SECONDARY_PROGRESS"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2606
    .local v6, progress:I
    if-lez v6, :cond_10

    .line 2607
    const/16 v7, 0x22

    iget-object v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v7, v6, v8}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithInt(IILandroid/os/Handler;)V

    .line 2608
    :cond_10
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2610
    .end local v6           #progress:I
    :cond_11
    const-string v7, "TAG_INSTANT_PLAY"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2612
    const-string v7, "TAG_INSTANT_PLAY"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbInstantPlay:Z

    .line 2614
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2616
    :cond_12
    const-string v7, "TAG_FORCE_DISABLE_CONTROLLER_FUNCTION"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2618
    if-eqz p2, :cond_13

    .line 2620
    const-string v7, "TAG_FORCE_DISABLE_CONTROLLER_FUNCTION"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2621
    .local v1, funcId:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_13

    .line 2622
    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->forceDisableControllerFunction(I)V

    .line 2624
    .end local v1           #funcId:I
    :cond_13
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2626
    :cond_14
    const-string v7, "TAG_DISABLE_AUTO_DLNA"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2628
    if-eqz p2, :cond_15

    .line 2629
    const-string v7, "TAG_DISABLE_AUTO_DLNA"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDisableAutoDLNA:Z

    .line 2630
    :cond_15
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2632
    :cond_16
    const-string v7, "TAG_SET_DEFAULT_ENHANCER_AS_HTC51"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2634
    const/4 v7, 0x2

    iput v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDefaultHtcEnhancer:I

    .line 2635
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v7, :cond_17

    .line 2636
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    iget v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mDefaultHtcEnhancer:I

    invoke-virtual {v7, v8}, Lcom/htc/videowidget/videoview/PlayerHandler;->setDefaultHtcEnhancer(I)V

    .line 2637
    :cond_17
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2639
    :cond_18
    const-string v7, "TAG_SET_DEFAULT_SUBTITLE_SHOW"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2641
    if-eqz p2, :cond_19

    .line 2642
    const-string v7, "TAG_SET_DEFAULT_SUBTITLE_SHOW"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbDefaultSubtitleShow:Z

    .line 2643
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2645
    :cond_1a
    const-string v7, "TAG_CHANGE_SUBTITLE_AS_CLOSE_CAPTION"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2647
    if-eqz p2, :cond_1b

    .line 2649
    const-string v7, "TAG_CHANGE_SUBTITLE_AS_CLOSE_CAPTION"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsClosedCaption:Z

    .line 2650
    iget-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mbIsClosedCaption:Z

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v7, :cond_1b

    .line 2651
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    const/4 v8, 0x2

    const v9, 0x6090002

    invoke-virtual {v7, v8, v9}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setMoreMenuItemText(II)V

    .line 2653
    :cond_1b
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2655
    :cond_1c
    const-string v7, "TAG_FORCE_DISABLE_SEEKBAR"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2657
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->getPlayerState()Lcom/htc/videowidget/videoview/utilities/PlayerState;

    move-result-object v5

    .line 2658
    .local v5, playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    if-eqz v5, :cond_1d

    .line 2660
    invoke-virtual {v5}, Lcom/htc/videowidget/videoview/utilities/PlayerState;->setNotSeekable()V

    .line 2672
    .end local v5           #playerstate:Lcom/htc/videowidget/videoview/utilities/PlayerState;
    :cond_1d
    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2663
    :cond_1e
    const-string v7, "TAG_NAVIGATIONBAR_EXISTED"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2665
    if-eqz p2, :cond_1d

    .line 2667
    const-string v7, "TAG_NAVIGATIONBAR_EXISTED"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsNavigationBarExist:Z

    .line 2668
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    if-eqz v7, :cond_1d

    .line 2669
    iget-object v7, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mControllerHelper:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget-boolean v8, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mIsNavigationBarExist:Z

    invoke-virtual {v7, v8}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setIsNavigationBarExit(Z)V

    goto :goto_2
.end method

.method public showCenterButton(I)V
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2852
    return-void
.end method

.method public showController()V
    .locals 2

    .prologue
    .line 2893
    const-string v0, "HtcVideoFgm"

    const-string v1, "showController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->checkAndshowController()V

    .line 2895
    return-void
.end method

.method showSurfaceView(Z)V
    .locals 4
    .parameter "bshow"

    .prologue
    const/4 v1, 0x0

    .line 225
    const-string v0, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u001b[33m showSurfaceView = \u001b[m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    if-eqz v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceView:Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/htc/videowidget/videoview/widget/HtcVideoSurface;->setVisibility(I)V

    .line 232
    if-nez p1, :cond_0

    .line 234
    invoke-direct {p0, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->setVideoSizeByMode(I)Z

    .line 237
    :cond_0
    return-void

    .line 228
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showWaitingCursor(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 2825
    const-string v2, "HtcVideoFgm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWaitingCursor()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/HtcVideoFgm;->hideCenterButtonInternal()V

    .line 2829
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2830
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2831
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2832
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "str"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    const-string v2, "boolean"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2834
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2835
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    if-eqz v2, :cond_0

    .line 2836
    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-virtual {v2, v1}, Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2837
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 2470
    const-string v0, "HtcVideoFgm"

    const-string v1, "IHtcPlayerAPI::stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const/16 v0, 0x1d

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mUIHandler:Lcom/htc/videowidget/videoview/HtcVideoFgm$UIHandler;

    invoke-static {v0, v1, v2}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessageWithBoolean(IZLandroid/os/Handler;)V

    .line 2472
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 2473
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/MessageFactory;->sendMessage(ILandroid/os/Handler;)V

    .line 2474
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1439
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u001b[33m SurfaceHolder.Callback::surfaceChanged() (w, h) = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\u001b[0m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter "holder"

    .prologue
    .line 1451
    const-string v1, "HtcVideoFgm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u001b[33m SurfaceHolder.Callback::surfaceCreated() \u001b[0m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1453
    .local v0, surface:Landroid/view/Surface;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1455
    iput-object p1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1456
    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mPlayerHandler:Lcom/htc/videowidget/videoview/PlayerHandler;

    invoke-virtual {v1, p1}, Lcom/htc/videowidget/videoview/PlayerHandler;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 1457
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isSufaceReady:Z

    .line 1464
    :goto_0
    return-void

    .line 1461
    :cond_1
    const-string v1, "HtcVideoFgm"

    const-string v2, "\u001b[33m SurfaceHolder.Callback::surfaceCreated() ,surface is not valid \u001b[0m"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 1471
    const-string v0, "HtcVideoFgm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u001b[33m SurfaceHolder.Callback::surfaceDestroyed() \u001b[0m"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/HtcVideoFgm;->isSufaceReady:Z

    .line 1474
    return-void
.end method

.method protected updateActionbarBtn(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "index"
    .parameter "enabled"

    .prologue
    .line 521
    if-nez p1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 525
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
